<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<NepaGiveCamp.Models.NewsArticle>>" %>
<%@ Import Namespace="NepaGiveCamp.Code" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Northeastern Pennsylvania Give Camp
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script src="../../Content/Scripts/jquery.Tweetable.js" type="text/javascript" language="javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navHome").addClass("current_page_item");
            $('#tweets').tweetable({ username: 'nepagivecamp', time: true, limit: 3, replies: true });
        });
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="f_body_content_right">
        <div class="f_body_content_right_content">
            <div class="heading3">Event Downloads</div>
            <p>
                <a href="/download/Announcement.pdf" target="_blank"><img src="/Content/Images/page_white_acrobat.png" alt="PDF" /> Announcement Flyer</a>
            </p>
            <div class="heading3">Twitter Chatter</div>
            
            <div id="tweets"></div>

            <a href="http://twitter.com/nepagivecamp" target="_blank">Follow us on Twitter</a>
        </div>
    </div>
    <div class="f_body_content_left">
        <div class="heading1">Event Information</div>

<% if (Request.IsAuthenticated) { %>
    <br /><%: Html.ActionLink("Create New", "New", "NewsArticle")%><br />
<%  } %>

    <% foreach (var item in Model) { %>
        <br />
        <div class="heading3"><%: Html.ActionLink(item.Title, "News", new { slug = item.Slug })%></div>
        <div class="datepublished">Published on <%: String.Format("{0:d}", item.DatePosted) %></div>
        <div class="easyreading"><%: Utility.GetAbstract(item.Article) %></div>
    <% } %>


        <p><%: Html.ActionLink("View all news", "Index", "NewsArticle")%></p>
    </div>
</asp:Content>