using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using NepaGiveCamp.Models;

namespace NepaGiveCamp.Controllers
{
    public class NewsArticleController : Controller
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        [HttpGet]
        public ActionResult Index()
        {
            ViewData.Model = _datacontext.NewsArticles.OrderByDescending(o => o.DatePosted).ToList();
            return View();
        }

        [ValidateInput(false), HttpGet, Authorize]
        public ActionResult New()
        {
            return View();
        }

        [ValidateInput(false), HttpPost, Authorize]
        public ActionResult Create(NewsArticle newsArticle)
        {
            if (!ModelState.IsValid)
                return View("New");

            newsArticle.DatePosted = DateTime.Now;
            newsArticle.Slug = ToSlug(newsArticle.Title);
            _datacontext.NewsArticles.InsertOnSubmit(newsArticle);
            _datacontext.SubmitChanges();
            return RedirectToAction("News", "Home");
        }

        private static string ToSlug(string title)
        {
            const string specials = "[\"'$&+,/:;=?!@<>#%{}|\\\\^~\\]\\[`]";
            var regex = new Regex(specials);
            var output = regex.Replace(title, "");
            return output.Replace(" ", "_");
        }

        [HttpGet, Authorize]
        public ActionResult Edit(string slug)
        {
            ViewData.Model = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
            return View();
        }

        [ValidateInput(false), HttpPost, Authorize]
        public ActionResult Update(NewsArticle newsArticle)
        {
            if (!ModelState.IsValid)
                return View("Edit");

            var article = _datacontext.NewsArticles.Where(w => w.NewsId == newsArticle.NewsId).FirstOrDefault();
            //article = newsArticle;

            //try
            //{
            //    _datacontext.SubmitChanges();
            //}
            //catch (ChangeConflictException)
            //{
            //    _datacontext.ChangeConflicts.ResolveAll(RefreshMode.KeepChanges);
            //    _datacontext.SubmitChanges();
            //}

            _datacontext.NewsArticles.Attach(newsArticle, article);
            _datacontext.SubmitChanges();

            return RedirectToAction("News", "Home");
        }

        //[HttpGet, Authorize]
        //public ActionResult Delete(string slug)
        //{
        //    ViewData.Model = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
        //    return View();
        //}

        [HttpPost, Authorize]
        public ActionResult Destroy(string slug)
        {
            var article = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
            _datacontext.NewsArticles.DeleteOnSubmit(article);
            _datacontext.SubmitChanges();

            return RedirectToAction("News", "Home");
        }
    }
}
