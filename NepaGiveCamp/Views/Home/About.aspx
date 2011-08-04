<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: About our Event
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#navAbout").addClass("current_page_item");
        });
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
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
        <div class="heading1">About</div>

        <div class="easyreading">
		<p>
		GiveCamp is a weekend-long event where software developers, designers, 
		and database administrators donate their time to create custom software 
		for non-profit organizations. This custom software could be a new website 
		for the nonprofit organization, a small data-collection application to 
		keep track of members, or a application for the Red Cross that 
		automatically emails a blood donor three months after they’ve donated 
		blood to remind them that they are now eligible to donate again. The only 
		limitation is that the project should be scoped to be able to be completed 
		in a weekend. 
		</p>
			    
		<p>
        During GiveCamp, developers are welcome to go home in the evenings or 
        camp out all weekend long. There are usually food and drink provided 
        at the event. There are sometimes even game systems set up for when you 
        and your need a little break!  Overall, it’s a great opportunity for 
        people to work together, developing new friendships, and doing something 
        important for their community.</p>
                
        <p>
        At GiveCamp, there is an expectation of "What Happens at GiveCamp, Stays 
        at GiveCamp." Therefore, all source code must be turned over to the 
        charities at the end of the weekend (developers cannot ask for payment) 
        and the charities are responsible for maintaining the code moving forward 
        (charities cannot expect the developers to maintain the codebase). 
        </p>

        <p>
        So, if you're interested in volunteering or asking for help, be sure to
        let us know by filling out the appropriate form using the links above.
        </p>
        </div>
    </div>
</asp:Content>