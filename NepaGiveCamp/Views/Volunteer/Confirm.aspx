<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content4" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Thank you for volunteering for our event
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div class="heading1">Thank you for volunteering for our event</div>

    <div class="easyreading">
	<p>
	We have registered you as a volunteer. You'll hear from us as the event draws closer.
    Be sure to contact us if you have any questions or need to change your 
    volunteer status.
    </p>

	<p>
    Please review the 
    <%=Html.ActionLink("FAQ", "FAQs", "Home")%> for more information.
	</p>

    <p>Also, don't forget to mark your calendar for this event!</p>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navVolunteer").addClass("current_page_item");
        });
    </script>
</asp:Content>