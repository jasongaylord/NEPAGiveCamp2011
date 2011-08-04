<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Our Schedule
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="f_body_content_right">
        <div class="f_body_content_right_content">
            <div class="heading3">Critical Information</div>
            <p>
            <strong>Where</strong><br />
            Misericordia University<br />
            301 Lake Street<br />
            Dallas, PA 18612<br /><br />

            Insalaco Hall<br />
            Room 18 - Huntzinger<br />
            Room 19 - Alden
            </p>
            
            <p>
            <strong>When</strong><br />
            Fri, Jan 14 ~ 2:30pm-Midnight<br />
            Sat, Jan 15 ~ 7am-Midnight<br />
            Sun, Jan 16 ~ 7am-4:30pm
            </p>

            <p>
            <strong>Contact</strong><br />
            Phone: 302-256-9076<br />
            Text: <a href="mailto:3022569076@vtext.com">302 256 9076 @ vtext.com</a><br />
            Twitter: <a href="http://twitter.com/nepagivecamp">@NEPAGiveCamp</a>
            </p>
        </div>
    </div>
    <div class="f_body_content_left">
        <div class="heading1">NEPA GiveCamp 2011 Schedule</div>

        <div class="heading2">Friday, January 14th, 2011</div>
        
        <table border="0">
            <tr>
                <td class="scheduleTime">2:30 PM</td>
                <td class="scheduleDesc">Attendee Registration Begins</td>
            </tr>
            <tr>
                <td class="scheduleTime">3:30 PM</td>
                <td class="scheduleDesc">Opening Ceremony Begins<br />
                <ul>
                    <li>Introduction of GiveCamp</li>
                    <li>Sponsor Acknowledgement</li>
                    <li>A Word from Misericordia University President, Michael A. MacDowell</li>
                    <li>Review event rules - "What Happens at GiveCamp, Stays at GiveCamp"</li>
                    <li>Charity Recognition and Introduction</li>
                    <li>Developer Introductions - Name, experience, and 3 words about you</li>
                    <li>Press and Media rules</li>
                    <li>Finalizing the Formation of Developer Teams</li>
                </ul>
                </td>
            </tr>
            <tr>
                <td class="scheduleTime">4:30 PM</td>
                <td class="scheduleDesc">Begin Coding!</td>
            </tr>
            <tr>
                <td class="scheduleTime">7:00 PM</td>
                <td class="scheduleDesc">Food sponsored by Domino's Pizza® and Coca-Cola</td>
            </tr>
            <tr>
                <td class="scheduleTime">7:00 PM</td>
                <td class="scheduleDesc">Training - Social Media for NPOs by Giovanni Gallucci (2 hrs)</td>
            </tr>
            <tr>
                <td class="scheduleTime">9:30 PM</td>
                <td class="scheduleDesc">Training - Sitefinity for Developers by Gabe Sumner (1 1/2 hrs)</td>
            </tr>
            <tr>
                <td class="scheduleTime">Midnight</td>
                <td class="scheduleDesc">Coding halts for the evening</td>
            </tr>
        </table><br />

        <div class="heading2">Saturday, January 15th, 2011</div>

        <table border="0">
            <tr>
                <td class="scheduleTime">7:00 AM</td>
                <td class="scheduleDesc">Coding resumes with coffee sponsored by Green Mountain Coffee Roasters; Breakfast sponsored by Kentico.</td>
            </tr>
            <tr>
                <td class="scheduleTime">9:00 AM</td>
                <td class="scheduleDesc">Training - .NET Nuke for Developers by Jason Kergosien (1 hr 15 min)</td>
            </tr>
            <tr>
                <td class="scheduleTime">10:30 AM</td>
                <td class="scheduleDesc">Training - Mojo Portal for Developers by Todd Stone (1 hr 15 min)</td>
            </tr>
            <tr>
                <td class="scheduleTime">Noon</td>
                <td class="scheduleDesc">Lunch sponsored by Cisco Systems in NEPA.</td>
            </tr>
            <tr>
                <td class="scheduleTime">1:00 PM</td>
                <td class="scheduleDesc">Training - Sitefinity for NPOs by Gabe Sumner (1 hr 15 min)</td>
            </tr>
            <tr>
                <td class="scheduleTime">2:00 PM</td>
                <td class="scheduleDesc">Status check-in with NEPA GiveCamp crew.</td>
            </tr>
            <tr>
                <td class="scheduleTime">6:00 PM</td>
                <td class="scheduleDesc">Dinner sponsored by Fire and Ice on Toby Creek, DevExpress, and TechSmith.</td>
            </tr>
            <tr>
                <td class="scheduleTime">Midnight</td>
                <td class="scheduleDesc">Coding halts for the evening</td>
            </tr>
        </table><br />

        <div class="heading2">Sunday, January 16th, 2011</div>
        
        <table border="0">
            <tr>
                <td class="scheduleTime">7:00 AM</td>
                <td class="scheduleDesc">Coding resumes with coffee sponsored by Green Mountain Coffee Roasters; Breakfast sponsored by Verizon Wireless from NEPA</td>
            </tr>
            <tr>
                <td class="scheduleTime">12:30 AM</td>
                <td class="scheduleDesc">Lunch sponsored by Domino's Pizza® and Coca-Cola</td>
            </tr>
            <tr>
                <td class="scheduleTime">2:00 PM</td>
                <td class="scheduleDesc">Final code check-in and finalization of projects.</td>
            </tr>
            <tr>
                <td class="scheduleTime">2:15 PM</td>
                <td class="scheduleDesc">Training provided by volunteers for charities.</td>
            </tr>
            <tr>
                <td class="scheduleTime">3:00 PM</td>
                <td class="scheduleDesc">Presentation of projects to all volunteers and charities. Following the presentation:
                    <ul>
                        <li>Volunteer raffle</li>
                        <li>Charity thank-yous</li>
                    </ul>
                </td>
            </tr>
        </table><br />

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navContact").addClass("current_page_item");
        });
    </script>
</asp:Content>