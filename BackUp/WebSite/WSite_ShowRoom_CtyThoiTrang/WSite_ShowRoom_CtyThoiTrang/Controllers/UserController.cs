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


        public ActionResult Partail_AllOrder() 
        {
            if (Session["IdKhachHang"] != null)
            {
                int idKhach = (int)Session["IdKhachHang"];
                var checkOrder = db.tb_Order.Where(x => x.IdKhachHang == idKhach).OrderByDescending(x => x.OrderId).ToList();
                if (checkOrder != null)
                {

                    return PartialView(checkOrder);
                }
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
            return View();

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
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }

            return View();

        }

        public ActionResult Partail_TrangThaiDonHang(int id) 
        {
            int idKhach = (int)Session["IdKhachHang"];
            var cheCheckORderDetail = db.tb_Order.Find(id);
            if (cheCheckORderDetail != null)
            {
                var checkOutOrder = db.tb_KhoXuat.FirstOrDefault(x => x.OrderId == cheCheckORderDetail.OrderId);
                if (checkOutOrder != null)
                {
                    ViewBag.Out = "XuatKho";
                    return PartialView(cheCheckORderDetail);
                }
                else
                {
                    return PartialView(cheCheckORderDetail);

                }
                
            }
            return PartialView();
        }


        public ActionResult Partial_OrderCanceled()
        {

            int idKhach = (int)Session["IdKhachHang"];
            var checkORder = db.tb_Order.Where(x => x.IdKhachHang == idKhach && x.typeOrder == true).ToList();
            if (checkORder != null)
            {
                return PartialView(checkORder);
            }
            return PartialView();
        }



        public ActionResult Partial_OrderReturn() 
        {
            int idKhach = (int)Session["IdKhachHang"];
            var checkORder = db.tb_Order.Where(x => x.IdKhachHang == idKhach && x.typeReturn == true).ToList();
            if (checkORder != null)
            {
                return PartialView(checkORder);
            }
            return PartialView();
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
            return PartialView();
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


     


        public ActionResult Partial_ListCancelOrder()
        {
            Cancel cart = (Cancel)Session["CancelOrder"];
            if (cart != null && cart.Items.Any())
            {
                return PartialView(cart.Items);
            }
            return PartialView();
        }

        public ActionResult Partial_CancelOrder()
        {
            return PartialView();
        }

        ///Hủy Hàng/
        [HttpPost]
        public ActionResult AddListCancel(int id, List<int> productIds)
        {
            var code = new { Success = false, msg = "", code = -1 };
            if (Session["IdKhachHang"] != null)
            {
                int idKhach = (int)Session["IdKhachHang"];
                var checkIdOrder = db.tb_Order.FirstOrDefault(row => row.IdKhachHang == idKhach);
                if (checkIdOrder != null)
                {

                    int checkId = checkIdOrder.OrderId;

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
                            //var check = db.tb_Order.FirstOrDefault(x => x.OrderId == checkId);
                            //int idOrderDetail = check.Id;
                            CanceltItem item = new CanceltItem
                            {
                                OrderId = id,
                                ProductId = OrderDetail.ProductId,
                                ProductName = OrderDetail.tb_Products.Title,
                                SoLuong = OrderDetail.Quantity,
                                Price = OrderDetail.Price,
                                PriceTotal = checkIdOrder.TotalAmount,


                            };
                            ViewBag.TotalPrice = checkIdOrder.TotalAmount;
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

        public ActionResult CancelOrder()
        {
            Cancel cart = (Cancel)Session["CancelOrder"];
            if (cart != null && cart.Items.Any())
            {
                return View(cart.Items);
            }
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CancelOrder(ReturnAndCancelOrder req, tb_Order model)
        {
            var code = new { Success = false, Code = -1, Url = "" };
            if (ModelState.IsValid)
            {
                if (Session["IdKhachHang"] != null)
                {
                    int idKhach = (int)Session["IdKhachHang"];
                    Cancel cart = (Cancel)Session["CancelOrder"];
                    if (cart != null)
                    {
                        foreach (var item in cart.Items)
                        {
                            var itemOrder = db.tb_Order.FirstOrDefault(x => x.IdKhachHang == idKhach && x.OrderId == item.OrderId);
                            if (itemOrder != null)
                            {
                                var checkQuantityPro = db.tb_Products.Find(item.ProductId);
                                if (checkQuantityPro != null)
                                {
                                    checkQuantityPro.Quantity += item.SoLuong;//capp nhap lai so luong cho ban porducts

                                    itemOrder.typeOrder = true;//capp nhap trang thai cho bang order
                                    if (req.Status == 1)
                                    {
                                        itemOrder.Status = "Thay đổi phương thức thanh toán";
                                    }
                                    else if (req.Status == 2)
                                    {
                                        itemOrder.Status = "Thay đổi địa chỉ";
                                    }
                                    else if (req.Status == 3)
                                    {
                                        itemOrder.Status = "Thay đổi sản phẩm khác";
                                    }
                                    itemOrder.typeReturn = false;
                                    //DeleteCartSucces(idKhach, item.ProductId);
                                    db.Entry(itemOrder).State = System.Data.Entity.EntityState.Modified;
                                    db.Entry(checkQuantityPro).State = System.Data.Entity.EntityState.Modified;
                                    db.SaveChanges();
                                }
                            } }
                        cart.ClearCart();
                        code = new { Success = true, Code = 1, Url = "" };
                    }
                }
                else
                {
                    ViewBag.error = "Không tìm thấy Sesstion khách";
                }
            }
            return Json(code);
        }



        ///Xác Nhận đã nhận được đơn hàng
        [HttpPost]
        public ActionResult ConFirmOrder(int id) 
        {
            var code = new { Success = false, Code = -1, Url = "" };
            
                if (Session["IdKhachHang"] != null)
                {
                    int idKhach = (int)Session["IdKhachHang"];

                    var checkOrder = db.tb_Order.FirstOrDefault(x => x.IdKhachHang == idKhach && x.OrderId == id);
                    if (checkOrder != null) 
                    {

                        checkOrder.SuccessDate = DateTime.Now;  
                          checkOrder.Success = true;
                        db.Entry(checkOrder).State = System.Data.Entity.EntityState.Modified;

                        db.SaveChanges();

                        code = new { Success = true, Code = 1, Url = "" };
                    }
                }
                else
                {
                    ViewBag.error = "Không tìm thấy Sesstion khách";
                }
           
            return Json(code);
        } 








        ///Trả Hàng/

        [HttpPost]
        public ActionResult AddListReturnOrder(int id, List<int> productIds)
        {
            var code = new { Success = false, msg = "", code = -1 };
            if (Session["IdKhachHang"] != null)
            {
                int idKhach = (int)Session["IdKhachHang"];
                var checkIdOrder = db.tb_Order.FirstOrDefault(row => row.IdKhachHang == idKhach);
                if (checkIdOrder != null)
                {

                    int checkId = checkIdOrder.OrderId;

                    ReturnOrder can = (ReturnOrder)Session[""];
                    if (can == null)
                    {
                        can = new ReturnOrder();
                    }
                    foreach (var proId in productIds)
                    {
                        var OrderDetail = db.tb_OrderDetail.FirstOrDefault(row => row.OrderId == id && row.Id == proId);
                        if (OrderDetail != null)
                        {
                            //var check = db.tb_Order.FirstOrDefault(x => x.OrderId == checkId);
                            //int idOrderDetail = check.Id;
                            ReturnOrderltItem item = new ReturnOrderltItem
                            {
                                OrderId = id,
                                ProductId = OrderDetail.ProductId,
                                ProductName = OrderDetail.tb_Products.Title,
                                SoLuong = OrderDetail.Quantity,
                                Price = OrderDetail.Price,
                                PriceTotal = checkIdOrder.TotalAmount,
                                CreateDate = checkIdOrder.CreatedDate,

                            };
                            ViewBag.TotalPrice = checkIdOrder.TotalAmount;
                            can.AddToCart(item, OrderDetail.Quantity);

                        }
                    }

                    Session["ReturnOrder"] = can;
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




        public ActionResult Partial_ListReturnOrder()
        {
            ReturnOrder cart = (ReturnOrder)Session["ReturnOrder"];
            if (cart != null && cart.Items.Any())
            {
                return View(cart.Items);
            }
            return View();
        }

        public ActionResult Partial_ReturnOrder()
        {
            return PartialView();
        }


       
        public ActionResult ReturnOrder()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ReturnOrder(ReturnOrderToken req,tb_Order model) 
        {
            var code = new { Success = false, Code = -1, Url = "" };
            if (ModelState.IsValid)
            {
                if (Session["IdKhachHang"] != null)
                {
                    int idKhach = (int)Session["IdKhachHang"];
                    ReturnOrder cart = (ReturnOrder)Session["ReturnOrder"];
                    if (cart != null)
                    {
                        foreach (var item in cart.Items)
                        {
                            var itemOrder = db.tb_Order.FirstOrDefault(x => x.IdKhachHang == idKhach && x.OrderId == item.OrderId);
                            if (itemOrder != null)
                            {
                                var checkQuantityPro = db.tb_Products.Find(item.ProductId);
                                if (checkQuantityPro != null)
                                {
                                    //checkQuantityPro.Quantity += item.SoLuong;//capp nhap lai so luong cho ban porducts

                                    itemOrder.typeOrder = null;//capp nhap trang thai cho bang order
                                    if (req.Status == 1)
                                    {
                                        itemOrder.Status = "Mặt hàng bị lỗi";
                                    }
                                    else if (req.Status == 2)
                                    {
                                        itemOrder.Status = "Không đúng sản phẩm trên We";
                                    }
                                    else if (req.Status == 3)
                                    {
                                        itemOrder.Status = "Số lượng bị thiếu ";
                                    }

                                    itemOrder.typeReturn = true;
                                    //DeleteCartSucces(idKhach, item.ProductId);
                                    db.Entry(itemOrder).State = System.Data.Entity.EntityState.Modified;
                                    db.Entry(checkQuantityPro).State = System.Data.Entity.EntityState.Modified;
                                    db.SaveChanges();
                                }
                            }
                        }
                        cart.ClearCart();
                        code = new { Success = true, Code = 1, Url = "" };
                    }
                }
                else
                {
                    ViewBag.error = "Không tìm thấy Sesstion khách";
                }
            }
            return Json(code);
        }




        public ActionResult SuccessCancelOrder() 
        {
            return View();
        }

        public ActionResult SuccessReturnOrder()
        {
            return View();
        }
    }



 }
