<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createEvent.aspx.cs" Inherits="AlumniUI.createEvent" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"/>


<!DOCTYPE html>
<%--<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />--%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />

<%--JQuery file to use jquery functions--%>
<script src="jquery-1.11.3.min.js"></script>

<%--jquery script for country, state, timezone picker--%>
<link href="BootstrapPickerMaster/dist/css/bootstrap-formhelpers.min.css" rel="stylesheet" />
<script src="BootstrapPickerMaster/dist/js/bootstrap-formhelpers.min.js"></script>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link href="menubar.css" rel="stylesheet" />

<%--for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<%--script to add and remove textboxes using checkboxes--%>
<script>
$(document).ready(initialize);

function initialize() {
    $("input#txtGoal").hide();
    $("input#txtVenue").hide();
   $(":checkbox").click(countChecked);    
}


function countChecked() {
    if ($("input#chkGoal").is(':checked')) {
        $("input#txtGoal").show();                
    }
    else {
        $("input#txtGoal").hide(); 
    }

    if ($("input#chkVenue").is(':checked')) {
        $("input#txtVenue").show();
    }
    else {
        $("input#txtVenue").hide();
    }
}
    </script>
<%--end of script--%>

<body>
    <form id="form1" runat="server">
        <%--code for menu bar--%>

        <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="auto-style1" href="#">Alumni Event Calendar</a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-menubuilder">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="mainpage.aspx">Home</a>
                        </li>
                        <li class="active"><a href="createEvent.aspx">Create Events</a>
                        </li>
                        <%--<li><a href="createTask.aspx">Manage Tasks</a>
                </li>--%>
                        <li><a href="viewEvent.aspx">View Events</a>
                        </li>
                        <li><a href="createReport.aspx">Create Report</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="container">
            <h4 class="auto-style3">Information About Creating Event</h4>
            <h4>This page is to Add a New Event. Please fill in these fields below to create a new new event. Then press the Next button to go to the Sub-Event page.</h4>

            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Event Information</a>
                    </div>

                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Name<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtEventName" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label">Event Start Time<span style="color: red">*</span></label>
                                    <%--<input class="form-control" type="text" id="starttimepicker" />--%>
                                    <div class="bfh-timepicker" data-mode="12h" id="starttimepicker">
</div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Start Date<span style="color: red">*</span></label>
                                    <%--<input class="form-control" type="text" id="datepicker" />--%>
                                    <div class="bfh-datepicker" id="startdatepicker">
</div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Event Owner<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtEventOwner" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label">Event End Time<span style="color: red">*</span></label>
                                    <%--<input class="form-control" type="text" id="endtimepicker" />--%>
                                    <div class="bfh-timepicker" data-mode="12h" id="endtimepicker">
</div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label">Event End Date<span style="color: red">*</span></label>
                                    <%--<input class="form-control" type="text" id="datepicker2" />--%>
                                    <div class="bfh-datepicker" id="enddatepicker">
