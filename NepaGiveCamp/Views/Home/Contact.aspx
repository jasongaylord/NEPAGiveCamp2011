<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: How to Reach Us
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="f_body_content_right">
        <div class="f_body_content_right_content">
            <div class="heading3">Other Useful Links</div>
            <p>
            <a href="http://dotnetvalley.com/" target="_blank">dotnetvalley.com</a><br />
            .NET Valley is Northeastern Pennsylvania's technology user group. It's 
            free to join, and free to attend. So what are you waiting for? Join today.
            </p>
            <p>
            <a href="http://givecamp.org/" target="_blank">givecamp.org</a><br />
            GiveCamp.org is the national website for Give Camps across the world.
            </p>
        </div>
    </div>
    <div class="f_body_content_left">
        <div class="heading1">How to Reach Us</div>

        <div class="easyreading">
		<p>
		The best way to reach us is via email. Our general email is:
        </p>

        <blockquote>
            info [at] nepagivecamp.org
        </blockquote> 
        
        <p>
        We'll provide all volunteers and charities alternate contact methods as the event approaches.
		</p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navContact").addClass("current_page_item");
        });
    </script>
</asp:Content>