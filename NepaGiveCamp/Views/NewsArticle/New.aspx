<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NepaGiveCamp.Models.NewsArticle>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Add News to the NEPA GiveCamp
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="heading1">Add News</div>

        <% using (Html.BeginForm("Create", "NewsArticle", FormMethod.Post))
           { %>
            <fieldset>
                <legend>News Posting</legend>
                <div class="rowwrap">
                    <div class="label"><label for="Title">Title:</label></div>
                    <div class="input">
                        <%: Html.TextBoxFor(model => model.Title) %>
                        <%: Html.ValidationMessageFor(model => model.Title) %>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Title">Article:</label></div>
                    <div class="input">
                        <%: Html.TextAreaFor(model => model.Article, new { rows = "8", cols = "50" })%>
                        <%: Html.ValidationMessageFor(model => model.Article)%>
                    </div>
                </div>
            </fieldset>

        <div class="submit">
            <input type="submit" value="Add New" />
        </div>
        <% } %>

    <div>
        <%: Html.ActionLink("Back to the news listing", "News", "Home") %>
    </div>

</asp:Content>