</div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Street Address 1<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtStreetAddress1" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Street Address 2<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtStreetAddress2" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Building Name<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtBuildingName" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Room Number<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtRoomNumber" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">City<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">State<span style="color: red">*</span></label>
                                    <div class="bfh-selectbox bfh-states" id="txtState" data-country="US" data-state="PA">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Zip Code<span style="color: red">*</span></label>
                                    <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control input-md" TabIndex="1"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Country<span style="color: red">*</span></label>
                                    <%--<select class="form-control bfh-countries" data-country="US"></select>--%>
                                    <div class="bfh-selectbox bfh-countries" id="txtCountry" data-country="US" data-flags="true">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Time Zone<span style="color: red">*</span></label>
                                    <div id="countries_timezones2" class="bfh-selectbox bfh-countries" data-country="US">
                                    </div>
    <%-- <br>--%>
                                    <div class="bfh-selectbox bfh-timezones" id="txttimezone" data-country="countries_timezones2">
                                    </div>
                                </div>
                            </div>
                               
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-4">
                            </div> 


                        </div>
                    </div>
                </div>
            </div>

            <div class="panel-group" id="#eventAccordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#eventAccordion" href="#eventCollapse">Event Details</a>
                    </div>
                    <div id="eventCollapse" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <%--Event Overview--%>

                            <div class="col-md-4">
                                <div class="pannel-group" id="accordion2">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse" data-parent="#accordion2" href="#collapsetwo">Event Overview</a>

                                        </div>
                                        <div id="collapsetwo" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkGoal"  value="" />Goal</label>
                                                    <input id="txtGoal" type="text" />
                                                </div>
   

                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="chkVenue" value=""/>Venue</label>
                                                    <input id="txtVenue" type="text" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Event URL</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Fees</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Attendee capactiy</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Pre & Post Event Registration Numbers</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Planning timeline</label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%--Budget--%>
                            <div class="col-md-4">
                                <div class="pannel-group" id="accordion3">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse" data-parent="#accordion3" href="#collapseThree">Budget</a>

                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Anticipated</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Actual</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Overall cost per attendee</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Contra</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Net Profit/Expense</label>
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="pannel-group" id="accordion4">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse" data-parent="#accordion4" href="#collapseFour">Participants / Banner ID #</a>

                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Sponsors</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Co-sponsors</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Targeted Audience</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Event staff</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Program Participants</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Alumni Speaker(s)</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Faculty speaker(s)</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Panel members</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Tour operator</label>
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <%--Marketing panel--%>
                            <div class="col-md-4">
                                <div class="pannel-group" id="accordion5">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse" data-parent="#accordion5" href="#collapseFive">Marketing & Communication</a>

                                        </div>
                                        <div id="collapseFive" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Pre-Event correspondence</label>
                                                </div>
                                                <%--sub fields?--%>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Post-Event correspondence</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Email blast</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Event Listing</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Event calendar</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Social Media</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">University Calendar</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Flyers</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Posters</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Postcards</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Electronic display</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Signage</label>
                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%--next row--%>
                            <div class="col-md-4">
                                <div class="pannel-group" id="accordion6">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse" data-parent="#accordion6" href="#collapseSix">PreEvent Logistics</a>

                                        </div>
                                        <div id="collapseSix" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Catering</label>
                                                </div>

                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Facilities</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Technology Support</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">A/V</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Decortations</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Photography</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Technology</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Giveaways</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Travel arrangements</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Parking</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Security</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Registrations Items</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Supplies</label>
                                                </div>



                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--post event panel--%>
                            <div class="col-md-4">
                                <div class="pannel-group" id="accordion7">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">

                                            <a data-toggle="collapse" data-parent="#accordion7" href="#collapseSeven">Post Event Activities</a>

                                        </div>
                                        <div id="collapseSeven" class="panel-collapse collapse out">
                                            <div class="panel-body">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Debrief meeting</label>
                                                </div>

                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Notes</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Enter data into Event Manager</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Enter data into Banner</label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">Program Evaluation</label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <%--Adding a Sub Event Panel--%>
            <div class="pannel-group" id="accordion8">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <asp:LinkButton ID="btnAddSubEvent" runat="server" class="glyphicon glyphicon-plus pull-right"></asp:LinkButton>
                        <a data-toggle="collapse" data-parent="#accordion8" href="#collapseEight">Sub Event</a>
                    </div>
                    <div id="collapseEight" class="panel-collapse collapse out">
                        <div class="panel-body">
                            <%--Sub Event Detail Panel Starts--%>
                            <div class="pannel-group" id="accordion9">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a data-toggle="collapse" data-parent="#accordion9" href="#collapseNine">Sub Event Details</a>
                                    </div>
                                    <div id="collapseNine" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">Sub Event Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubEventName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Start Date<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Start Time<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtStartTime" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Registration URL<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtRegistrationUrl" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">End Date<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">End Time<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtEndTime" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--Sub Event Detail Panel Ends--%>

                            <%--Sub Event Owner Panel Starts--%>
                            <div class="pannel-group" id="accordion10">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <asp:LinkButton ID="btnAddAdditionalOwners" runat="server" class="glyphicon glyphicon-plus pull-right"></asp:LinkButton>
                                        <a data-toggle="collapse" data-parent="#accordion10" href="#collapseTen">Sub Event Owner</a>
                                    </div>
                                    <div id="collapseTen" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">Owner First Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtOwnerFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Owner Last Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtOwnerLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">E-mail<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--Sub Event Owner Panel Ends--%>

                            <%--Sub Event Location Panel Starts--%>
                            <div class="pannel-group" id="accordion11">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <asp:LinkButton ID="btnAddSubEventLocation" runat="server" class="glyphicon glyphicon-plus pull-right"></asp:LinkButton>
                                        <a data-toggle="collapse" data-parent="#accordion11" href="#collapseEleven">Sub Event Location</a>
                                    </div>
                                    <div id="collapseEleven" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">Street Address 1<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubStreetAddress1" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Street Address 2<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubStreetAddress2" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">City<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubCity" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">State<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubState" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Zip Code<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubZipCode" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Building Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubBuildingName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Room Number<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSubRoomNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--Sub Event Location Panel Ends--%>

                            <%--Sub Event Sponsor Panel Starts--%>
                            <div class="pannel-group" id="accordion12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a data-toggle="collapse" data-parent="#accordion12" href="#collapseTwelve">Sub Event Sponsors</a>
                                    </div>
                                    <div id="collapseTwelve" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">Sponsor Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Email<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-2">
                                                <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                                <asp:RadioButtonList ID="rdbSponsorUniversityPartner" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="col-md-2">
                                                <label class="control-label">Add Sponsor</label><br />
                                                <asp:LinkButton ID="btnAddSponsor" runat="server" class="glyphicon glyphicon-plus"></asp:LinkButton>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Co-Sponsor Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtCoSponsorName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Email<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtCoSponsorEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-2">
                                                <label class="control-label">University Partner?<span style="color: red">*</span></label>
                                                <asp:RadioButtonList ID="rbnCoSponsorUniversityPartner" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="col-md-2">
                                                <label class="control-label">Add Co-Sponsor</label><br />
                                                <asp:LinkButton ID="btnAddCoSponsor" runat="server" class="glyphicon glyphicon-plus"></asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--Sub Event Sponsor Panel Ends--%>

                            <%--Sub Event Panelist Panel Starts--%>
                            <div class="pannel-group" id="accordion13">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <asp:LinkButton ID="btnAddPanelist" runat="server" class="glyphicon glyphicon-plus pull-right"></asp:LinkButton>
                                        <a data-toggle="collapse" data-parent="#accordion13" href="#collapseThirteen">Sub Event Panelists</a>
                                    </div>
                                    <div id="collapseThirteen" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">First Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtPanelistFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Last Name<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtPanelistLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Email<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtPanelistEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Phone Number<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtPanelistPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="col-md-4">
                                                <label class="control-label">Role<span style="color: red">*</span></label>
                                                <asp:TextBox ID="txtPanelistRole" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--Sub Event Panelist Panel Ends--%>
                        </div>
                    </div>
                </div>
            </div>


            <%--Adding Task Panel--%>
            <div class="pannel-group" id="accordion14">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion14" href="#collapseFourteen">Task</a>
                    </div>
                    <div id="collapseFourteen" class="panel-collapse collapse out">
                        <div class="panel-body">

                            <%--Start Panel for Catering--%>
                            <div class="pannel-group" id="accordion15">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a data-toggle="collapse" data-parent="#accordion15" href="#collapseFifteen">Catering</a>
                                    </div>
                                    <div id="collapseFifteen" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">Order Pizza</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="chkPizza" runat="server" /><br />
                                                <label class="control-label">Order Drinks</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="chkDrinks" runat="server" /><br />
                                                <label class="control-label">Order Tables</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="chkTables" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--End Panel For Catering--%>

                            <%--Start Panel for Entertainment--%>
                            <div class="pannel-group" id="accordion16">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <a data-toggle="collapse" data-parent="#accordion16" href="#collapseSixteen">Entertainment</a>
                                    </div>
                                    <div id="collapseSixteen" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <div class="col-md-4">
                                                <label class="control-label">Get Music</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox1" runat="server" /><br />
                                                <label class="control-label">Contact Guest Speaker</label>&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox2" runat="server" /><br />
                                                <label class="control-label">Get Microphones</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                <asp:CheckBox ID="CheckBox3" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--End Panel For Entertainment--%>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%--div for containor--%>



        <%--used for date picker--%> <%--Don't move these block of code. It must be here for it to work--%>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" />
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css" />
        <link href="jquery.timepicker.css" rel="stylesheet" />
        <script src="jquery.timepicker.js"></script>
        <script src="jquery.timepicker.min.js"></script>
        <%--script for date picker--%>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });

            $(function () {
                $("#datepicker2").datepicker();
            });
        </script>
        <%--script for time picker--%>
        <script>
            $(function () {
                $('#starttimepicker').timepicker();
            });

            $(function () {
                $('#endtimepicker').timepicker();
            });
        </script>






        <%--   code for the panel     --%>
        <%--<div class="panel panel-default">
                                <div class="panel-heading">
                                         
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Miscellaneous</a>
                                        
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <div class="row">
											<div class="col-sm-3">
												<div class="form-group">
													<label class="control-label">Event Registration URL</label>
													<input class="form-control" type="text">
												</div>
											</div>
                                            <div class="col-sm-3">
												<div class="form-group">
													<label class="control-label">Projected Event Attendance</label>
													<input class="form-control" type="text">
												</div>
											</div>
										</div>
                                        <div class="row">
								        <div class="col-sm-3">
												<div class="form-group">
													<label class="control-label">Comments</label>
													<input class="form-control" type="text">
												</div>
											</div>
										</div>
                                        </div>
                                        </div>
                       </div>
                       </div>
            </div> --%>

        <a href="CreateSubEvent.aspx" class="btn btn-primary btn-Sigin" data-toggle="popover" data-placement="right" data-content="Click Next to Create a SubEvent for your Event." title="" data-original-title="Popover on right" style="font-size: large; height: 43px;">
            <div class="text-center">
                <strong>Add Sub Event</strong>
            </div>
        </a>




    </form>

