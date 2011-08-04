<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NepaGiveCamp.Models.NewsArticle>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: <%: Model.Title %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="heading1"><%: Model.Title %></div>
    <div class="datepublished_content">Published on <%: String.Format("{0:d}", Model.DatePosted) %></div>
    <div class="easyreading"><%= Model.Article %></div>

<% if (Request.IsAuthenticated) { %>
    <br />
    <%: Html.ActionLink("Edit","Edit","NewsArticle", new { slug = Model.Slug }, null) %> |
    <%: Html.ActionLink("Delete", "Destroy", "NewsArticle", new { slug = Model.Slug }, null)%>
<%  } %>
</asp:Content>