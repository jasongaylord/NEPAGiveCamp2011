<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content4" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Thank you for submitting your proposal
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="heading1">Thank You!</div>

    <div class="easyreading">
	<p>
	Thank you for submitting your proposal of work. You will hear from 
    us soon whether or not your proposal is approved.
    </p>

	<p>
    Be sure to review the  
    <%=Html.ActionLink("FAQ", "FAQs", "Home")%> for more information.
	</p>

    <p>Also, don't forget to mark your calendar for this event!</p>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navCharity").addClass("current_page_item");
        });
    </script>
</asp:Content>