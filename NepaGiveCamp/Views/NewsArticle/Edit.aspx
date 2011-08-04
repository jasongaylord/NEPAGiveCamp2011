<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NepaGiveCamp.Models.NewsArticle>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Editing <%: Model.Title %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="heading1">Edit News</div>

    <% using (Html.BeginForm("Update","NewsArticle")) {%>
        <%: Html.ValidationSummary(true) %>
            <fieldset>
                <legend>News Posting</legend>
                <%: Html.HiddenFor(model => model.NewsId) %>
                <div class="rowwrap">
                    <div class="label"><label for="Title">Title:</label></div>
                    <div class="input">
                        <%: Html.TextBoxFor(model => model.Title) %>
                        <%: Html.ValidationMessageFor(model => model.Title) %>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Title">Slug:</label></div>
                    <div class="input">
                        <%: Html.TextBoxFor(model => model.Slug) %>
                        <%: Html.ValidationMessageFor(model => model.Slug) %>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Title">Article:</label></div>
                    <div class="input">
                        <%: Html.TextAreaFor(model => model.Article, new { rows = "5", cols = "30" })%>
                        <%: Html.ValidationMessageFor(model => model.Article)%>
                    </div>
                </div>
            </fieldset>

        <div class="submit">
            <input type="submit" value="Save Changes" />
        </div>
        <% } %>

    <div>
        <%: Html.ActionLink("Back to the news listing", "News", "Home") %>
    </div>

</asp:Content>