<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
        Welcome <b><%: Page.User.Identity.Name %></b>!
        [ <%: Html.ActionLink("Log Off", "LogOff", "Account") %> ] &middot; Control Panel: <%: Html.ActionLink("News", "Index", "News") %>
<%
    }
    else {
%> 
        [ <%: Html.ActionLink("Log On", "LogOn", "Account") %> ]
<%
    }
%>
