<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="authorize.aspx.cs" Inherits="AlumniUI.authorize" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">

    <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="menubar.css" rel="stylesheet" />
   
    <%--for footer--%>
    <link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />
   
    <title>Login Page</title>


    <style type="text/css">
        .normal-signin {
            width: 376px;
            z-index: 1;
            left: 25px;
            top: 77px;
            position: absolute;
            height: 190px;
        }
        </style>

     <style>
        .center {
            margin: 0 auto;
        }

         .auto-style8 {
             color: #000000;
         }

         .auto-style10 {
             font-size: xx-large;
             color: #990000;
         }

         .auto-style11 {
             text-align: center;
         }
         .auto-style12 {
             text-decoration: underline;
         }

    </style>

</head>


<body>
    
    <form id="form1" runat="server">
        
        <div class="container center">
            <div class="modal-body">

      <h4 class="auto-style11"><span class="auto-style12">Information About Adding A New User</span></h4>

    <h4>This page is to Add a New User to the System. Please fill in these fields below to Add User. Then press the Add User button to Add.</h4>
  </div>

        </div>
<div class="container center">

 <br /><br /><br /><br /><br /><br />
           <div style = "border:0px; width: 500px; height: 850px;" class="center">
             <%--<div class ="auto-style5" style="position: relative; top: 203px; width: 567px; height: 286px;">--%>
                 <%--<span class="auto-style8">--%>
                 <img alt="" <img class="center"src="LOGO.PNG" />
               <div style="text-align: center; height: 86px;">
                   <div class="col-md-9 col-offset-9 centered">
                   <h4 class="auto-style10"> Alumni Events Management System</h4></div></div>
                 </br>
               </br>
                    <%--<div class="normal-signin"> --%>
                    <h3 class="auto-style8"><strong>FIRST NAME:</strong></h3>
					<input type="text" class="form-control" placeholder="First Name" required="required">
					<h3 class="auto-style8"><strong>LAST NAME:</strong></h3>								
					<input type="password" class="form-control" placeholder="Last Name" required="required">
               <h3 class="auto-style8"><strong>TEMPLE UNIVERSITY ID NUMBER:</strong></h3>
					<input type="text" class="form-control" placeholder="ID Number" required="required">
					<h3 class="auto-style8"><strong>TEMPLE UNIVERSIRTY E-MAIL:</strong></h3>								
					<input type="password" class="form-control" placeholder="E-MAIL" required="required">
               </br>
		                
                       <a class="btn btn-primary btn-Sigin" href="mainpage.aspx" style="font-size: x-large;">
                           <strong>ADD USER</strong></a>&nbsp;
                       <p class="center-text">&nbsp;</p>

                    </div>	
            </div>							
													
             
            
			    
      								
    </form>	
    
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

  
    
</body>		
    	
</html>

