<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createReportNew.aspx.cs" Inherits="AlumniUI.createReportNew" %>

<!DOCTYPE html>

<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

<%--For navigation bar color (cherry)--%>
<link href="menubar.css" rel="stylesheet" />

<%--style sheet reference for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%--Code for the navigation Bar--%>
        <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Alumni Event Calendar</a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-menubuilder">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="mainpage.aspx">Home</a>
                        </li>
                        <li><a href="createEvent.aspx">Create Events</a>
                        </li>
                        <li><a href="createTask.aspx">Create Tasks</a>
                        </li>
                        <li><a href="viewEvent.aspx">View Events</a>
                        </li>
                        <li class="active"><a href="createReport.aspx">Create Report</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <%--Code for the panel containing search and gridview--%>
        <div class="container">           
            <div class="col-lg-12">
                <h4 style="color: #a41e35"><b>Find and select events to export them to Excel Spreadsheet</b></h4>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="font-weight: bold">Look Up Events</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-inline" style="text-align: center">
                            <asp:Label ID="lblSearch" runat="server" Text="Search By Title: " Font-Bold="true"></asp:Label>&nbsp
                            <asp:TextBox ID="txtSearchRestaurant" runat="server" CssClass="form-control" placeHolder="Search.."></asp:TextBox>
                            &nbsp&nbsp&nbsp&nbsp

                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn-sm btn-primary" />
                            <br />
                            <h2 style="font-weight: bold">Or</h2>

                            <div style="text-align: left">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
                            <asp:Label ID="Label4" runat="server" Text="Event Type" Font-Bold="true"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Owner" Font-Bold="true"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Date" Font-Bold="true"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Event" Font-Bold="true"></asp:Label>
                                <br />
                            </div>

                            <div style="border: 0px solid #a41e35; text-align: center">

                                <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="90px">
                                    <asp:ListItem>Networking</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;

                                <asp:DropDownList ID="DropDownList6" runat="server">
                                    <asp:ListItem>Steve Hazzard</asp:ListItem>
                                    <asp:ListItem>Jacob</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList7" runat="server">
        <asp:ListItem>March 29th, 2015</asp:ListItem>
    </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList8" runat="server" Height="16px" Width="250px">
                                    <asp:ListItem>Tampa: Phillies Spring Training 2015</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                                
                                <asp:Button ID="btnGo" runat="server" Text="Go" CssClass="btn-sm btn-primary" />
                                <br />
                                <br />

                            </div>

                            &nbsp&nbsp&nbsp&nbsp
        
                        </div>

                        <%--Grid View for the events--%>
                        <asp:GridView ID="gvEvents" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-condensed" OnRowDataBound="gvEvents_RowDataBound">
                            <Columns>
                                <asp:BoundField HeaderText="Title" />
                                <asp:BoundField HeaderText="Name" />
                                <asp:BoundField HeaderText="Date" />

                                <asp:TemplateField HeaderText="Select Event">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="CheckBox5" runat="server" />
                                    </ItemTemplate>

                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                        <br />
                        <div style="text-align: right">
                            <asp:Button ID="btnGenerateReport" runat="server" Text="Generate Report" CssClass="btn-sm btn-primary" />
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
    
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

