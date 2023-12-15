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

        [HttpPost]
        public ActionResult Find(string Search="") 
        {
            if (!string.IsNullOrEmpty(Search))
            {
                var FindProduc = db.tb_Products.Where(x => x.Title.ToUpper().Contains(Search.ToUpper()));
                ViewBag.Find = Search;
                return View(FindProduc.ToList());
            }
            return View();
        }


        public ActionResult Partial_ProByIdCate()
        {
            var items = db.tb_Products.Where(row => row.IsHome.Value && row.IsActive.Value).Take(12).ToList();
            return PartialView(items);
        }


        public ActionResult Partial_ProSale()
        {
            var item = db.tb_Products.Where(x => x.IsSale.Value && x.IsActive.Value).Take(12).ToList();
            return PartialView(item);
        }


        public ActionResult Partail_ProCategory()
        {
            var item=db.tb_ProductCategory.ToList();
            return PartialView(item);
        }





        public ActionResult Detail(string alias, int id)
        {
            var item = db.tb_Products.Find(id);
           

            return View(item);
        }

        //public ActionResult DetailBySize()


        public ActionResult Partial_ProductDetail(int id) 
        {
            var item = db.tb_ProductDetai.Where(row => row.ProductId == id);
            return PartialView(item.ToList());   

        }


        public ActionResult DetaiSize(int id) 
        {
            var item = db.tb_ProductDetai.Find(id);
           

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