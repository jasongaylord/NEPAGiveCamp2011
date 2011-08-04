using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NepaGiveCamp.Models;

namespace NepaGiveCamp.Controllers
{
    public class NewsController : Controller
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        [HttpGet, Authorize]
        public ActionResult Index()
        {
            ViewData.Model = _datacontext.NewsArticles.OrderByDescending(o => o.DatePosted).ToList();
            return View();
        }

        [HttpGet]
        public ActionResult Show(string slug)
        {
            ViewData.Model = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
            return View();
        }

        [HttpGet, Authorize]
        public ActionResult New()
        {
            return View();
        }

        [HttpPost, Authorize]
        public ActionResult Create(NewsArticle newsArticle)
        {
            if (!ModelState.IsValid)
                return View("New");

            newsArticle.DatePosted = DateTime.Now;
            _datacontext.NewsArticles.InsertOnSubmit(newsArticle);
            _datacontext.SubmitChanges();
            return RedirectToRoute("");
            //return RedirectToAction("Index");
        }

        [HttpGet, Authorize]
        public ActionResult Edit(string slug)
        {
            ViewData.Model = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
            return View();
        }

        [HttpPut, Authorize]
        public ActionResult Update(NewsArticle newsArticle)
        {
            if (!ModelState.IsValid)
                return View("Edit");

            _datacontext.NewsArticles.InsertOnSubmit(newsArticle);
            _datacontext.SubmitChanges();
            return RedirectToRoute("");
        }

        //[HttpGet, Authorize]
        //public ActionResult Delete(string slug)
        //{
        //    ViewData.Model = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
        //    return View();
        //}

        [HttpDelete, Authorize]
        public ActionResult Destroy(string slug)
        {
            var article = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
            _datacontext.NewsArticles.DeleteOnSubmit(article);
            _datacontext.SubmitChanges();

            return RedirectToRoute("");
        }
    }
}
