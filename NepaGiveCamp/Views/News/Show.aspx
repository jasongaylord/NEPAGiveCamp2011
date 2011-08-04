<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NepaGiveCamp.Models.NewsArticle>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Show
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Show</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">NewsId</div>
        <div class="display-field"><%: Model.NewsId %></div>
        
        <div class="display-label">Title</div>
        <div class="display-field"><%: Model.Title %></div>
        
        <div class="display-label">Slug</div>
        <div class="display-field"><%: Model.Slug %></div>
        
        <div class="display-label">Article</div>
        <div class="display-field"><%: Model.Article %></div>
        
        <div class="display-label">DatePosted</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.DatePosted) %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.NewsId }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

