using ClosedXML.Excel;
using System.Web;
using ManagerWeb.Areas.Identity;
using ManagerWeb.CommonClass;
using ManagerWeb.Models;
using ManagerWeb.PageModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NuGet.Protocol;
using System.Data;
using System.Diagnostics;
using System.Security.Claims;

namespace ManagerWeb.Controllers
{
    [Authorize]
    public class UserController : Controller
    {
        private IWebHostEnvironment _hostEnvironment;

        public UserController(IWebHostEnvironment environment)
        {
            _hostEnvironment = environment;
        }
        [Route("/User")]
        [Route("/User/Update/{userId}")]
        [HttpGet]
        public async Task<IActionResult> Index(string? userId)
        {
            ViewBag.UserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            ViewBag.Action = "Create";

            if (!User.IsInRole("Admin"))
            {
                var user = AppUserManager.UserManager.FindByIdAsync(ViewBag.UserId);
                if (user != null)
                {
                    ViewBag.User = user;
                }
            }
            else
            {
                var departments = await new CompanyDbContext().Departments.ToListAsync();
                List<SelectListItem> selectListItems = new List<SelectListItem>();

                foreach (var department in departments)
                {
                    selectListItems.Add(new SelectListItem(department.Name, department.Id.ToString()));
                }

                ViewBag.departments = selectListItems;
                
                var users = await AppUserManager.UserManager.Users.OrderBy(r => r.DepartmentId).ToListAsync();

                users = new UserTool().UserExceptAdmin(users);

                List<string> usersRole = new List<string>();

                foreach (AppUser user in users)
                {
                    usersRole.Add(new UserTool().GetRoleUser(user).Result);
                }

                ViewBag.users = users;
                ViewBag.usersRole = usersRole;
                ViewBag.usersCount = users.Count;

                if (userId != null)
                {
                    var user = AppUserManager.UserManager.FindByIdAsync(userId).Result;
                    if (user != null)
                    {
                        ViewBag.updateUser = new UserModel() { UserName = user.UserName, Email = user.Email, Address = user.Address, DepartmentId = user.DepartmentId ?? -1 };
                        //ViewBag.updateUser = user.Result;
                        ViewBag.Action = "Update";
                        ViewBag.Role = new UserTool().GetRoleUser(user).Result;
                        ViewBag.updateUserId = userId;
                        return View(ViewBag.updateUser);
                    }
                    else
                    {
                        return RedirectToAction("Error", new Exception( "User Not Found" ));
                    }
                }
            }

            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(UserModel model, string Role, string ReturnURL)
        {
            try
            {
                var user = AppUserManager.UserManager.FindByEmailAsync(model.Email);

                if (user != null && user.Result != null)
                {
                    return RedirectToAction("Error", new Exception("Email is being used"));
                }
                else
                {
                    AppUser newUser = new AppUser()
                    {
                        UserName = model.UserName,
                        Email = model.Email,
                        Address = model.Address,
                        DepartmentId = model.DepartmentId,
                        EmailConfirmed = true
                    };

                    string defaultPassword = "User@123";

                    await AppUserManager.UserManager.CreateAsync(newUser, defaultPassword);
                    await AppUserManager.UserManager.AddToRoleAsync(newUser, Role);

                    if (ReturnURL != null)
                        return Redirect(ReturnURL);
                    return RedirectToAction("Index", "User");
                }
            } catch (Exception ex)
            {
                return RedirectToAction("Error", ex);
            }
        }
        [HttpPost]
        public async Task<IActionResult> Update(UserModel model, string Id, string Role, string ReturnURL)
        {
            try
            {
                var user = await AppUserManager.UserManager.FindByEmailAsync(model.Email);

                if (user == null)
                {
                    return RedirectToAction("Error", new NullReferenceException("Email has not been used yet"));
                }
                else
                {
                    user.UserName = model.UserName;
                    user.Email = model.Email;
                    user.Address = model.Address;
                    user.DepartmentId = model.DepartmentId;

                    await AppUserManager.UserManager.UpdateAsync(user);
                    await AppUserManager.UserManager.AddToRoleAsync(user, Role);
                    await AppUserManager.UserManager.RemoveFromRoleAsync(user, Role == "Member" ? "Manager" : "Member");

                    if (ReturnURL != null)
                        return Redirect(ReturnURL);
                    return RedirectToAction("Index", "User");
                }
            }
            catch (Exception ex)
            {
                return RedirectToAction("Error", ex);
            }
        }

        [HttpGet]
        [Route("/User/Delete/{userId}")]
        public async Task<IActionResult> Delete(string userId, [FromQuery] string ReturnURL)
        {
            try
            {
                var user = AppUserManager.UserManager.FindByIdAsync(userId);

                if (user != null && user.Result != null)
                {
                    await AppUserManager.UserManager.DeleteAsync(user.Result);
                    if (ReturnURL != null)
                        return Redirect(ReturnURL);
                    return RedirectToAction("Index", "User");                
                }
                else
                {
                    return RedirectToAction("Error", new NullReferenceException());
                }
            }catch (Exception ex)
            {
                return RedirectToAction("Error", ex);
            }
        }

        [HttpGet]
        [Route("/User/Other/{userId}")]
        [Authorize(Roles = "Manager, Member")]
        public async Task<IActionResult> EmployeeInOtherDepartment(string userId)
        {
            var user = await AppUserManager.UserManager.FindByIdAsync(userId);

            if(user == null)
            {
                return View("Error", new NullReferenceException());
            }

            var departments = new CompanyDbContext().Departments.ToList();
            var employees = AppUserManager.UserManager.Users.Where(u => u.DepartmentId != user.DepartmentId).ToList();

            employees = new UserTool().UserExceptAdmin(employees);

            List<string> listDepartment = new List<string>();
            List<string> listUserRole = new List<string>();

            foreach (var employee in employees)
            {
                foreach(var department  in departments)
                {
                    if (employee.DepartmentId == department.Id)
                        listDepartment.Add(department.Name);
                }
            }

            foreach (var employee in employees)
            {
                listUserRole.Add(new UserTool().GetRoleUser(employee).Result);
            }

            //ViewBag.UserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            ViewBag.UserId = user.Id;
            ViewBag.ListUserRole = listUserRole;
            ViewBag.ListDepartment = listDepartment;
            ViewBag.Employees = employees;
            ViewBag.EmployeesCount = employees.Count;
            ViewBag.User = user;

            return View();
        }

        [HttpGet]
        [Route("/User/{userId}")]
        [Route("/User/{userId}/Update/{updateUserId}")]
        [Authorize(Roles = "Manager, Member")]
        public async Task<IActionResult> EmployeeInMyDepartment(string userId, string updateUserId)
        {
            var user = await AppUserManager.UserManager.FindByIdAsync(userId);

            if (user == null)
            {
                return View("Error", new NullReferenceException());
            }

            var departments = new CompanyDbContext().Departments.ToList();
            var employees = AppUserManager.UserManager.Users.Where(u => u.DepartmentId == user.DepartmentId).OrderBy(r => r.DepartmentId).ToList();

            employees = new UserTool().UserExceptAdmin(employees);

            List<SelectListItem> listDepartment = new List<SelectListItem>();
            List<string> listUserRole = new List<string>();

            foreach (var employee in employees)
            {
                foreach (var department in departments)
                {
                    if (employee.DepartmentId == department.Id)
                        listDepartment.Add(new SelectListItem(department.Name, department.Id.ToString()));
                }
            }

            foreach (var employee in employees)
            {
                listUserRole.Add(new UserTool().GetRoleUser(employee).Result);
            }

            //ViewBag.UserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            ViewBag.UserId = user.Id;
            ViewBag.ListUserRole = listUserRole;
            ViewBag.ListDepartment = listDepartment;
            ViewBag.Employees = employees;
            ViewBag.EmployeesCount = employees.Count;
            ViewBag.User = user;
            ViewBag.Action = "Create";

            if(updateUserId != null)
            {
                var updateUser = AppUserManager.UserManager.FindByIdAsync(updateUserId);

                if(updateUser == null || updateUser.Result == null)
                {
                    return View("Error", new NullReferenceException());
                }

                ViewBag.updateUser = new UserModel() { UserName = updateUser.Result.UserName, Email = updateUser.Result.Email, Address = updateUser.Result.Address, DepartmentId = updateUser.Result.DepartmentId ?? -1 };
                ViewBag.UpdateUserRole = new UserTool().GetRoleUser(updateUser.Result).Result;
                ViewBag.Action = "Update";
                ViewBag.UpdateUserId = updateUserId;

                return View(ViewBag.updateUser);
            }

            return View();
        }

        [HttpGet]
        [Route("/User/Export-Excel")]
        public async Task<FileResult> ExportEmployeeExcel()
        {
            var users = await AppUserManager.UserManager.Users.OrderBy(r => r.DepartmentId).ToListAsync();
            users = new UserTool().UserExceptAdmin(users);

            string fileName = "Empolyee.xlsx";

            return GenerateExcelFile(users, fileName);
        }

        [HttpGet]
        [Route("/User/Export-Excel/{departmentId}")]
        public async Task<FileResult> ExportEmployeeInDepartmentExcel(int departmentId)
        {
            var users = await AppUserManager.UserManager.Users.OrderBy(r => r.DepartmentId).Where(u => u.DepartmentId == departmentId).ToListAsync();
            users = new UserTool().UserExceptAdmin(users);

            string fileName = "Empolyee.xlsx";

            return GenerateExcelFile(users, fileName);
        }

        [HttpGet]
        [Route("/User/Export-Excel/Other/{departmentId}")]
        public async Task<FileResult> ExportEmployeeOtherDepartmentExcel(int? departmentId)
        {
            var users = await AppUserManager.UserManager.Users.OrderBy(r => r.DepartmentId).Where(u => u.DepartmentId != departmentId).ToListAsync();
            users = new UserTool().UserExceptAdmin(users);

            string fileName = "Empolyee.xlsx";

            return GenerateExcelFile(users, fileName);
        }

        private FileResult GenerateExcelFile(IEnumerable<AppUser> users, string fileName)
        {
            var departments = new CompanyDbContext().Departments.ToList();

            if (departments.Count == 0 && users == null)
            {
                return null;
            }

            DataTable dataTable = new DataTable();
            dataTable.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("No"),
                new DataColumn("Name"),
                new DataColumn("Email"),
                new DataColumn("Address"),
                new DataColumn("Department"),
                new DataColumn("Position"),
            });

