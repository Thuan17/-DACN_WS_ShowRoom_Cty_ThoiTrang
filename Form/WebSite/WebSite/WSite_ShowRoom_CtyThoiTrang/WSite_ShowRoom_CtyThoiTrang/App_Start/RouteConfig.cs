﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace WSite_ShowRoom_CtyThoiTrang
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
             //       routes.MapRoute(
             //    name: "Home",
             //    url: "thanh-toan",
             //    defaults: new { controller = "Home", action = "Index", alias = UrlParameter.Optional },
             //    namespaces: new[] { "WSite_ShowRoom_CtyThoiTrang.Controllers" }
             //);
        }
    }
}