</body>





<%--footer for pages--%>
<footer id="#footer">
    <div class="footer-wrap top">
        <div class="region region-footer-top">

            <div id="block-block-4" class="block block-block">


                <div class="content">
                    <div itemscope="" itemtype="http://schema.org/EducationalOrganization">
                        <p><span class="h4" itemprop="name">Temple University</span></p>
                        <div itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
                            <p>
                                <span itemprop="streetAddress">1801 N. Broad Street</span><br />
                                <span itemprop="addressLocality">Philadelphia</span>, <span itemprop="addressRegion">PA</span> <span itemprop="postalCode">19122</span> <span class="hidden" itemprop="addressCountry">USA<br />
                                    (215) 204-7000</span>
                            </p>
                        </div>
                    </div>
                    <p></p>
                </div>
            </div>

            <div id="block-menu-menu-info-links" class="block block-menu">


                <div class="content">
                    <ul class="menu">
                        <li class="first leaf"><a href="https://directory.temple.edu/" class="icons-directory">Cherry and White Directory</a></li>
                        <li class="leaf"><a href="/maps-and-directions" class="icons-map">Maps, Directions &amp; Accommodations</a></li>
                        <li class="last leaf"><a href="/contact" class="icons-phone">Contact</a></li>
                    </ul>
                </div>
            </div>

            <div id="block-block-6" class="block block-block">


                <div class="content">
                    <ul>
                        <li class="first"><a class="icons-google icon-link" href="https://plus.google.com/+templeuniversity" target="_blank">Google Plus</a></li>
                        <li><a class="icons-facebook icon-link" href="http://www.facebook.com/templeu" target="_blank">Facebook</a></li>
                        <li class="third"><a class="icons-twitter icon-link" href="http://twitter.com/templeuniv" target="_blank">Twitter</a></li>
                        <li><a class="icons-linkedin icon-link" href="http://us.linkedin.com/company/temple-university" target="_blank">LinkedIn.com</a></li>
                        <li><a class="icons-youtube icon-link" href="http://www.youtube.com/TempleUniversity" target="_blank">YouTube</a></li>
                        <li class="last"><a class="icons-instagram icon-link" href="http://instagram.com/templeuniv" target="_blank">Instagram</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-wrap bottom">
        <div class="region region-footer-bottom">

            <div id="block-menu-menu-tertiary-links" class="block block-menu">


                <div class="content">
                    <ul class="menu">
                        <li class="first leaf"><a href="https://tuportal.temple.edu">TUPortal</a></li>
                        <li class="leaf"><a href="https://tumail.temple.edu/">TUMail</a></li>
                        <li class="leaf"><a href="/sitemap">Sitemap</a></li>
                        <li class="leaf"><a href="/about/temple-university-accessibility-statement">Accessibility</a></li>
                        <li class="leaf"><a href="http://policies.temple.edu/">Policies</a></li>
                        <li class="leaf"><a href="http://www.temple.edu/hr/departments/employment/jobs_within.htm">Careers at Temple</a></li>
                        <li class="last leaf"><a href="http://www.temple.edu/safety/">Safety</a></li>
                    </ul>
                </div>
            </div>

            <div id="block-block-9" class="block block-block">


                <div class="content">
                    <p>Copyright 2012-2015, Temple University. All rights reserved.</p>
                </div>
            </div>
        </div>
    </div>
</footer>




