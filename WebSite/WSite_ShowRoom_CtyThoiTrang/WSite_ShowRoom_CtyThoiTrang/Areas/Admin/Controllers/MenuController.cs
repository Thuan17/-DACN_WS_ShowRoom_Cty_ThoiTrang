using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WSite_ShowRoom_CtyThoiTrang.Areas.Admin.Controllers
{
    public class MenuController : Controller
    {
        // GET: Admin/Menu
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult MenuSideBar() 
        {
            return PartialView("_MenuSideBar");
        }
    }
}