<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Frequently Asked Questions (FAQs)
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="f_body_content_right">
        <div class="f_body_content_right_content">
            <div class="heading3">FAQ Sections</div>
            <p>
            Choose an option below to jump to that FAQ section:
            </p>

            <ul>
				<li><%=Html.ActionLink("Charities", "FAQs", new {id="Charities"}) %></li>
				<li><%=Html.ActionLink("Developers", "FAQs", new { id = "Developers" })%></li>
				<li><%=Html.ActionLink("Event Staff", "FAQs", new {id="EventStaff"}) %></li>
				<li><%=Html.ActionLink("Sponsors", "FAQs", new { id = "Sponsors" })%></li>
            </ul>

            <div class="heading3">Event Prospectus</div>
            <p>
                <a href="/download/Prospectus.pdf" target="_blank"><img src="/Content/Images/page_white_acrobat.png" alt="PDF" /> Sponsor and Volunteer Prospectus</a>
            </p>
        </div>
    </div>
    <div class="f_body_content_left">
        <div class="heading1">Frequently Asked Questions</div>

        <div class="easyreading">
		<p>
		To provide easier reading, we've segregated the frequently asked questions into 
        specific roles. Please read the FAQ section for your specific role by choosing
        the appropriate link below:
        </p>

		<ul>
			<li><%=Html.ActionLink("Charities", "FAQs", new {id="Charities"}) %></li>
			<li><%=Html.ActionLink("Developers", "FAQs", new { id = "Developers" })%></li>
			<li><%=Html.ActionLink("Event Staff", "FAQs", new {id="EventStaff"}) %></li>
			<li><%=Html.ActionLink("Sponsors", "FAQs", new { id = "Sponsors" })%></li>
		</ul>

        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navFAQ").addClass("current_page_item");
        });
    </script>
</asp:Content>