            int i = 1;
            foreach (AppUser user in users)
            {
                string userPosition = new UserTool().GetRoleUser(user).Result;
                string departmentName = "";
                foreach (Department department in departments)
                {
                    if (department.Id == user.DepartmentId)
                    {
                        departmentName = department.Name;
                    }
                }

                dataTable.Rows.Add(i, user.UserName, user.Email, user.Address, departmentName, userPosition);

                i++;
            }

            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dataTable, "Empolyees");
                using (MemoryStream ms = new MemoryStream())
                {
                    wb.SaveAs(ms);

                    string contentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";

                    return File(ms.ToArray(), contentType, fileName);
                }
            }
        }

        [HttpPost]
        public async Task<IActionResult> UploadExcel(IFormFile file, string filePath)
        {
            DataTable dt = new DataTable();
            //Checking file content length and Extension must be .xlsx  
            if (file != null && file.Length > 0 && System.IO.Path.GetExtension(file.FileName).ToLower() == ".xlsx")
            {
                //string path = Path.Combine(System.Web.HttpContext.Current.Server.MapPath("~/UploadFile"), Path.GetFileName(file.FileName));
                string path = Path.Combine(System.IO.Directory.GetCurrentDirectory(), "Upload/Files", Path.GetFileName(file.FileName));
                //Saving the file
                using (FileStream fs = System.IO.File.Create(path))
                {
                    file.CopyTo(fs);
                }
                //Started reading the Excel file.  
                //using (XLWorkbook workbook = new XLWorkbook(path))
                //string path2 = Path.GetFullPath(file.FileName);
                //string path3 = System.IO.Directory.GetCurrentDirectory();
                using (XLWorkbook workbook = new XLWorkbook(path))
                {
                    IXLWorksheet worksheet = workbook.Worksheet(1);
                    bool FirstRow = true;
                    //Range for reading the cells based on the last cell used.  
                    string readRange = "1:1";
                    foreach (IXLRow row in worksheet.RowsUsed())
                    {
                        //If Reading the First Row (used) then add them as column name  
                        if (FirstRow)
                        {
                            //Checking the Last cellused for column generation in datatable  
                            readRange = string.Format("{0}:{1}", 1, row.LastCellUsed().Address.ColumnNumber);
                            foreach (IXLCell cell in row.Cells(readRange))
                            {
                                dt.Columns.Add(cell.Value.ToString());
                            }
                            FirstRow = false;
                        }
                        else
                        {
                            //Adding a Row in datatable  
                            dt.Rows.Add();
                            int cellIndex = 0;
                            //Updating the values of datatable  
                            foreach (IXLCell cell in row.Cells(readRange))
                            {
                                dt.Rows[dt.Rows.Count - 1][cellIndex] = cell.Value.ToString();
                                cellIndex++;
                            }
                        }
                    }
                    //If no data in Excel file  
                    if (FirstRow)
                    {
                        ViewBag.Message = "Empty Excel File!";
                    }
                }
            }
            else
            {
                //If file extension of the uploaded file is different then .xlsx  
                ViewBag.Message = "Please select file with .xlsx extension!";
            }

            if(dt.Rows.Count > 0) 
            { 
                foreach(DataRow row in dt.Rows)
                {
                    string userName = row["UserName"].ToString();
                    string email = row["Email"].ToString();
                    string address = row["Address"].ToString();
                    int departmentId = int.Parse(row["DepartmentId"].ToString());

                    if(userName != null  && email != null)
                    {
                        var user = await AppUserManager.UserManager.FindByEmailAsync(email);

                        if(user == null)
                        {
                            var newUser = new AppUser()
                            {
                                UserName = userName,
                                Email = email,
                                Address = address,
                                DepartmentId = departmentId,
                            };

                            await AppUserManager.UserManager.CreateAsync(newUser, "User@123");
                            await AppUserManager.UserManager.AddToRoleAsync(newUser, "Member");
                        }
                    }
                }
            }

            return RedirectToAction("Index", "User");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error([FromQuery]string Message)
        {
            ViewBag.Message = Message;
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
