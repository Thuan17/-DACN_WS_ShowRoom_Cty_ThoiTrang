using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Areas.Admin.Controllers
{
    public class WarehouseController : Controller
    {
        // GET: Admin/Warehouse

        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();
        public ActionResult Index()
        {

            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {
                var item =db.tb_Kho.ToList();   
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

        public ActionResult Add(tb_Kho model)
        {
            if (ModelState.IsValid) 
            {
                model.CreatedDate = DateTime.Now;
                db.tb_Kho.Add(model);
                db.SaveChanges();
                return RedirectToAction("index");

            }
            return View();
        }
        public ActionResult ImportWareHouse()
        {
            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {
                ViewBag.Kho = new SelectList(db.tb_Kho.ToList(), "IdKho", "DiaChi");
                return PartialView();
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult ImportWareHouse(tb_KhoNhap model)
        {
            if (ModelState.IsValid) 
            {
                tb_NhanVien nvSession = (tb_NhanVien)Session["user"];
                var item = db.tb_NhanVien.SingleOrDefault(row => row.MSNV == nvSession.MSNV);
                model.ImportBy = item.TenNhanVien;
                model.MSNV = nvSession.MSNV;    
                model.ImportDate=DateTime.Now;
                db.tb_KhoNhap.Add(model);
                db.SaveChanges();
                return RedirectToAction("index");
            }
            
            ViewBag.Kho = new SelectList(db.tb_Kho.ToList(), "IdKho", "DiaChi");
            return PartialView();   
        }

        public ActionResult ExportWareHouse() 
        {
            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap", "Account");
            }
            else
            {

                ViewBag.Kho = new SelectList(db.tb_Kho.ToList(), "IdKho", "DiaChi");
                return PartialView();
            }
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ExportWareHouse(Admin_WareHouse_Export_ToKen rep  )
        {
            var code = new { Success = false, Code = -1, Url = "" };
            if (ModelState.IsValid) 
            {

                string mDH = "DH" + rep.Code;
                var checkOrder = db.tb_Order.FirstOrDefault(r => r.Code == mDH.Trim() && r.Confirm==true);
                if (checkOrder != null) 
                {


                    var kiemtradaxuatkhoikho = db.tb_KhoXuat.FirstOrDefault(x => x.OrderId == checkOrder.OrderId);
                    if (kiemtradaxuatkhoikho != null)
                    {
                        var typeOrder = db.tb_Order.FirstOrDefault(r => r.Code == mDH.Trim() && r.typeOrder == true);
                        if (typeOrder != null)
                        {
                            tb_NhanVien nvSession = (tb_NhanVien)Session["user"];
                            var item = db.tb_NhanVien.SingleOrDefault(row => row.MSNV == nvSession.MSNV);



                            tb_KhoXuat model = new tb_KhoXuat();
                            model.OutDate = DateTime.Now;
                            model.OutBy = item.TenNhanVien;
                            model.OrderId = checkOrder.OrderId;
                            model.Idkho = rep.Idkho;
                            model.MSNV = nvSession.MSNV;
                            db.tb_KhoXuat.Add(model);
                            db.SaveChanges();
                            code = new { Success = true, Code = 1, Url = "" };
                        }
                        else
                        {
                            code = new { Success = false, Code = -1, Url = "" };
                            ViewBag.Error = "Đơn hàng này đã hủy trên hệ thống";

                        }
                    }
                    else 
                    {
                        code = new { Success = false, Code = -2, Url = "" };
                        ViewBag.Error = "Đơn hàng này đã trungf";
                    }
                   
                }
                else 
                {
                    code = new { Success = false, Code = -3, Url = "" };

                    ViewBag.Error = "Đơn hàng này đã hủy trên hệ thống";
                    
                }
            }
            return Json(code);
            
        }

       

    }
}