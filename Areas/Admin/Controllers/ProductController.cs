using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MAYShop.Models;
using PagedList;
namespace MAYShop.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        MayShopDataContext db = new MayShopDataContext();
        public ActionResult Index(int? page)
        {
            int iPageNum = (page ?? 1);
            int iPageSize = 7;
            
            return View(db.Products.ToList().OrderBy(n => n.ProductID).ToPagedList(iPageNum, iPageSize));
        }
        [HttpGet]
        public ActionResult Create()
        {
            ViewBag.BrandID = new SelectList(db.Brands.ToList().OrderBy(n => n.Name), "BrandID", "Name");
            ViewBag.CategoryID = new SelectList(db.Categories.ToList().OrderBy(n => n.Name), "CategoryID", "Name");
            ViewBag.SizeID = new SelectList(db.Sizes.ToList().OrderBy(n => n.Name), "SizeID", "Name");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(Product sach, FormCollection f, HttpPostedFileBase fFileUpload)
        {
            ViewBag.BrandID = new SelectList(db.Brands.ToList().OrderBy(n => n.Name), "BrandID", "Name");
            ViewBag.CategoryID = new SelectList(db.Categories.ToList().OrderBy(n => n.Name), "CategoryID", "Name");
            ViewBag.SizeID = new SelectList(db.Sizes.ToList().OrderBy(n => n.Name), "SizeID", "Name");
            if (fFileUpload == null)
            {
                ViewBag.ThongBao = "Hãy chọn ảnh bìa";
                ViewBag.Name = f["sName"];
                ViewBag.MoTa = f["sMoTa"];
                ViewBag.GiaBan = decimal.Parse(f["mGiaBan"]);
                ViewBag.BrandID = new SelectList(db.Brands.ToList().OrderBy(n => n.Name), "BrandID", "Name");
                ViewBag.CategoryID = new SelectList(db.Categories.ToList().OrderBy(n => n.Name), "CategoryID", "Name");
                ViewBag.SizeID = new SelectList(db.Sizes.ToList().OrderBy(n => n.Name), "SizeID", "Name");
                return View();
            }
            else
            {
                if (ModelState.IsValid)
                {
                    var sFileName = Path.GetFileName(fFileUpload.FileName);
                    var path = Path.Combine(Server.MapPath("~/Img"), sFileName);
                    if (!System.IO.File.Exists(path))
                    {
                        fFileUpload.SaveAs(path);
                    }
                    sach.Title = f["sName"];
                    sach.Description = f["sMoTa"];
                    sach.Picture = sFileName;
                    sach.CreateDate = Convert.ToDateTime(f["dNgayCapNhat"]);
                    sach.Price = decimal.Parse(f["mGiaBan"]);
                    sach.BrandID = int.Parse(f["BrandID"]);
                    sach.SizeID = int.Parse(f["SizeID"]);
                    sach.CategoryID = int.Parse(f["CategoryID"]);
                    db.Products.InsertOnSubmit(sach);
                    db.SubmitChanges();
                    return RedirectToAction("Index");
                }
                return View();

            }
        }
        public ActionResult Details(int id)
        {
            var sach = db.Products.SingleOrDefault(n => n.ProductID == id);
            if (sach == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sach);
        }
        public ActionResult Delete(int id)
        {
            var item = db.Products.SingleOrDefault(n => n.ProductID == id);
            var Cartitem = db.CartItems.Where(n => n.ProductID == id);
            var FBitem = db.FeedBacks.Where(n => n.ProductID == id);
            var Loveitem = db.LoveItems.Where(n => n.ProductID == id);
            var Gitem = db.Galeries.Where(n => n.ProductID == id);



            if (item == null)
            {
                return RedirectToAction("Not Found");
            }
            db.CartItems.DeleteAllOnSubmit(Cartitem); db.SubmitChanges();
            db.FeedBacks.DeleteAllOnSubmit(FBitem); db.SubmitChanges();
            db.LoveItems.DeleteAllOnSubmit(Loveitem); db.SubmitChanges();
            db.Galeries.DeleteAllOnSubmit(Gitem); db.SubmitChanges();


            db.Products.DeleteOnSubmit(item);

            db.SubmitChanges();
            return RedirectToAction("Index", "Product");
        }
    }
}