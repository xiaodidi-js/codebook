﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//引入命名空间
using System.Web.Http;

namespace X_1_FirstWebAPI
{
    public class WebAPIConfig
    {
        public static void Register(HttpConfiguration config)
        {
            //注册路由映射
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
                );
        }
    }
}