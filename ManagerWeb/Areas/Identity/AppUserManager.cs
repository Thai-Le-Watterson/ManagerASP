using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;

namespace ManagerWeb.Areas.Identity
{
    public static class AppUserManager
    {
        public static UserManager<AppUser> UserManager { get; set; }
    }
}
