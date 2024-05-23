using ManagerWeb.Areas.Identity;
using System.ComponentModel.DataAnnotations;

namespace ManagerWeb.PageModels
{
    public class DepartmentModel
    {
        [Required]
        [MaxLength(100)]
        public string Name { get; set; }
    }
}
