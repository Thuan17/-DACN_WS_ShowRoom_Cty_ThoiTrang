using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;
using WSite_ShowRoom_CtyThoiTrang.Models;
using System.ComponentModel.DataAnnotations;
namespace WSite_ShowRoom_CtyThoiTrang.Controllers
{
    public class AccountController : Controller
    {


        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }


        //Login
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string msnv,string sdt , string password)
        {
            if (ModelState.IsValid)
            {
                var f_password = MaHoaPass(password);
                var data = db.KhachHang.Where(s => s.SDT.Equals(sdt) && s.Password.Equals(f_password)).ToList();

                var dataNhanVien =db.tb_NhanVien.Where(s=>s.SDT.Equals(sdt) &&  s.Password.Equals(f_password)).ToList();



                if (data.Count > 0 && dataNhanVien.Count == 0)
                {
                    Session["TenKhachHang"] = data.FirstOrDefault().TenKhachHang;
                    Session["Email"] = data.FirstOrDefault().Email;
                    Session["SDT"] = data.FirstOrDefault().SDT;
                    return RedirectToAction("Index", "Home");
                }
                else if(dataNhanVien.Count > 0 && data.Count == 0)
                {
                    Session["TenNhanVien"] = dataNhanVien.FirstOrDefault().TenNhanVien;
                    Session["Email"] = dataNhanVien.FirstOrDefault().Email;
                    Session["MSNV"] = dataNhanVien.FirstOrDefault().MSNV;
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ViewBag.error = "Không tồn tại tài khoản";
                    return RedirectToAction("Register", "Account");
                }
            }
          
            return View();
        }




        //Get Register 
        public ActionResult Register() 
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(KhachHang _khachhang)
        {
            if (ModelState.IsValid)
            {
                var checkmail = db.KhachHang.FirstOrDefault(s => s.Email == _khachhang.Email);
                var checkPhone=db.KhachHang.FirstOrDefault(s => s.SDT == _khachhang.SDT);
                if (checkmail == null)
                {
                    if (checkPhone == null)
                    {
                        _khachhang.Password = MaHoaPass(_khachhang.Password);
                        db.Configuration.ValidateOnSaveEnabled = false;
                        db.KhachHang.Add(_khachhang);
                        _khachhang.SoLanMua = 1;

                        db.SaveChanges();
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        ViewBag.error = "Số điện thoại đã tồn";
                        return RedirectToAction("Login", "Account");
                    }
                }
                else
                {
                    ViewBag.error = "Email đã tồn tại";
                    return RedirectToAction("Login", "Account");
                }
            }
            return View();
        }



        //MaHoaPassword khi Regsiter
        public static string MaHoaPass(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;

        }
        

        //dang xuất tai khoan
        public ActionResult LogOut() 
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");

        }


    }
}