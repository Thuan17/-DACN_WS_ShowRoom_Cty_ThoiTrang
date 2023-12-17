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
            var item = db.tb_Products.ToList();
            return PartialView(item);
        }

        public ActionResult Partail_ProductSeller()
        {
            SellerCart cart = (SellerCart)Session["Seller"];
            if (cart != null && cart.Items.Any())
            {
                return PartialView(cart.Items);
            }
            return PartialView();
        }




        [HttpPost]
        public ActionResult Find(int Search)
        {
            if (Search != null)
            {


                var FindProducbyId = db.tb_Products.Where(x => x.ProductId == Search).ToList();

                if (FindProducbyId != null)
                {

                    ViewBag.Find = Search;
                    return View(FindProducbyId);
                }
                else
                { ViewBag.Find = +Search;
                    return View();
                }
            }
            return View();
        }


        [HttpPost]
        public ActionResult AddListProduct(int id, int soluong)
        {
            var code = new { Success = false, Code = -1, Count = 0 };
            var checkSanPham = db.tb_Products.FirstOrDefault(row => row.ProductId == id);
            if (checkSanPham != null)
            {

                if (checkSanPham.Quantity >= soluong)
                {
                    SellerCart cart = (SellerCart)Session["Seller"];
                    if (cart == null)
                    {
                        cart = new SellerCart();
                    }
                    SellerCartItem item = new SellerCartItem
                    {
                        ProductId = checkSanPham.ProductId,
                        ProductName = checkSanPham.Title,
                        CategoryName = checkSanPham.tb_ProductCategory.Title,
                        Alias = checkSanPham.Alias,
                        SoLuong = soluong,
                    };
                    if (checkSanPham.tb_ProductImage.FirstOrDefault(x => x.IsDefault) != null)
                    {
                        item.ProductImg = checkSanPham.tb_ProductImage.FirstOrDefault(x => x.IsDefault).Image;
                    }
                    item.Price = (decimal)checkSanPham.Price;
                    if (checkSanPham.PriceSale > 0)
                    {
                        item.Price = (decimal)checkSanPham.PriceSale;
                    }
                    item.PriceTotal = item.SoLuong * item.Price;

                    //checkSanPham.Quantity = -soluong;
                    cart.AddToCart(item, soluong);
                    Session["Seller"] = cart;
                    code = new { Success = true, Code = 1, Count = cart.Items.Count };

                }
                else
                {
                    code = new { Success = false, Code = -1, Count = 0 };//Số Lượng Không Đủ
                }

            }
            return Json(code);
        }


        [HttpPost]
        public ActionResult Delete(int id)
        {
            var code = new { Success = false, Code = -1, Count = 0 };

            SellerCart cart = (SellerCart)Session["Seller"];
            if (cart != null)
            {
                var checkProduct = cart.Items.FirstOrDefault(x => x.ProductId == id);
                if (checkProduct != null)
                {
                    cart.Remove(id);
                    code = new { Success = true, Code = 1, Count = cart.Items.Count };
                }
            }
            return Json(code);
        }


        [HttpPost]
        public ActionResult FindClient(string Search = "")
        {
            if (!string.IsNullOrEmpty(Search))
            {
                var FindClient = db.tb_KhachHang.Where(x => x.SDT.ToUpper().Contains(Search.ToUpper()));
                if (FindClient != null && FindClient.Any())
                {
                    ViewBag.Find = FindClient;
                    return View(FindClient.ToList());
                }



            }
            return View();
        }


        public ActionResult Partail_ThongTinKhachHang()
        {
            return PartialView();
        }

        public ActionResult Partial_Item_ThanhToan()
        {
            SellerCart cart = (SellerCart)Session["Seller"];
            if (cart != null && cart.Items.Any())
            {
                return PartialView(cart.Items);
            }
            return PartialView();
        }

        [HttpPost]
        public ActionResult Partial_ThanhToanDaCoTaiKhoan(int id) 
        {

            ViewBag.id = id;
               
                return PartialView();
          
                
                
           
        }


        [HttpPost]
        public ActionResult UpdateQuanTity(int id,int quantity) 
        {
            SellerCart cart = (SellerCart)Session["Seller"];
            if (cart != null && cart.Items.Any())
            {
                cart.UpSoLuong(id, quantity);
                return Json(new { Success = true });
            }
            return Json(new { Success = false });   
        }







        public ActionResult CheckOut()
        {
            SellerCart cart = (SellerCart)Session["Seller"];
            if (cart != null && cart.Items.Any())
            {
                ViewBag.CheckCart = cart;
            }
            return View();


        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CheckOut(OrderViewModel req)
        {
            var code = new { Success = false, Code = -1, Url = "" };
            if (ModelState.IsValid)
            {
                SellerCart cart = (SellerCart)Session["Seller"];
                if (cart != null)
                {



                    if (req.Phone != null)
                    {
                        
                        foreach (var item in cart.Items)
                        {
                            var checkQuantityPro = db.tb_ProductDetai.Find(item.ProductId);
                            if (checkQuantityPro != null)
                            {
                                if (checkQuantityPro.Quantity >= item.SoLuong)
                                {
                                    checkQuantityPro.Quantity -= item.SoLuong;



                                    db.Entry(checkQuantityPro).State = System.Data.Entity.EntityState.Modified;
                                    db.SaveChanges();
                                }
                                else
                                {
                                    code = new { Success = false, Code = -7, Url = "" };//Số lượng sản phẩm hiện không đủ 

                                }
                            }
                        }

                        tb_KhachHang khachHang = new tb_KhachHang();
                        khachHang.SDT = req.Phone.Trim();
                        khachHang.TenKhachHang = req.CustomerName.Trim();
                        khachHang.SoLanMua = 1;
                        db.tb_KhachHang.Add(khachHang);
                        db.SaveChanges();



                        tb_Seller seller = new tb_Seller();
                        seller.CustomerName = req.CustomerName;
                        seller.Phone = req.Phone;
                        //seller.Address = req.Address;
                        //seller.Email = req.Email;
                        /*  seller.Status = 1;*///chưa thanh toán / 2/đã thanh toán, 3/Hoàn thành, 4/hủy
                        cart.Items.ForEach(x => seller.tb_SellerDetail.Add(new tb_SellerDetail
                        {
                            ProductDetai = x.ProductId,
                            Quantity = x.SoLuong,
                            Price = x.Price,

                        }));
                        seller.TotalAmount = cart.Items.Sum(x => (x.Price * x.SoLuong));
                        seller.TypePayment = req.TypePayment;
                        seller.CreatedDate = DateTime.Now;
                        seller.ModifiedDate = DateTime.Now;
                        seller.CreatedBy = req.Phone;
                        Random rd = new Random();
                        seller.Code = "HD" + rd.Next(0, 9) + rd.Next(0, 9) + rd.Next(0, 9) + rd.Next(0, 9);

                        db.tb_Seller.Add(seller);
                        db.SaveChanges();


                        cart.ClearCart();
                        code = new { Success = true, Code = 1, Url = "" };//Xuất hóa đơn thành công
                    }

                }

            }

            else
            {
                code = new { Success = false, Code = -2, Url = "" };//Không được để trống
            }
            return Json(code);

        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CheckOutClient(SellerPay req ,tb_Products model )
        {
            var code = new { Success = false, Code = -1, Url = "" };
            var checkClient = db.tb_KhachHang.FirstOrDefault(row=>row.IdKhachHang== req.idKhachHang);
            if (checkClient != null)
            {
                SellerCart cart = (SellerCart)Session["Seller"];
                if (cart != null) 
                {




                    foreach (var item in cart.Items)
                    {
                        var checkQuantityPro = db.tb_ProductDetai.Find(item.ProductId);
                        if (checkQuantityPro != null)
                        {
                            if (checkQuantityPro.Quantity >= item.SoLuong)
                            {
                                checkQuantityPro.Quantity -= item.SoLuong;

                             

                                db.Entry(checkQuantityPro).State = System.Data.Entity.EntityState.Modified;
                                db.SaveChanges();
                            }
                            else
                            {
                                code = new { Success = false, Code = -7, Url = "" };//Số lượng sản phẩm hiện không đủ 
                              
                            }
                        }
                    }


                    tb_Seller seller = new tb_Seller();
                    seller.CustomerName = checkClient.TenKhachHang;
                    seller.Phone = checkClient.SDT;
                 
                    cart.Items.ForEach(x => seller.tb_SellerDetail.Add(new tb_SellerDetail
                    {
                        ProductDetai = x.ProductId,
                        Quantity = x.SoLuong,
                        Price = x.Price,

                    }));
                    seller.TotalAmount = cart.Items.Sum(x => (x.Price * x.SoLuong));
                    seller.TypePayment = req.TypePayment;
                    seller.CreatedDate = DateTime.Now;
                    seller.ModifiedDate = DateTime.Now;
                    seller.CreatedBy = checkClient.SDT;
                    Random rd = new Random();
                    seller.Code = "HD" + rd.Next(0, 9) + rd.Next(0, 9) + rd.Next(0, 9) + rd.Next(0, 9);

                    db.tb_Seller.Add(seller);
                    db.SaveChanges();








                    checkClient.SoLanMua += 1;



                    db.Entry(checkClient).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();





                    cart.ClearCart();
                    code = new { Success = true, Code = 1, Url = "" };//Xuất hóa đơn thành công

                }
                else
                {
                    code = new { Success = false, Code = -3, Url = "" }; // Không có sản phẩm
                }
            }
            else 
            {
                code = new { Success = false, Code = -2, Url = "" }; // Lỗi không tìm thấy khách hàng
            }
            return Json(code);  
        
        }








    }
}