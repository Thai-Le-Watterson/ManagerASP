using System.ComponentModel.DataAnnotations;

namespace ManagerWeb.PageModels
{
    public class UserModel
    {
        [Required]
        public string UserName { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        public string Password { get; set; }
        public string? Address { get; set; }

        [Required]
        public int DepartmentId { get; set; }
    }
}
