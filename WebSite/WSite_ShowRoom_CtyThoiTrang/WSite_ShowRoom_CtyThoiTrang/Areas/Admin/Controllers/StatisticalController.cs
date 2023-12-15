using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Areas.Admin.Controllers
{
    public class StatisticalController : Controller
    {
        // GET: Admin/Statistical
        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();
        public ActionResult Index()
        {


            tb_NhanVien nvSession = (tb_NhanVien)Session["user"];
            var item = db.tb_PhanQuyen.SingleOrDefault(row => row.MSNV == nvSession.MSNV && (row.IdChucNang == 1));
            if (item == null)
            {
                return RedirectToAction("NonRole", "HomePage");
            }
            else
            {

                return View();
            }
            
        }




        [HttpGet]
        public ActionResult GetStatistical(string fromDate, string toDate)
        {
            var query = from o in db.tb_Order
                        join od in db.tb_OrderDetail
                        on o.OrderId equals od.OrderId
                        join p in db.tb_Products
                        on od.ProductDetai equals p.ProductId
                        select new
                        {
                            CreatedDate = o.CreatedDate,
                            Quantity = od.Quantity,
                            Price = od.Price,
                            OriginalPrice = p.Price
                        };
            if (!string.IsNullOrEmpty(fromDate))
            {
                DateTime startDate = DateTime.ParseExact(fromDate, "dd/MM/yyyy", null);
                query = query.Where(x => x.CreatedDate >= startDate);
            }
            if (!string.IsNullOrEmpty(toDate))
            {
                DateTime endDate = DateTime.ParseExact(toDate, "dd/MM/yyyy", null);
                query = query.Where(x => x.CreatedDate < endDate);
            }

            var result = query.GroupBy(x => DbFunctions.TruncateTime(x.CreatedDate)).Select(x => new
            {
                Date = x.Key.Value,
                TotalBuy = x.Sum(y => y.Quantity * y.OriginalPrice),
                TotalSell = x.Sum(y => y.Quantity * y.Price),
            }).Select(x => new
            {
                Date = x.Date,
                DoanhThu = x.TotalSell,
                LoiNhuan = x.TotalSell - x.TotalBuy
            });
            return Json(new { Data = result }, JsonRequestBehavior.AllowGet);
        }
    }
}