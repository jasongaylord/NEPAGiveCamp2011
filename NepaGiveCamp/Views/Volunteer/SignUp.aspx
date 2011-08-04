<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NepaGiveCamp.Controllers.SignUpViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	NEPA GiveCamp :: Volunteer Sign-Up
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="heading1">Volunteer Sign-Up</div>

    <div class="easyreading">
		<p>
        To volunteer for Give Camp, please fill out this form in it's entirety.  Any
        additional information about yourself can be included in the comments box at the
        bottom of the form.  Thank you for participating in Give Camp!</p>
		
        <p><em>* = Required field</em></p>
		
		<div class="entry">

        <% using (Html.BeginForm("SignUp", "Volunteer", FormMethod.Post, new { id = "signUpForm" }))
           { %>
            <fieldset>
                <legend>Contact Information</legend>
                <div class="rowwrap">
                    <div class="label"><label for="FirstName">*First Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("FirstName")%>
                        <span class="formException"><%= Html.ValidationMessage("FirstName")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="LastName">*Last Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("LastName")%>
                        <span class="formException"><%= Html.ValidationMessage("LastName")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="TeamName">Team Name:</label></div>
                    <div class="input">
                        <%= Html.TextBox("TeamName")%>
                        <span class="formException"><%= Html.ValidationMessage("TeamName")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Email">*Email:</label></div>
                    <div class="input">
                        <%= Html.TextBox("EmailAddress")%>
                        <span class="formException"><%= Html.ValidationMessage("EmailAddress")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Phone">*Phone:</label></div>
                    <div class="input">
                        <%= Html.TextBox("PhoneNumber")%>
                        <span class="formException"><%= Html.ValidationMessage("PhoneNumber")%></span>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Experience Information</legend>
                <div class="rowwrap">
                    <div class="label">*I am primarily a:</div>
                    <div class="input">
                    
                    <% 
                        int indexer = 0;
                        foreach (var r in Model.JobRoles) {
                            indexer++;
                    
                    %>
                        <div class="checkBoxListItem">
                        <%= Html.CheckBox("JobType." + r.Value, r.Selected)%>
                        <label for="<%="JobType." + r.Value %>"><%=r.Text %></label>
                        </div>
                    <% 
                        if (indexer % 3 == 0)
                            Response.Write("<br/>");
                        
                        
                        } %>
                        <span class="formException"><%= Html.ValidationMessage("Roles")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label">*Are you a student:</div>
                    <div class="input">
                        <%=Html.RadioButton("Student","true") %><label for="Studenttrue">Yes</label>
                        <%=Html.RadioButton("Student","false") %><label for="Studentfalse">No</label>
                        <span class="formException"><%= Html.ValidationMessage("Student")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="DayJob">*Your day job:</label>(e.g. write ASP.NET code)</div>
                    <div class="input">
                        <%= Html.TextBox("JobDescription")%>
                        <span class="formException"><%= Html.ValidationMessage("JobDescription")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label">*Technologies you are proficient with:</div>
                    <div class="input">
                        <% 
                            indexer = 0;
                            foreach (var r in Model.Technologies) {

                                indexer++;         
                        %>
                            <div class="checkBoxListItem">
                            <%= Html.CheckBox("Technology." + r.Value, r.Selected)%>
                            <label for="<%="Technology." + r.Value %>"><%=r.Text %></label> 
                            </div>
                        <% 
                            if (indexer % 3 == 0)
                                Response.Write("<br/>");
                            } %>
                        <span class="formException"><%= Html.ValidationMessage("Technologies")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="ExperienceLevel">*Experience Level:</label></div>
                    <div class="input">
                        <%= Html.DropDownList("ExperienceLevelID", Model.Experience)%>
                        <span class="formException"><%= Html.ValidationMessage("ExperienceLevelID")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="ExperienceYears">*Years of Development Experience:</label></div>
                    <div class="input">
                        <%= Html.TextBox("YearsOfExperience")%>
                        <span class="formException"><%= Html.ValidationMessage("YearsOfExperience")%></span>
                    </div>
                </div>
            </fieldset>

            <fieldset>
                <legend>Optional Information</legend>
                <div class="rowwrap">
                    <div class="label"><label for="Dietary">Dietary Needs:</label></div>
                    <div class="input">
                        <%= Html.TextBox("DietaryNeeds")%>
                        <span class="formException"><%= Html.ValidationMessage("DietaryNeeds")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Twitter">Twitter account:</label></div>
                    <div class="input">
                        <%= Html.TextBox("TwitterHandle")%>
                        <span class="formException"><%= Html.ValidationMessage("TwitterHandle")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="SpareLaptop">Do you have a laptop to bring?:</label></div>
                    <div class="input">
                        <%= Html.CheckBox("HasLaptop")%><label for="SpareLaptop">Yes</label>
                        <span class="formException"><%= Html.ValidationMessage("HasLaptop")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="SpareLaptop">Can you bring a spare laptop?:</label></div>
                    <div class="input">
                        <%= Html.CheckBox("HasExtraLaptop")%><label for="SpareLaptop">Yes</label>
                        <span class="formException"><%= Html.ValidationMessage("HasExtraLaptop")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label">*T-Shirt Size:</div>
                    <div class="input">
                        <%= Html.DropDownList("TShirtSize", Model.TShirtSizes)%>
                        <span class="formException"><%= Html.ValidationMessage("TShirtSize")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Bio">Brief Bio:</label></div>
                    <div class="input">
                        <%= Html.TextArea("Bio",new {rows="5", cols="30"} )%>
                        <span class="formException"><%= Html.ValidationMessage("Bio")%></span>
                    </div>
                </div>
                <div class="rowwrap">
                    <div class="label"><label for="Comments">Comments:</label></div>
                    <div class="input">
                        <%= Html.TextArea("Comments", new { rows = "5", cols = "30" })%>
                        <span class="formException"><%= Html.ValidationMessage("Comments")%></span>
                    </div>
                </div>
            </fieldset>

            <div class="submit">
                <input type="submit" value="Sign Up" />
            </div>

        <% } %>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadScriptContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#navVolunteer").addClass("current_page_item");
        });
    </script>
</asp:Content>