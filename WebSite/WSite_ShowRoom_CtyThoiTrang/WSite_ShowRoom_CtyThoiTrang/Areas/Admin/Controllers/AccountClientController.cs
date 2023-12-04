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
    public class AccountClientController : Controller
    {
        // GET: Admin/AccountClient

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
                if (item ==null)
                {
                    return RedirectToAction("NonRole","HomePage");
                }
                else
                {
                    IEnumerable<tb_KhachHang> items = db.tb_KhachHang.OrderByDescending(x => x.IdKhachHang);
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
    }
}