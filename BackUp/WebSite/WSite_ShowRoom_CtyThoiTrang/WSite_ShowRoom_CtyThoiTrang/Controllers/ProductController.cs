using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Controllers
{
    public class ProductController : Controller
    {
        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();
        // GET: Product
        public ActionResult Index()
        {

            var item = db.tb_Products.ToList();
            return View(item);
        }

        public ActionResult Partial_ProByIdCate()
        {
            var items = db.tb_Products.Where(row => row.IsHome.Value && row.IsActive.Value).Take(12).ToList();
            return PartialView(items);
        }


        public ActionResult Partial_ProSale() 
        {
            var item = db.tb_Products.Where(x=>x.IsSale.Value && x.IsActive.Value).Take(12).ToList();  
            return PartialView(item);   
        }



        public ActionResult Detail(string alias, int id)
        {
            var item = db.tb_Products.Find(id);
            if (item != null)
            {
                db.tb_Products.Attach(item);
                item.ViewCount = item.ViewCount + 1;
                db.Entry(item).Property(x => x.ViewCount).IsModified = true;
                db.SaveChanges();
            }
            if (id <= 0)
            {
                ViewBag.Error = "Lỗi sản phẩm";
                return View();
            }

            return View(item);
        }

        public ActionResult ProductCategory(/*string alias,*/ int id)
        { 
            var item = db.tb_Products.ToList();
            if (id > 0) 
            {
                item=item.Where(row=>row.ProductCategoryId==id).ToList();
            }
            var cate =db.tb_ProductCategory.Find(id);       
            if (cate != null) 
            {
                ViewBag.CateName = cate.Title;
            }
            ViewBag.CateId=id;
            return View(item);  
        }







    }
}