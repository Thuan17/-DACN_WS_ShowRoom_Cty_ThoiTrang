using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Areas.Admin.Controllers
{
    public class ProductCategoryController : Controller
    {
        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();
        // GET: Admin/ProductCategory
        public ActionResult Index()
        {
            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {
                var item = db.tb_ProductCategory.ToList();
                if (item == null)
                {
                    ViewBag.txt = "Không Có Loại Sản Phẩm ";

                }

                return View(item);
            }
        }
        public ActionResult Add()
        {
            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {
                return View();
            }
            
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(tb_ProductCategory model)
        {
            if (ModelState.IsValid)
            {

                model.CreatedDate = DateTime.Now;
                model.ModifiedDate = DateTime.Now;
                model.Alias = WSite_ShowRoom_CtyThoiTrang.Models.Common.Filter.FilterChar(model.Title);
                db.tb_ProductCategory.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }


        public ActionResult Edit(int id) 
        {
            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {
                var item = db.tb_ProductCategory.Find(id);
                return View(item);
            }
           
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(tb_ProductCategory model)
        {
            if(ModelState.IsValid) 
            {
                model.ModifiedDate= DateTime.Now;
                model.Alias = WSite_ShowRoom_CtyThoiTrang.Models.Common.Filter.FilterChar(model.Title);

                db.tb_ProductCategory.Attach(model);
                db.Entry(model).State=System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("index");
            }
            return View();
        }



    }
}