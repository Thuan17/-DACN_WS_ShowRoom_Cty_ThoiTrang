﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WSite_ShowRoom_CtyThoiTrang.Models;

namespace WSite_ShowRoom_CtyThoiTrang.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            Models.CONGTYTHOITRANGEntities db =new CONGTYTHOITRANGEntities();
         List<tb_Products>Products =db.tb_Products.ToList();
            return View(Products);
        }
    }
}