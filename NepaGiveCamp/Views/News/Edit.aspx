<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NepaGiveCamp.Models.NewsArticle>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm("Update","News")) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.NewsId) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NewsId) %>
                <%: Html.ValidationMessageFor(model => model.NewsId) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Title) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Title) %>
                <%: Html.ValidationMessageFor(model => model.Title) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Slug) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Slug) %>
                <%: Html.ValidationMessageFor(model => model.Slug) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Article) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Article) %>
                <%: Html.ValidationMessageFor(model => model.Article) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.DatePosted) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.DatePosted, String.Format("{0:g}", Model.DatePosted)) %>
                <%: Html.ValidationMessageFor(model => model.DatePosted) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

