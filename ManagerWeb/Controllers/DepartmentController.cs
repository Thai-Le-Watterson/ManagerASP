using ManagerWeb.Models;
using ManagerWeb.PageModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace ManagerWeb.Controllers
{
    [Authorize(Roles = "Admin")]
    public class DepartmentController : Controller
    {
        [HttpGet]
        [Route("/Department")]
        [Route("/Department/Update/{departmentId:int}")]
        public IActionResult Index(int? departmentId)
        {
            CompanyDbContext db = new CompanyDbContext();

            List<Department> departmentList = db.Departments.ToList();

            ViewBag.Departments = departmentList;
            ViewBag.DepartmentCount = departmentList.Count;
            ViewBag.Action = "Create";

            if (departmentId != null)
            {
                var department = db.Departments.SingleOrDefault(x => x.Id == departmentId);

                if (department != null)
                {
                    ViewBag.Action = "Update";
                    ViewBag.Department = department;
                }
            }

            return View();
        }

        [HttpPost]
        public IActionResult Create(string Name)
        {
            CompanyDbContext db = new CompanyDbContext();

            Department newDepartment = new Department()
            {
                Name = Name,
            };

            db.Departments.Add(newDepartment);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpPost]
        public IActionResult Update(int Id, string Name)
        {
            CompanyDbContext db = new CompanyDbContext();

            var department = db.Departments.SingleOrDefault(x => x.Id == Id);

            if (department != null)
            {
                department.Name = Name;
                db.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        [Route("Department/Delete/{departmentId:int}")]
        public IActionResult Delete(int departmentId)
        {
            CompanyDbContext db = new CompanyDbContext();

            var department = db.Departments.SingleOrDefault(x => x.Id == departmentId);

            if (department != null)
            {
                db.Departments.Remove(department);
                db.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
