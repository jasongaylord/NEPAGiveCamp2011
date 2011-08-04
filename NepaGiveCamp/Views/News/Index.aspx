<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<NepaGiveCamp.Models.NewsArticle>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Title
            </th>
            <th>
                Article
            </th>
            <th>
                DatePosted
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { slug=item.Slug }) %> |
                <%: Html.ActionLink("Delete", "Destroy", new { slug = item.Slug })%>
            </td>
            <td>
                <%: Html.ActionLink("Show", item.Title, new { slug = item.Slug })%>
            </td>
            <td>
                <%: item.Article %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.DatePosted) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "New") %>
    </p>

</asp:Content>

