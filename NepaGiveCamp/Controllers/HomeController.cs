using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NepaGiveCamp.Models;

namespace NepaGiveCamp.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        private GiveCampDataContext _datacontext = new GiveCampDataContext();

        public ActionResult Index()
        {
            ViewData.Model = _datacontext.NewsArticles.OrderByDescending(o => o.DatePosted).Take(3).ToList();
            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult Sponsor()
        {
            return View();
        }

        public ActionResult News(string slug)
        {
            if (slug == "")
                return RedirectToAction("Index", "News");

            ViewData.Model = _datacontext.NewsArticles.Where(w => w.Slug == slug).FirstOrDefault();
            return View();
        }

        public ActionResult FAQs(string id)
        {
            // just FAQs with no section specified
            if (string.IsNullOrEmpty(id))
            {
                return (View("FAQs"));
            }

            // section specified
            switch (id)
            {
                case "Charities":
                    return (View("FAQs-Charities"));
                case "Developers":
                    return (View("FAQs-Developers"));
                case "EventStaff":
                    return (View("FAQs-EventStaff"));
                case "Sponsors":
                    return (View("FAQs-Sponsors"));
                default:
                    // someone typed in a non-existant section URL
                    // redirect them to the 'no section specified' case
                    return (RedirectToAction("FAQs", "Home"));
            }
        }
    }
}
