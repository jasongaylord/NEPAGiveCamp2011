<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Resources and Information for Charities
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="heading1">Resources and Information for Charities</div>

    <div class="easyreading">
	<p>
	First of all, we'd like to thank you in advance for doing what 
    you do. You are truly an inspiration to all of us.
    </p>

    <p>
    GiveCamp is a weekend-long event where software developers, designers, 
    and database administrators donate their time to create custom software 
    for non-profit organizations. This custom software could be a new 
    website for the nonprofit organization, a small data-collection application
    to keep track of members, or a application for the Red Cross that 
    automatically emails a blood donor three months after they’ve donated blood 
    to remind them that they are now eligible to donate again. The only 
    limitation is that the project should be scoped to be able to be 
    completed in a weekend.
    </p>

	<p>
    Please review the 
    <%=Html.ActionLink("FAQ", "FAQs", "Home")%> for more information.
	</p>

    <p><strong>Submission for proposals has closed for the 2011 event.</strong> We would 
    still like to know who's interested as we may hold a supplemental event in 
    the upcoming months. If you're interested, 
    please feel free to email the NEPA GiveCamp organizer, Jason Gaylord, at: <blockquote>
    jgaylord [at] nepagivecamp.org</blockquote></p>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navCharity").addClass("current_page_item");
        });
    </script>
</asp:Content>