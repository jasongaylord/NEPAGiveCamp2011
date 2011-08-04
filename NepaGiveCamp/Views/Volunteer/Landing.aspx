<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Resources and Information for Volunteers
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="f_body_content_right">
        <div class="f_body_content_right_content">
            <div class="heading3">Volunteer Prospectus</div>
            <p>
                <a href="/download/Prospectus.pdf" target="_blank"><img src="/Content/Images/page_white_acrobat.png" alt="PDF" /> Sponsor and Volunteer Prospectus</a>
            </p>
        </div>
    </div>
    <div class="f_body_content_left">
        <div class="heading1">Resources and Information for Volunteers</div>

        <div class="easyreading">
	    <p>
	    Volunteering for a GiveCamp event is an opportunity for you to
        use your skills to assist non-profit organizations reach their full
        potential.
        </p>

	    <p>
        It is also an opportunity for you to grow as a professional, work with
        different people, be a mentor or be mentored. Please review the 
        <%=Html.ActionLink("FAQ", "FAQs", "Home")%> for more information.
	    </p>

        <p><%=Html.ActionLink("Sign up to be a volunteer","SignUp") %></p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navVolunteer").addClass("current_page_item");
        });
    </script>
</asp:Content>