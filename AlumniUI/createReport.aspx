<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createReport.aspx.cs" Inherits="AlumniUI.createReport" %>

<!DOCTYPE html>
<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href="menubar.css" rel="stylesheet" />

<%--style sheet reference for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<%--make things centered--%>
<style>
    .center {  
        margin-left:0;
        margin-right:0;
        margin:0 auto;
    }
    .auto-style1 {
        width: 349px;
    }
    .auto-style2 {
        width: 349px;
        text-align: center;
    }
</style>

<%--code for menu bar--%>
<form id="form1" runat="server">
<div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
    <div class="container-fluid">
        <div class="navbar-header"><a class="navbar-brand" href="#">Alumni Event Calendar</a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
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

    <div style="width:337px; float:left;" class="auto-style2">
        Use the dropdown list to narrow down your search<br />
        <br />
        Event Category<br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Networking Event</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
        Event Owner<br />
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>Steve Hazzard</asp:ListItem>
        <asp:ListItem>Jacob</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
        Date<br />
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>March 29th, 2015</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
        Event<br />
    <asp:DropDownList ID="DropDownList4" runat="server">
        <asp:ListItem>Tampa: Phillies Spring Training 2015</asp:ListItem>
    </asp:DropDownList>
    </div>

    
    <%--grid view for creating report--%>
    <div style= "border:0px solid #a41e35;width:1100px;height:650px" class="center">
     <div class="row" >
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Create A Report
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>Title</th>
                                            <th class="auto-style1">Name</th>
                                            <th>Date</th>
                                            <th>Select Event</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td><a href="http://www.alumni.temple.edu?sid=705&amp;gid=1&amp;pgid=6686&amp;cid=10558&amp;ecid=10558&amp;crid=0&amp;calpgid=4447&amp;calcid=6193">Tampa: Phillies Spring Training 2015</a></td>
                                            <td class="auto-style1">Steve Hazzard</td>
                                            <td>March 29th, 2015</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                            </td>
                                            
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Alumni party</td>
                                            <td class="auto-style1">Jane Smith</td>
                                            <td>April</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox2" runat="server" />
                                            </td>
                                            
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>&nbsp;</td>
                                            <td class="auto-style1">John Jacob Jingleheimer Schmidt</td>
                                            <td>&nbsp;</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox3" runat="server" />
                                            </td>
                                            
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>x</td>
                                            <td class="auto-style1">Me</td>
                                            <td>&nbsp;</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox4" runat="server" />
                                            </td>
                                            
                                        </tr>
                                    </tbody>
                                </table>
                                <div style= "border:0px solid #a41e35;width:200px;height:auto" class="center">
                                <%--<div class="row">--%>
                                    <%--<div class="col-sm-2 form-submit">--%>
                                        <asp:Button ID="Button1" runat="server" Text="Create Report" />
                                    </div>
                                </div>
                            </div></div>
                            
                        </div>
                    </div></div></div></div>
                    <!--End Advanced Tables -->
</form></html>
<%--footer for pages--%>
    <footer id="#footer">
  <div class="footer-wrap top">
      <div class="region region-footer-top">
    
<div id="block-block-4" class="block block-block">

    
  <div class="content">
     <div itemscope="" itemtype="http://schema.org/EducationalOrganization">
<p><span class="h4" itemprop="name">Temple University</span></p>
<div itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
<p><span itemprop="streetAddress">1801 N. Broad Street</span><br /><span itemprop="addressLocality">Philadelphia</span>, <span itemprop="addressRegion">PA</span> <span itemprop="postalCode">19122</span> <span class="hidden" itemprop="addressCountry">USA<br />
			(215) 204-7000</span></p>
</div>
</div>
<p> </p>
       </div>
</div>

<div id="block-menu-menu-info-links" class="block block-menu">

    
  <div class="content">
    <ul class="menu"><li class="first leaf"><a href="https://directory.temple.edu/" class="icons-directory">Cherry and White Directory</a></li>
<li class="leaf"><a href="/maps-and-directions" class="icons-map">Maps, Directions &amp; Accommodations</a></li>
<li class="last leaf"><a href="/contact" class="icons-phone">Contact</a></li>
</ul>      </div>
</div>

<div id="block-block-6" class="block block-block">

    
  <div class="content">
     <ul><li class="first"><a class="icons-google icon-link" href="https://plus.google.com/+templeuniversity" target="_blank">Google Plus</a></li>
<li><a class="icons-facebook icon-link" href="http://www.facebook.com/templeu" target="_blank">Facebook</a></li>
<li class="third"><a class="icons-twitter icon-link" href="http://twitter.com/templeuniv" target="_blank">Twitter</a></li>
<li><a class="icons-linkedin icon-link" href="http://us.linkedin.com/company/temple-university" target="_blank">LinkedIn.com</a></li>
<li><a class="icons-youtube icon-link" href="http://www.youtube.com/TempleUniversity" target="_blank">YouTube</a></li>
<li class="last"><a class="icons-instagram icon-link" href="http://instagram.com/templeuniv" target="_blank">Instagram</a></li>
</ul>      </div>
</div>
  </div>
  </div>
  <div class="footer-wrap bottom">
      <div class="region region-footer-bottom">
    
<div id="block-menu-menu-tertiary-links" class="block block-menu">

    
  <div class="content">
    <ul class="menu"><li class="first leaf"><a href="https://tuportal.temple.edu">TUPortal</a></li>
<li class="leaf"><a href="https://tumail.temple.edu/">TUMail</a></li>
<li class="leaf"><a href="/sitemap">Sitemap</a></li>
<li class="leaf"><a href="/about/temple-university-accessibility-statement">Accessibility</a></li>
<li class="leaf"><a href="http://policies.temple.edu/">Policies</a></li>
<li class="leaf"><a href="http://www.temple.edu/hr/departments/employment/jobs_within.htm">Careers at Temple</a></li>
<li class="last leaf"><a href="http://www.temple.edu/safety/">Safety</a></li>
</ul>      </div>
</div>

<div id="block-block-9" class="block block-block">

    
  <div class="content">
     <p>Copyright 2012-2015, Temple University. All rights reserved.</p>
       </div>
</div>
  </div>
  </div>
</footer>
