<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="AlumniUI.test" %>

<!DOCTYPE html>
<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="menubar.css" rel="stylesheet" />
<%--style sheet reference for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<link href="css/datepicker.css" rel="stylesheet" />
<script src="js/bootstrap-datepicker.js"></script>
<link href="form.css" rel="stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml"/>
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
                <li><a href="createReport.aspx">Create Report</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<style>
    .center {
        /*margin-left:0;
        margin-right:0;*/
        margin:0 auto;
    }
</style>

<table border="0" cellpadding="5" cellspacing="0" width="1000" class="center">

<tr><td align="left" valign="top" width="200">
<div>
    <input class="form-control input-sm" placeholder="Event Name" type="text" >
</div><br />
<div>
    <input class="form-control input-sm" placeholder="First Name" type="text" >
</div><br />
<div>
    <input class="form-control input-sm" placeholder="Last Name" type="text" >
</div><br />
<div>
    <input class="form-control input-sm" placeholder="E-mail" type="text" >
</div><br />      
<div>
    <input class="form-control input-sm" placeholder="Department/Team" type="text" >
</div><br />  
<div>
    <input class="form-control input-sm" placeholder="University Partners" type="text" >
</div><br />
<div>
    <input class="form-control input-sm" placeholder="Sponsor" type="text" >
</div><br />
<div>
    <input class="form-control input-sm" placeholder="Zip Code" type="text" >
</div><br />
<%--PUT FIRST COLUMN CONTENTS HERE--%>

</td><td align="left" valign="top" width="200">
<div>
    <input class="form-control input-sm" placeholder="City" type="text" >
</div><br />
<div>
    <input class="form-control input-sm" placeholder="State" type="text" >
</div><br />
<div>
    <input class="form-control input-sm" placeholder="Zip Code" type="text" >
</div><br />
    <div>
    <input class="form-control input-sm" placeholder="Building Name" type="text" >
</div><br />
    <div>
    <input class="form-control input-sm" placeholder="Room Number" type="text" >
</div><br />
<%--PUT SECOND COLUMN CONTENTS HERE--%>

</td><td align="left" valign="top" width="200">
<div>
    <input class="form-control input-sm" placeholder =" Start Date" input type="text" id="datepicker"><br />
    <input class="form-control input-sm" placeholder =" End Date" input type="text" id="datepicker2"><br />
    <div>
    <input class="form-control input-sm" placeholder="Start Time" type="text" >
</div><br />
    <div>
    <input class="form-control input-sm" placeholder="End Time" type="text" >
</div><br />
    <div>
    <input class="form-control input-sm" placeholder="Comments" type="text" >
</div><br />
</div><br />
<%--PUT THIRD COLUMN CONTENTS HERE--%>

</td></tr></table> 

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

<script>
    $(function () {
        $("#datepicker").datepicker();
    });
</script>

<script>
    $(function () {
        $("#datepicker").datepicker2();
    });
</script>
<%--style for the date and time div--%>
<style>
    div.centered      { width: 900px; }
div.column       { width: 600px;  margin: 0 auto;}
div.column div   { width: 300px; height: auto; float: left; }
div.grey          { background-color: #cccccc; }
div.red           { background-color: #e14e32; }
div.clear         { clear: both; }
</style>

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
      <%--<div class="footer navbar-fixed-bottom">--%>
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
          <%--</div>--%>
  </div>
</footer>