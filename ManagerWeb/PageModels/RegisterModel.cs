using Azure.Core;
using ManagerWeb.Areas.Identity;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.WebUtilities;
using System;
using System.ComponentModel.DataAnnotations;
using System.Text;
using ManagerWeb.Models;
using Microsoft.AspNetCore.Authorization;

namespace ManagerWeb.PageModels
{
    [AllowAnonymous]
    public class RegisterModel : PageModel
    {
        private readonly SignInManager<AppUser> _signInManager;
        private readonly UserManager<AppUser> _userManager;
        private readonly ILogger<RegisterModel> _logger;

        // Các dịch vụ được Inject vào: UserManger, SignInManager, ILogger, IEmailSender
        public RegisterModel(
            UserManager<AppUser> userManager,
            SignInManager<AppUser> signInManager,
            ILogger<RegisterModel> logger)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _logger = logger;
        }

        // InputModel được binding khi Form Post tới

        [BindProperty]
        public InputModel Input { get; set; }
        public List<Department> ListDepartment { get; private set; }
        public string ReturnUrl { get; set; }

        // Lớp InputModel chứa thông tin Post tới dùng để tạo User
        public class InputModel
        {
            [Required]
            [MaxLength(50)]
            [Display(Name = "Full name")]
            public string Name { get; set; }

            [Required]
            [EmailAddress]
            public string Email { get; set; }

            [Required]
            [MaxLength(12)]
            [MinLength(6)]
            [DataType(DataType.Password)]
            public string Password { get; set; }

            [Required]
            [DataType(DataType.Password)]
            [Compare("Password")]
            public string ConfirmPassword { get; set; }

            [Display(Name = "Department")]
            public int DepartmentId { get; set; }
        }

        public async Task OnGetAsync(string returnUrl = null)
        {
            CompanyDbContext dbContext = new CompanyDbContext();
            var Departments = dbContext.Departments.ToList();

            ListDepartment = Departments;
            ReturnUrl = returnUrl;
        }

        // Đăng ký tài khoản theo dữ liệu form post tới
        public async Task<IActionResult> OnPostAsync(string returnUrl = null)
        {
            returnUrl = returnUrl ?? Url.Content("~/");
            if (ModelState.IsValid)
            {
                // Tạo AppUser sau đó tạo User mới (cập nhật vào db)
                var user = new AppUser { UserName = Input.Name, Email = Input.Email, DepartmentId = Input.DepartmentId };
                var result = await _userManager.CreateAsync(user, Input.Password);

                if (result.Succeeded)
                {
                    _logger.LogInformation("Vừa tạo mới tài khoản thành công.");

                    // Không cần xác thực - đăng nhập luôn
                    await _signInManager.SignInAsync(user, isPersistent: false);
                    return LocalRedirect(returnUrl);

                }
                // Có lỗi, đưa các lỗi thêm user vào ModelState để hiện thị ở html heleper: asp-validation-summary
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }

            return Page();
        }
    }
}
