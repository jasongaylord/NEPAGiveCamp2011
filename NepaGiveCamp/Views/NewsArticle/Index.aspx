<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<NepaGiveCamp.Models.NewsArticle>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: News Listing
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="heading1">News Listing</div>

<% if (Request.IsAuthenticated) { %>
    <br /><%: Html.ActionLink("Create New", "New") %><br />
<%  } %>

    <table class="basic_table">
        <tr>
            <th style="width: 750px; text-align: left;">
                Title
            </th>
            <th>
                Date Posted
            </th>
        </tr>

    <% foreach (var item in Model) { %>

        <tr>
            <td>
                <%: Html.ActionLink(item.Title, "News", "Home", new { slug = item.Slug }, null ) %>

<% if (Request.IsAuthenticated) { %>
                (<%: Html.ActionLink("Edit", "Edit", new { slug=item.Slug }) %> |
                <%: Html.ActionLink("Delete", "Destroy", new { slug = item.Slug })%>)
<%  } %>
            </td>
            <td style="text-align: center;">
                <%: String.Format("{0:d}", item.DatePosted) %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>