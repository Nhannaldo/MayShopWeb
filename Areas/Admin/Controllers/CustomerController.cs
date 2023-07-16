﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MAYShop.Models;

namespace MAYShop.Areas.Admin.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Admin/Customer
        MayShopDataContext db = new MayShopDataContext();
        public ActionResult Index()
        {
            return View(db.Customers.ToList());
        }
    }
}