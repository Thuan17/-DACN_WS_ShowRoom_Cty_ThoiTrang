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
        CONGTYTHOITRANGEntities db =new CONGTYTHOITRANGEntities();
        // GET: Product
        public ActionResult Details(int? id)
        {
            tb_Products Pro = db.tb_Products.Where(row => row.ProductId==id).FirstOrDefault();    
            return View(Pro);
        }
    }
}