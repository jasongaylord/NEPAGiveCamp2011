using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace NepaGiveCamp.Code
{
    public class Utility
    {
        public static string GetAbstract(string value)
        {
            return GetAbstract(value, 65);
        }

        public static string GetAbstract(string value, int wordCount)
        {
            value = value.Replace("&nbsp;", " ");
            var reg = new Regex("<.*?>", RegexOptions.Compiled);
            var stripDesc = reg.Replace(value, String.Empty);

            var words = stripDesc.Split(' ');

            if (words.Count() > wordCount)
            {
                var newString = "";

                for (var x = 0; x < wordCount - 5; x++)
                {
                    newString = newString + words[x] + " ";
                }

                return newString + "...";
            }

            return stripDesc.Trim();
        }
    }
}