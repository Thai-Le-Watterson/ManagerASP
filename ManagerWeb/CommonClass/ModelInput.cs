using ManagerWeb.Data;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace ManagerWeb.CommonClass
{
    public class ModelInput
    {
        [Required]
        [DataType(DataType.Text)]
        [Display(Name = "Full Name")]
        public string Name { get; set; }

        [Required]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required]
        [MaxLength(12)]
        [MinLength(6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required]
        [DataType(DataType.Text)]
        public string Address { get; set; }
    }
}
