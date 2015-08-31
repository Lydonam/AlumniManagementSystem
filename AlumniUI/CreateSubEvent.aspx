<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateSubEvent.aspx.cs" Inherits="AlumniUI.CreateSubEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link href="menubar.css" rel="stylesheet" />
    <script>
             $(function () {
                 $("#datepicker").datepicker();
             });
     </script>

    <%--style sheet reference for footer--%>
    <link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

    <title>Sub Events</title>
    <link rel="stylesheet" href="http://localhost:49255/code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css"/>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css"/>
    <link rel="stylesheet" href="ButtonColor.css"/>
        
<script type="text/javascript">
    $(document).ready(function(){
        $("#myModal").modal('show');
    });
    </script>
   
</head>
<body>
    <%--code for menu bar--%>
    <form id="form1" runat="server">
        <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Alumni Event Calendar     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-menubuilder">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="mainpage.aspx">Home</a>
                        </li>
                        <li class="active"><a href="createEvent.aspx">Create Events</a>
                        </li>
                        <li><a href="createTask.aspx">Create Tasks</a>
                        </li>
                        <li><a href="viewEvent.aspx">View Events</a>
                        </li>
                        <li><a href="createReport.aspx">Create Report</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="col-lg-2">
            <span id="instructions">please fill in the sub event information for this event then hit next to continue creating a sub event</span>
                </div>
        </div>
        <!--- Sub Event Details --->
        <div class="container">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Sub Event Details
                        </a>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <%--row 1--%>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <div class="form-title">
                                            Sub Event Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="subEventName" runat="server" />
                                    </div>
                                        </div>

                                    </div>


                                    <div class="col-sm-3">
                                        <div class="form-title">
                                            Start Date
                                        <div class="controls">
                                            <input type="datetime" class="form-control" id="startDate" runat="server"/>
                                        </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-3">
                                        <div class="form-title">
                                            End Date
                                        <div class="controls">
                                            <input type="text" class="form-control" id="endDate" runat="server" />
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <%--row 2--%>
                            </div>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-2">
                                        <div class="form-title">
                                            Start Time
                                        <div class="controls">
                                            <input type="text" class="form-control" id="startTime" runat="server"/>
                                        </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-2">
                                        <div class="form-title">
                                            End Time
                                        <div class="controls">
                                            <input type="text" class="form-control" id="endTime" runat="server"/>
                                        </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-5">
                                        <div class="form-title">
                                            Registration URL
                                        <div class="controls">
                                            <input type="url" class="form-control" id="subEventURL" runat="server" />
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <%--row 3--%>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-4">
                                        <div class="form-title">
                                            Comments
                                        <div class="controls">
                                            <textarea class="form-control" rows="4" id="comment"></textarea>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />

                <%--owner panel--%>
                <div class="panel-group" id="accordion2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Sub Event Owner
                        </a>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse in ">
                        <div class="panel-body">

                            <%--row 1--%>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <div class="form-title">
                                            Owner First Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="ownerFirstName" runat="server" />
                                    </div>
                                        </div>

                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-title">
                                            Owner Last Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="ownerLastName" runat="server" />
                                    </div>
                                        </div>

                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-title">
                                            E-mail
                                    <div class="controls">
                                        <input type="email" class="form-control" id="Owneremial" runat="server" />
                                    </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <%--row 2--%>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <div class="form-title">
                                            Phone Number
                                        <div class="controls">
                                            <input type="text" class="form-control" id="OwnerphoneNumber" runat="server" />

                                        </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                    </div>
                                    <div class="col-sm-2">
                                        <br />
                                        <asp:Button ID="btnOwners" runat="server" Text="Add additional Owners" OnClick="btnOwners_Click" class="btn btn-primary"/>
                                        <%--<a class="btn btn-primary" id="additionalowners">Add additional owners</a>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>

                <%--location panel--%>
                <div class="panel-group" id="accordion3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion3" href="#collapseThree">Location
                        </a>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse in ">
                        <div class="panel-body">
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-2">
                                        <div class="form-title">
                                            Building Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="buildingName" runat="server" />
                                    </div>
                                        </div>

                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-title">
                                            Room Number
                                    <div class="controls">
                                        <input type="text" class="form-control" id="roomNumber" runat="server"/>
                                    </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-title">
                                            Street Address 1
                                    <div class="controls">
                                        <input type="text" class="form-control" id="address1" runat="server" />
                                    </div>
                                        </div>

                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-title">
                                            Street Address 2
                                    <div class="controls">
                                        <input type="text" class="form-control" id="address2" runat="server" />
                                    </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <br />
                            <%--row 2--%>
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-sm-2">
                                        <div class="form-title">
                                            City
                                    <div class="controls">
                                        <input type="text" class="form-control" id="city" runat="server"/>
                                    </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-title">
                                            State
                                    <div class="controls">
                                        <input type="text" class="form-control" id="state" runat="server" />
                                    </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <div class="form-title">
                                            Zip Code
                                    <div class="controls">
                                        <input type="text" class="form-control" id="ZipCode" runat="server"/>
                                    </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-2">
                                        <br />
                                        <asp:Button ID="btnLocations" runat="server" Text="Add additional locations" OnClick="btnLocations_Click" CssClass="btn btn-primary" />
                                        <%--<a class="btn btn-primary" runat="server" id="a1">Add additional locations</a>--%>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
                <%--sponsor panel--%>
                <div class="panel-group" id="accordion4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion4" href="#collapseFour">Sponsors
                        </a>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse in ">
                        <div class="panel-body">
                            <%--<div class="table-responsive">
                                <table class="table table table-hover" id="sponsorTable">
                                    <thead>
                                        <tr>
                                            <th>Spo</th>
                                        </tr>
                                    </thead>
                                    </table>
                             </div>--%>
                            <div class="row">

                                <div class="col-sm-3">
                                    <div class="form-title">
                                        Sponsor Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="sponsorName" runat="server" />
                                    </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-title">
                                        E-mail
                                    <div class="controls">
                                        <input type="text" class="form-control" id="SponsorEmail" runat="server" />
                                    </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-title">
                                        University partner?
                                     <br />
                                        <div class="radio-inline">
                                            <label>
                                                <input type="radio" name="optradio" runat="server">Yes</label>
                                        </div>
                                        <div class="radio-inline">
                                            <label>
                                                <input type="radio" name="optradio" runat="server">No</label>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <%--row 2--%>
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="form-title">
                                    Co-sponsor Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="txtCosponsorName" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-title">
                                    E-mail
                                    <div class="controls">
                                        <input type="text" class="form-control" id="txtCosponsorEmail" runat="server"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-title">
                                    University partner?
                                     <br />
                                    <div class="radio-inline">
                                        <label>
                                            <input type="radio" name="optradio" runat="server">Yes</label>
                                    </div>
                                    <div class="radio-inline">
                                        <label>
                                            <input type="radio" name="optradio" runat="server">No</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--row 3--%>
                        <div class="row">
                            <div class="col-sm-2">
                                <br />
                                <asp:Button ID="btnSponsors" runat="server" Text="Add additional Sponsors" OnClick="btnSponsor_Click" class="btn btn-primary"/>
                                <%--<a class="btn btn-primary" id="addSponsors">Add additional sponsors</a>--%>
                            </div>
                            <div class="col-sm-2">
                                <br />
                                <asp:Button ID="btnCoSponsor" runat="server" Text="Add additional Co-Sponsors" OnClick="btnCoSponsor_Click"  class="btn btn-primary"/>
                                <%--<a class="btn btn-primary" id="addCoSponsors">Add additional co-sponsors</a>--%>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
                    </div>
                <%--panelist panel--%>
                <div class="panel-group" id="accordion5">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a data-toggle="collapse" data-parent="#accordion5" href="#collapseFive">Panelist
                        </a>
                    </div>
                    <div id="collapseFive" class="panel-collapse collapse in ">
                        <div class="panel-body">
                            <%--row 1--%>
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="form-title">
                                        First Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="panelistFirstName" runat="server" />
                                    </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-title">
                                        Last Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="panelistLastName" runat="server" />
                                    </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-title">
                                        E-mail
                                    <div class="controls">
                                        <input type="text" class="form-control" id="panelistEmail" runat="server" />
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <%--row 2--%>
                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="form-title">
                                        Phone Number
                                    <div class="controls">
                                        <input type="text" class="form-control" id="panelistPhoneNumber" runat="server" />
                                    </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-title">
                                        Role
                                    <div class="controls">
                                        <input type="text" class="form-control" id="penelistRole" runat="server" />
                                    </div>
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <br />
                                    <asp:Button ID="btnPanelist" runat="server" Text="Add additional Panelist" OnClick="btnPanelist_Click" CssClass="btn btn-primary" />
                                    <%--<a class="btn btn-primary" id="addPanelist">Add additional Panelist</a>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

                </div>
            </div>
            <%--next button--%>
            <div class="col-lg-offset-11">
                <a class="btn btn-primary" href="#myModal" id="next" data-toggle="modal">Next</a>
            </div>

            <%--modal--%>

            <div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Confirmation</h4>
            </div>
            <div class="modal-body">
                <p>Do you want to add tasks for this sub event?</p>
                <%--<p class="text-warning"><small>If no your sub event will be saved</small></p>--%>
            </div>
            <div class="modal-footer">
                <a type="button" class="btn btn-default" href="cTask.aspx">no</a>
                <a type="button" class="btn btn-primary" href="eventConfirmation.aspx">yes</a>
            </div>
        </div>
    </div>
</div>

            </div>
        
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

</html>
