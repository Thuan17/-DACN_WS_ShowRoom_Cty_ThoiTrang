using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Areas.Admin.Controllers
{
    public class SellerController : Controller
    {
        // GET: Admin/Seller
        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();
        public ActionResult Index()
        {

            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {

                tb_NhanVien nvSession = (tb_NhanVien)Session["user"];
                var item = db.tb_PhanQuyen.SingleOrDefault(row => row.MSNV == nvSession.MSNV && row.IdChucNang == 4);
                if (item == null)
                {
                    return RedirectToAction("NonRole", "HomePage");
                }
                else
                {
                    
                    return View();
                }
            }
        }


        public ActionResult Partail_Seller()
        {
            
            return PartialView();
        }

        public ActionResult Partail_ProductSeller() 
        {
            return PartialView();
        }











    }
}