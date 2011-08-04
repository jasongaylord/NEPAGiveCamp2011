<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    NEPA GiveCamp :: Sponsorship Opportunities
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="f_body_content_right">
        <div class="f_body_content_right_content">
            <div class="heading3">Sponsorship Prospectus</div>
            <p>
                <a href="/download/Prospectus.pdf" target="_blank"><img src="/Content/Images/page_white_acrobat.png" alt="PDF" /> Sponsor and Volunteer Prospectus</a>
            </p>
            <div class="heading3">What We'll Need From You</div>
            <p>
            Below is a list of items we'll need from you as a sponsor:
            </p>

            <ul>
                <li>Your logo on a transparent background for our website. The desired size is 130px by 65px.</li>
                <li>Your logo on a white background for print. The logo should be in a 4" by 4" CMYK format.</li>
            </ul>
        </div>
    </div>
    <div class="f_body_content_left">
        <div class="heading1">Sponsorship Opportunities</div>

        <div class="easyreading">
		<p>
		As with all Give Camps, the NEPA GiveCamp is a volunteer event. Since we have no money 
        and no money will be collected, we need some help. We're looking for sponsors to 
        help out with food, cash, door prizes, product licenses, and more!
        </p>

        <p>
        We'll be posting more details about sponsorship at a later date, but in the meantime,
        if you are interested, please feel free to email the NEPA GiveCamp organizer, Jason 
        Gaylord, at:
        </p>

        <blockquote>
            jgaylord [at] nepagivecamp.org
        </blockquote> 
        
        <p>
        We'd like to thank you in advance for your participation and support of Northeastern 
        Pennsylvania and the surrounding communities!
		</p>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navSponsor").addClass("current_page_item");
        });
    </script>
</asp:Content>