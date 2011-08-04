<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NepaGiveCamp.Controllers.CharitySignUpViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Charity Proposal Form
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="heading1">Charity Proposal Form</div>

    <div class="easyreading">
		<p>Please fill out this form to give us an idea of the work you are looking
		to have accomplished.  Please keep in mind this work should be scoped so that
		it can be completed over the span of a weekend.</p>
		
        <p><em>* = Required field</em></p>
		
		<div class="entry">

        <% using (Html.BeginForm("SignUp", "Charity", FormMethod.Post, new { id = "proposalForm" }))
           { %>
            <fieldset>
                <legend>Contact Information</legend>
                <div class="rowwrap">
                    <div class="label"><label for="CharityName">*Charity Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("CharityName")%>
                        <span class="formException"><%= Html.ValidationMessage("CharityName")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="BackgroundInformation">*Background Information [*** Please include email & phone number ***]:</label></div>
                    <div class="input">
                        <%= Html.TextArea("BackgroundInformation",new {rows="5", cols="30"} )%>
                        <span class="formException"><%= Html.ValidationMessage("BackgroundInformation")%></span>
                    </div>
                </div>   
            </fieldset>

            <fieldset>
                <legend>Proposal Information</legend>
                <div class="rowwrap">
                    <div class="label"><label for="WorkRequested">*Work Requested:</label></div>
                    <div class="input">
                        <%= Html.TextArea("WorkRequested",new {rows="5", cols="30"} )%>
                        <span class="formException"><%= Html.ValidationMessage("WorkRequested")%></span>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Existing Technologies [if work is an enhancement to existing application]</legend>
                <div class="rowwrap">
                    <div class="label">Select from technologies below:</div>
                    <div class="input">
                        <% 
                            int indexer = 0;
                            foreach (var r in Model.InfrastructureTechnologies) {

                                indexer++;         
                        %>
                            <div class="checkBoxListItem">
                                <%= Html.CheckBox("Infrastructure." + r.Value, r.Selected)%>
                                <label for="<%="Infrastructure." + r.Value %>"><%=r.Text %></label> 
                            </div>
                        <% 
                            if (indexer % 3 == 0)
                                Response.Write("<br/>");
                            } %>
                        <span class="formException"><%= Html.ValidationMessage("Infrastructure")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="OtherInfrastructure">Other/Comments for Infrastructure Information:</label></div>
                    <div class="input">
                        <%= Html.TextArea("OtherInfrastructure",new {rows="5", cols="30"} )%>
                        <span class="formException"><%= Html.ValidationMessage("OtherInfrastructure")%></span>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Existing Support Personnel Skill Set [if known]</legend>
               
                <div class="rowwrap">
                    <div class="label">Select from technologies below:</div>
                    <div class="input">
                        <% 
                            indexer = 0;
                            foreach (var r in Model.SupportSkills) {

                                indexer++;         
                        %>
                            <div class="checkBoxListItem">
                                <%= Html.CheckBox("Support." + r.Value, r.Selected)%>
                                <label for="<%="Support." + r.Value %>"><%=r.Text %></label> 
                            </div>
                        <% 
                            if (indexer % 3 == 0)
                                Response.Write("<br/>");
                            } %>
                        <span class="formException"><%= Html.ValidationMessage("Support")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="OtherSupportSkills">Other/Comments for Support Skills:</label></div>
                    <div class="input">
                        <%= Html.TextArea("OtherSupportSkills",new {rows="5", cols="30"} )%>
                        <span class="formException"><%= Html.ValidationMessage("OtherSupportSkills")%></span>
                    </div>
                </div>
            </fieldset>
                

            <div class="submit">
                <input type="submit" value="Submit Proposal" />
            </div>

        <% } %>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navCharity").addClass("current_page_item");
        });
    </script>
</asp:Content>