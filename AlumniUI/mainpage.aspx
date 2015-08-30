<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="AlumniUI.mainpage" %>

<!DOCTYPE html>
<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="menubar.css" rel="stylesheet" />

<%--for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
    </html>
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
                <li><a href="createTask.aspx">Manage Tasks</a>
                </li>
                <li><a href="viewEvent.aspx">View Events</a>
                </li>
                <li><a href="createReport.aspx">Create Report</a>
                </li>
            </ul>
        </div>
    </div>
</div>


<%--    The Calendar to Display Events --%>
    <%--<div style= "border:0px solid #a41e35;width:1500px; height:400px"class="center">--%>
<link rel="stylesheet" href="components/bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet" href="components/bootstrap3/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="cssCalendar/calendar.css">

	<style type="text/css">
		.btn-twitter {
			padding-left: 30px;
			background: rgba(0, 0, 0, 0) url(https://platform.twitter.com/widgets/images/btn.27237bab4db188ca749164efd38861b0.png) -20px 9px no-repeat;
		}
		.btn-twitter:hover {
			background-position:  -21px -16px;
		}
	</style>
</head>
<body>
<div class="container">
	<%--<div class="jumbotron">
		<h1>Bootstrap Calendar Demo</h1>

		<p>Bootstrap based full view calendar. Template based.</p>

		<a class="btn btn-default btn-primary" href="https://github.com/Serhioromano/bootstrap-calendar">Fork on GitHub</a>
		<a class="btn btn-default" href="index.html">Use bootstrap 2</a>
		<a href="https://twitter.com/serhioromano" class="btn btn-default btn-twitter" data-show-count="false" data-size="large">Follow @serhioromano</a>
		<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } }(document, 'script', 'twitter-wjs');
		</script>
	</div>--%>

	<div class="page-header">

		<div class="pull-right form-inline">
			<div class="btn-group">
				<button class="btn btn-primary" data-calendar-nav="prev"><< Prev</button>
				<button class="btn btn-default" data-calendar-nav="today">Today</button>
				<button class="btn btn-primary" data-calendar-nav="next">Next >></button>
			</div>
			<div class="btn-group">
				<button class="btn btn-warning" data-calendar-view="year">Year</button>
				<button class="btn btn-warning active" data-calendar-view="month">Month</button>
				<button class="btn btn-warning" data-calendar-view="week">Week</button>
				<button class="btn btn-warning" data-calendar-view="day">Day</button>
			</div>
		</div>

		<h3></h3>
		<small>To see example with events navigate to march 2013</small>
	</div>

	<div class="row">
		<div class="col-md-9">
			<div id="calendar"></div>
		</div>
		<%--<div class="col-md-3">
			<div class="row">
				<select id="first_day" class="form-control">
					<option value="" selected="selected">First day of week language-dependant</option>
					<option value="2">First day of week is Sunday</option>
					<option value="1">First day of week is Monday</option>
				</select>--%>
				<%--<select id="language" class="form-control">
					<option value="">Select Language (default: en-US)</option>
					<option value="bg-BG">Bulgarian</option>
					<option value="nl-NL">Dutch</option>
					<option value="fr-FR">French</option>
					<option value="de-DE">German</option>
					<option value="el-GR">Greek</option>
					<option value="hu-HU">Hungarian</option>
					<option value="id-ID">Bahasa Indonesia</option>
					<option value="it-IT">Italian</option>
					<option value="pl-PL">Polish</option>
					<option value="pt-BR">Portuguese (Brazil)</option>
					<option value="ro-RO">Romania</option>
					<option value="es-CO">Spanish (Colombia)</option>
					<option value="es-MX">Spanish (Mexico)</option>
					<option value="es-ES">Spanish (Spain)</option>
					<option value="ru-RU">Russian</option>
					<option value="sk-SR">Slovak</option>
					<option value="sv-SE">Swedish</option>
					<option value="ko-KR">Korean</option>
					<option value="zh-TW">繁體中文</option>
				</select>
				<label class="checkbox">
					<input type="checkbox" value="#events-modal" id="events-in-modal"> Open events in modal window
				</label>
			</div>--%>

			<h4>Events</h4>
			<small>This list is populated with events dynamically</small>
			<ul id="eventlist" class="nav nav-list"></ul>
		</div>
	</div>


	<script type="text/javascript" src="components/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="components/underscore/underscore-min.js"></script>
	<script type="text/javascript" src="components/bootstrap3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="components/jstimezonedetect/jstz.min.js"></script>
	<script type="text/javascript" src="jsCalendar/language/bg-BG.js"></script>
	<script type="text/javascript" src="jsCalendar/language/nl-NL.js"></script>
	<script type="text/javascript" src="jsCalendar/language/fr-FR.js"></script>
	<script type="text/javascript" src="jsCalendar/language/de-DE.js"></script>
	<script type="text/javascript" src="jsCalendar/language/el-GR.js"></script>
	<script type="text/javascript" src="jsCalendar/language/it-IT.js"></script>
	<script type="text/javascript" src="jsCalendar/language/hu-HU.js"></script>
	<script type="text/javascript" src="jsCalendar/language/pl-PL.js"></script>
	<script type="text/javascript" src="jsCalendar/language/pt-BR.js"></script>
	<script type="text/javascript" src="jsCalendar/language/ro-RO.js"></script>
	<script type="text/javascript" src="jsCalendar/language/es-CO.js"></script>
	<script type="text/javascript" src="jsCalendar/language/es-MX.js"></script>
	<script type="text/javascript" src="jsCalendar/language/es-ES.js"></script>
	<script type="text/javascript" src="jsCalendar/language/ru-RU.js"></script>
	<script type="text/javascript" src="jsCalendar/language/sk-SR.js"></script>
	<script type="text/javascript" src="jsCalendar/language/sv-SE.js"></script>
	<script type="text/javascript" src="jsCalendar/language/zh-TW.js"></script>
	<script type="text/javascript" src="jsCalendar/language/cs-CZ.js"></script>
	<script type="text/javascript" src="jsCalendar/language/ko-KR.js"></script>
	<script type="text/javascript" src="jsCalendar/language/id-ID.js"></script>
	<script type="text/javascript" src="jsCalendar/calendar.js"></script>
	<script type="text/javascript" src="jsCalendar/app.js"></script>

	<script type="text/javascript">
	    var disqus_shortname = 'bootstrapcalendar'; // required: replace example with your forum shortname
	    (function () {
	        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
	        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
	        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
	    })();
	</script>
</body>
<br /><br />

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