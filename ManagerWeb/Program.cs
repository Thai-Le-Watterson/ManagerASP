using ManagerWeb.Areas.Identity;
using ManagerWeb.CommonClass;
using ManagerWeb.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var connectionString = builder.Configuration.GetConnectionString("PublishConnection") ?? throw new InvalidOperationException("Connection string 'DefaultConnection' not found.");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

builder.Services.AddDefaultIdentity<AppUser>(options => options.SignIn.RequireConfirmedAccount = true)
    .AddRoles<IdentityRole>().AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddControllersWithViews();

builder.Services.Configure<IdentityOptions>(options => options.SignIn.RequireConfirmedEmail = true);

//builder.Services.AddAuthentication().AddCookie(options =>
//{
//    options.LoginPath = new PathString("/Login");
//    options.LogoutPath = new PathString("/Logout");
//});

builder.Services.ConfigureApplicationCookie(options =>
{
    options.LoginPath = "/Login";
});

var app = builder.Build();

var serviceProvider = app.Services.GetService<IServiceProvider>();

//AppUserManager.UserManager = serviceProvider.GetRequiredService<UserManager<AppUser>>();
var userManager = builder.Services.BuildServiceProvider().GetRequiredService<UserManager<AppUser>>();
AppUserManager.UserManager = userManager;

var roleManager = builder.Services.BuildServiceProvider().GetRequiredService<RoleManager<IdentityRole>>();
new AppInitFeature().CreateRoles(roleManager);
//new AppInitFeature().InitAppUserManager(userManager);

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseAuthentication();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapRazorPages();

app.Run();
