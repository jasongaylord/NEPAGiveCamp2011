<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Frequently Asked Questions for Event Staff
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
        <div class="heading2">For Event Staff</div><br />

        <div class="easyreading">

            <div class="faq">
                <a class="question">Do I have to be in the tech community to volunteer?</a>
                <div class="answer">
                	<p>No, we are looking for anyone to help in the support of the developers. We will need to have staff 24 hours to assist perform tasks such as:</p>
                	<ul>
						<li>Keeping developers on schedule</li>
						<li>Setup</li>
						<li>Clean up</li>
						<li>Food preparation</li>
						<li>Keeping morale up</li>
						<li>Playing Rock Band</li>              		
                	</ul>
                </div>
            </div>

            <div class="faq">
                <a class="question">Can I work the event and volunteer as a developer?</a>
                <div class="answer">
                	<p>Yes, your role will primarily be as a volunteer to support the developers, but if you feel the need to jump in on a project and help solve issues, and pair program with someone for a few hours feel free.</p>
                </div>
            </div>

            <div class="faq">
                <a class="question">When will the shifts be assigned?</a>
                <div class="answer">
                	<p>Shifts will be assigned shortly after opening ceremonies on Friday.</p>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navFAQ").addClass("current_page_item");
        });
    </script>
    <script src="/Content/Scripts/jquery.faq.js" type="text/javascript"></script>
</asp:Content>