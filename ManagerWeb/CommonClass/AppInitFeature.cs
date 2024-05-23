using ManagerWeb.Areas.Identity;
using ManagerWeb.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace ManagerWeb.CommonClass
{
    public class AppInitFeature
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public AppInitFeature()
        {
            _userManager = AppUserManager.UserManager;
        }

        public async void CreateRoles(RoleManager<IdentityRole> roleManager)
        {
            //var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();
            string[] roleNames = { "Admin", "Manager", "Member" };

            //Create role if don't have
            foreach (var roleName in roleNames)
            {
                bool isRoleExist = await roleManager.RoleExistsAsync(roleName);
                if(!isRoleExist)
                {
                    await roleManager.CreateAsync(new IdentityRole(roleName));
                }
            }

            //Create Admin User if don't have
            var adminUser = await _userManager.FindByNameAsync("admin");
            bool isHaveAdminUser = adminUser != null;

            if (!isHaveAdminUser)
            {
                var newAdminUser = new AppUser() { UserName = "admin", Email = "admin@gmail.com", EmailConfirmed = true, DepartmentId = null};
                await _userManager.CreateAsync(newAdminUser, "Admin@123");
                await _userManager.AddToRoleAsync(newAdminUser, "Admin");
            }
        }

        public void InitAppUserManager(UserManager<AppUser> userManager)
        {
            //AppUserManager.UserManager = serviceProvider.GetRequiredService<UserManager<AppUser>>();
            AppUserManager.UserManager = userManager;
        }
    }
}
