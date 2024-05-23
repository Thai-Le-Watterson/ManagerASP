using ManagerWeb.Data;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace ManagerWeb.Areas.Identity
{
    public class AppUserStore : UserStore<AppUser>
    {
        public AppUserStore(ApplicationDbContext dbContext, IdentityErrorDescriber? describer = null) : base(dbContext, describer)
        {
        }
    }
}
