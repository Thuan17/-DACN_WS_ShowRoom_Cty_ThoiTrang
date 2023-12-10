using PagedList;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product



        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();



        public ActionResult Index(int? page)
        {


            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {

                tb_NhanVien nvSession = (tb_NhanVien)Session["user"];
                var item = db.tb_PhanQuyen.SingleOrDefault(row => row.MSNV == nvSession.MSNV && (row.IdChucNang == 1 || row.IdChucNang == 2));
                if (item == null)
                {
                    return RedirectToAction("NonRole", "HomePage");
                }
                else
                {
                    IEnumerable<tb_Products> items = db.tb_Products.OrderByDescending(x => x.ProductId);
                    var pageSize = 10;
                    if (page == null)
                    {
                        page = 1;
                    }
                    var pageIndex = page.HasValue ? Convert.ToInt32(page) : 1;
                    items = items.ToPagedList(pageIndex, pageSize);
                    ViewBag.PageSize = pageSize;
                    ViewBag.Page = page;
                    return View(items);
                }
            }
        }


        //////////////////////////////////////////////////////////////Da Xong
        public ActionResult Add()
        {
            //Load ProductCategory
            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {

                tb_NhanVien nvSession = (tb_NhanVien)Session["user"];
                var item = db.tb_PhanQuyen.SingleOrDefault(row => row.MSNV == nvSession.MSNV && (row.IdChucNang == 1 || row.IdChucNang == 2));
                if (item == null)
                {
                    return RedirectToAction("NonRole", "HomePage");
                }
                else
                {
                    ViewBag.ProductCategory = new SelectList(db.tb_ProductCategory.ToList(), "ProductCategoryId", "Title");
                    return View();
                }
             
            }



        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(tb_Products model, List<string> Images, List<int> rDefault)
        {
            if (ModelState.IsValid)
            {
                if (Images != null && Images.Count > 0)
                {
                    for (int i = 0; i < Images.Count; i++)
                    {
                        if (i + 1 == rDefault[0])
                        {
                            model.Image = Images[i];
                            db.tb_ProductImage.Add(new tb_ProductImage
                            {
                                ProductId = model.ProductId,
                                Image = Images[i],
                                IsDefault = true
                            });
                        }
                        else
                        {
                            db.tb_ProductImage.Add(new tb_ProductImage {
                                ProductId = model.ProductId,
                                Image = Images[i],
                                IsDefault = true
                            });
                        }
                    }
                }
                model.CreateDate = DateTime.Now;
                model.ModifiedDate = DateTime.Now;
                model.IsHome = false;
                model.IsFeature = false;
                model.IsActive = false;
                model.IsSale = false;
                if (string.IsNullOrEmpty(model.Title))
                {
                    model.SeoTitle = model.Title;
                }
                if (string.IsNullOrEmpty(model.Alias))
                {
                    model.Alias = WSite_ShowRoom_CtyThoiTrang.Models.Common.Filter.FilterChar(model.Title);
                }
                db.tb_Products.Add(model);
                db.SaveChanges();
                return RedirectToAction("index");
            }
            ViewBag.ProductCategory = new SelectList(db.tb_ProductCategory.ToList(), "ProductCategoryId", "Title");
            return View();
        }

      

        [HttpPost]
        public ActionResult Delete(int id)
        {

            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {
                var item = db.tb_Products.Find(id);

                if (item != null)
                {
                    //var checkImg = item.tb_ProductImage.Where(x => x.ProductId == item.ProductId);

                    //if (checkImg != null)
                    //{
                    //    foreach (var img in checkImg)
                    //    {
                    //        db.tb_ProductImage.Remove(img);
                    //        db.SaveChanges();
                    //    }
                    //}
                    db.tb_Products.Remove(item);
                    db.SaveChanges();
                    return Json(new { success = true });
                }
                return Json(new { success = false });
            }

        }
        

        //////////////////////////////////////////////////////////////

        public ActionResult Edit(int id)
        {

            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {
                tb_NhanVien nvSession = (tb_NhanVien)Session["user"];
                var item = db.tb_PhanQuyen.SingleOrDefault(row => row.MSNV == nvSession.MSNV && (row.IdChucNang == 1 || row.IdChucNang == 2));
                if (item == null)
                {
                    return RedirectToAction("NonRole", "HomePage");
                }
                else
                {
                    ViewBag.ProductCategory = new SelectList(db.tb_ProductCategory.ToList(), "ProductCategoryId", "Title");
                    var SanPham = db.tb_Products.Find(id);
                    return View(SanPham);
                }
            }

           
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(tb_Products model)
        {
            if (ModelState.IsValid)
            {
                model.ModifiedDate = DateTime.Now;
                model.Alias = WSite_ShowRoom_CtyThoiTrang.Models.Common.Filter.FilterChar(model.Title);
                db.tb_Products.Add(model);
                db.Entry(model).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("index");
            }
            return View(model);
        }


        //////////////////////////////////////////////////////////////Da Xong
        [HttpPost]
        public ActionResult IsActive(int id)
        {
            var item = db.tb_Products.Find(id);
            if (item != null)
            {
                item.IsActive = !item.IsActive;
                db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return Json(new { success = true, isAcive = item.IsActive });
            }

            return Json(new { success = false });
        }
        //////////////////////////////////////////////////////////////Da Xong
        [HttpPost]
        public ActionResult IsHome(int id)
        {
            var item = db.tb_Products.Find(id);
            if (item != null)
            {
                item.IsHome = !item.IsHome;
                db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return Json(new { success = true, IsHome = item.IsHome });
            }

            return Json(new { success = false });
        }
        //////////////////////////////////////////////////////////////Da Xong

        [HttpPost]
        public ActionResult IsSale(int id)
        {
            var item = db.tb_Products.Find(id);
            if (item != null)
            {
                item.IsSale = !item.IsSale;
                db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return Json(new { success = true, IsSale = item.IsSale });
            }

            return Json(new { success = false });
        }



        [HttpPost]
        public ActionResult DeleteImg(int id) 
        {
            var item = db.tb_ProductImage.Find(id);
           
            if (item != null)
            {
                    db.tb_ProductImage.Remove(item);
                    db.SaveChanges();
                return Json(new { success = true });
            }

            return Json(new { success = false });
        }
    }
}