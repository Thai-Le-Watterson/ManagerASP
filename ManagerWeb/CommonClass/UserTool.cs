using ClosedXML.Excel;
using ManagerWeb.Areas.Identity;
using ManagerWeb.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data;

namespace ManagerWeb.CommonClass
{
    public class UserTool
    {
        public async Task<string> GetRoleUser(AppUser user)
        {
            bool isMember = await AppUserManager.UserManager.IsInRoleAsync(user, "Member");
            if(!isMember)
            {
                bool isManager = await AppUserManager.UserManager.IsInRoleAsync(user, "Manager");
                if(isManager)
                {
                    return "Manager";
                }
            }
            return "Member";
        }
        public List<AppUser> UserExceptAdmin(List<AppUser> users)
        {
            List<AppUser> result = new List<AppUser>();

            foreach (AppUser user in users)
            {
                if (user != null)
                {
                    Task<bool> isAdmin = AppUserManager.UserManager.IsInRoleAsync(user, "Admin");
                    
                    if(!isAdmin.Result)
                    {
                        result.Add(user);
                    }
                }
            }

            return result;
        }
    }
}
