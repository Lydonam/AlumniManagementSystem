<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cTask.aspx.cs" Inherits="AlumniUI.cTask" %>

<!DOCTYPE html>

<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="menubar.css" rel="stylesheet" />

<%--style sheet reference for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<Script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
    .center {
        /*margin-left:0;
        margin-right:0;*/
        margin:0 auto;
    }
    .auto-style1 {
        /*margin-left:0;
        margin-right:0;*/
        margin: 0 auto;
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
                <li ><a href="createReport.aspx">Create Report</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div style="width:500px;" class="auto-style1">
    Check the box of the task you would like to add.<br />Click on the add button if you want to add your own tasks.
    </div>
<div class="container" style="width:700px">       
               <div class="panel-group" id="accordion">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                         <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Catering</a>
                                        </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in">
                                        <div class="panel-body">

<table border="0" cellpadding="5" cellspacing="0" width="500" class="center">

<tr><td align="left" valign="top" width="200">
<div>
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Order Pizza"></asp:Label>
</div><br />
<div>
    &nbsp;<asp:Label ID="Label2" runat="server" Text="Order Drinks"></asp:Label>
</div><br />
<div>
    &nbsp;<asp:Label ID="Label3" runat="server" Text="Order Tables"></asp:Label>
</div><br />
    <br />      
    <br />  

<%--PUT FIRST COLUMN CONTENTS HERE--%>

</td><td align="left" valign="top" width="200">
<div>
    &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" />
</div><br />
<div>
    &nbsp;<asp:CheckBox ID="CheckBox2" runat="server" />
</div><br />
<div>
    &nbsp;<asp:CheckBox ID="CheckBox3" runat="server" />
</div><br />
        <br />
        <asp:Button ID="btnCatering" runat="server" Text="Add" class="btn btn-primary" />
        <br />
<%--PUT SECOND COLUMN CONTENTS HERE--%>
    </table>
</div></div></div></div></div>
											
                    <div class="container" style="width:700px">                             
                   <div class="panel panel-default">
                                        <div class="panel-heading">
                                         <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Entertainment</a>
                                        </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <table border="0" cellpadding="5" cellspacing="0" width="500" class="center">

<tr><td align="left" valign="top" width="200">
<div>
    &nbsp;<asp:Label ID="Label4" runat="server" Text="Get Music"></asp:Label>
</div><br />
<div>
    &nbsp;<asp:Label ID="Label5" runat="server" Text="Contact Guest Speaker"></asp:Label>
</div><br />
<div>
    &nbsp;<asp:Label ID="Label6" runat="server" Text="Get Microphones"></asp:Label>
</div><br />
    <br />      
    <br />  

<%--PUT FIRST COLUMN CONTENTS HERE--%>

</td><td align="left" valign="top" width="200">
<div>
    &nbsp;<asp:CheckBox ID="CheckBox4" runat="server" />
</div><br />
<div>
    &nbsp;<asp:CheckBox ID="CheckBox5" runat="server" />
</div><br />
<div>
    &nbsp;<asp:CheckBox ID="CheckBox6" runat="server" />
</div><br />
        <br />
        <asp:Button ID="btnEntertainment" runat="server" Text="Add" class="btn btn-primary" />
        <br />
<%--PUT SECOND COLUMN CONTENTS HERE--%>
    </table>
</div></div></div></div></div>


    <div style="width:100px;" class="center">

        <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary" />

    </div>

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
</form>