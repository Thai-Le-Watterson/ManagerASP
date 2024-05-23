using ManagerWeb.Models;
using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ManagerWeb.Areas.Identity
{
    [Table("AppUser")]
    public class AppUser : IdentityUser
    {
        public string? Address { get; set; }

        public int? DepartmentId { get; set; }

        public virtual Department Department { get; set; }
    }
}
