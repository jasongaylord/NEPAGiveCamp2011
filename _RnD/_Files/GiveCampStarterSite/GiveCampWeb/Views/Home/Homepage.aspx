<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Columbus Give Camp
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="HeadScriptRegion" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function() {
            $("#navHome").addClass("current_page_item");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<h1 class="pagetitle">Columbus GiveCamp 2009</h1>
		<div class="post">
			<h2 class="title">Dates Announced</h2>
			<div class="entry">
				<p>This year, GiveCamp will take place July 17, 18, 19</p>
				<p>The event is being held at the Quick Solutions Facility at
				    <a href="http://www.bing.com/maps/default.aspx?where1=440+Polaris+Parkway+Westerville,+OH+43082&FORM=LMIEMN" target="_blank">440 Polaris Parkway Westerville, OH 43082.</a>
				</p>
			</div>
			<p class="meta"></p>
		</div>
		
		<div class="post">
			<h2 class="title">Looking for Charities and Volunteers</h2>
			<div class="entry">
				<p>We are currently accepting applications for charities to 
				submit work proposals through our website.  Please see the
				Charity section of this web site to submit your proposal.
				<em>Deadline for proposals is July 8th</em>
				</p>
				<p>
				If you are a developer/designer/project manager looking to make
				a difference and use your skills to assist others, this is the 
				place to be July 17,18, 19, 2009!  Please visit the Volunteer 
				section to get signed up!
				</p>
			</div>
			<p class="meta"></p>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideBar" runat="server">
		<ul>
			<li>
				<h2>GiveCamp Resources</h2>
				<ul>
					<li><a href="http://www.givecamp.org" target="_blank">GiveCamp Main Site</a></li>
					<li><a href="http://www.lansinggivecamp.org/" target="_blank">Lansing GiveCamp</a></li>
					<li><a href="http://www.michigangivecamp.org/" target="_blank">Michigan GiveCamp</a></li>
				</ul>
			</li>
		</ul>
</asp:Content>
