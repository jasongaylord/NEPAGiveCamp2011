using System.Collections.Generic;
using System.Web.Mvc;
using System.Web.Mvc.Html;

namespace NepaGiveCamp.Helpers
{
    public static class HtmlHelperExtenstion
    {
        public static string CheckBoxList(this HtmlHelper htmlHelper, IDictionary<string, string> checkBoxes, int boxesPerBreak)
        {
            string retval = "";
            int box = 0;
            foreach (var i in checkBoxes)
            {
                retval += "<span class='checkBoxListItem'>";
                retval += htmlHelper.CheckBox(i.Key, new { value = i.Value });
                retval += "<label for=\"" + i.Key + "\">" + i.Value + "</label>\n";
                retval += "</span>";
                box++;
                if (box % boxesPerBreak == 0)
                {
                    retval += "<br />\n";
                }
            }
            return (retval);
        }
    }
}