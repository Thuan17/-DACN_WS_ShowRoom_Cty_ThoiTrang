using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        CONGTYTHOITRANGEntities db = new CONGTYTHOITRANGEntities();
        public ActionResult Index()
        {
            if (Session["IdKhachHang"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }

        }
        public ActionResult Par_AllOrder()
        {
            if (Session["IdKhachHang"] != null)
            {
                int idKhach = (int)Session["IdKhachHang"];
                var cheCheckORder = db.tb_Order.Where(x => x.IdKhachHang == idKhach).ToList();
                if (cheCheckORder != null)
                {
                    return View(cheCheckORder);
                }
                else
                {

                }
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
            return View();
        }





        public ActionResult OrderSuccess()
        {
            if (Session["IdKhachHang"] != null)
            {
                int idKhach = (int)Session["IdKhachHang"];
                var cheCheckORder = db.tb_Order.Where(x => x.IdKhachHang == idKhach && x.Confirm == true).ToList();
                if (cheCheckORder != null)
                {
                    return View(cheCheckORder);
                }
                else
                {

                }
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }

            return View();
        }

        public ActionResult Par_OrderDetailSuccess(int id)
        {
            int idKhach = (int)Session["IdKhachHang"];
            var cheCheckORderDetail = db.tb_OrderDetail.Where(x => x.OrderId == id).ToList();
            if (cheCheckORderDetail != null)
            {
                return PartialView(cheCheckORderDetail);
            }
            else
            {

            }
            return PartialView();
        }

        public ActionResult WaitPayOrder()
        {
            if (Session["IdKhachHang"] != null)
            {
                int idKhach = (int)Session["IdKhachHang"];
                var cheCheckORder = db.tb_Order.Where(x => x.IdKhachHang == idKhach && x.TypePayment == 1).ToList();
                if (cheCheckORder != null)
                {
                    return View(cheCheckORder);
                }
                else
                {

                }
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }

            return View();

        }

        public ActionResult DetailOrder(int id) 
        {
            var item = db.tb_OrderDetail.FirstOrDefault(x=>x.OrderId==id);
            return View(item);


        }

        public ActionResult purchaselist()
        {
            Cancel cart = (Cancel)Session["CancelOrder"];
            if (cart != null && cart.Items.Any())
            {
                return View(cart.Items);
            }
            return View();

        }


        [HttpPost]
        public ActionResult AddListCancel(int id, List<int> productIds)
        {
            var code = new { Success = false, msg = "", code = -1 };
            if (Session["IdKhachHang"] != null) 
            {
                int idKhach = (int)Session["IdKhachHang"];
                var checkIdOrder = db.tb_Order.Find(idKhach);
                if (checkIdOrder != null) 
                {
                    int checkId = checkIdOrder.OrderId;


                    var check = db.tb_OrderDetail.FirstOrDefault(x => x.OrderId == checkId);
                    int idOrderDetail = check.Id;
                   
                    Cancel can = (Cancel)Session[""];
                    if (can == null)
                    {
                        can = new Cancel();
                    }
                    foreach (var proId in productIds)
                    {
                        var OrderDetail = db.tb_OrderDetail.FirstOrDefault(row => row.OrderId == id && row.Id == proId);
                        if (OrderDetail != null)
                        {
                            CanceltItem item = new CanceltItem
                            {
                                ProductId = OrderDetail.ProductId,
                                ProductName = OrderDetail.tb_Products.Title,
                                SoLuong = OrderDetail.Quantity,

                            };
                            can.AddToCart(item, OrderDetail.Quantity);

                        }
                    }

                    Session["CancelOrder"] = can;
                    code = new
                    {
                        Success = true,
                        msg = "",
                        code = 1
                    };
                }
            }
            return Json(code);
        }






     
        public ActionResult CancelOrder(int id)
        {
           
            if (Session["IdKhachHang"] != null)
            {
                int idKhach = (int)Session["IdKhachHang"];
                var item = db.tb_Order.SingleOrDefault(row=>row.OrderId==id && row.IdKhachHang==idKhach);   
                if (item != null)
                {
                    return View(item);
                }
                else
                {

                }
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
            return View();
           
        }

        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult CancelOrder(tb_Order model )
        //{

        //    if(ModelState.IsValid) 
        //    {
        //        model,ty
        //    }

        //}



        //public ActionResult ReturnOrder(int id) 
        //{
        //    if (Session["IdKhachHang"] != null)
        //    {
        //        int idKhach = (int)Session["IdKhachHang"];
        //      var checkOrder=db.tb_Order
        //        if (cheCheckORder != null)
        //        {
        //            return View(cheCheckORder);
        //        }
        //        else
        //        {

        //        }
        //    }
        //    else
        //    {
        //        return RedirectToAction("Login", "Account");
        //    }

        //    return View();
        //}






    }
}