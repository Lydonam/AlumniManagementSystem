<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createTask.aspx.cs" Inherits="AlumniUI.createTask" %>

<!DOCTYPE html>
<link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="menubar.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">

<%--style sheet reference for footer--%>
<link type="text/css" rel="stylesheet" href="http://www.temple.edu/sites/temple/files/css/css_OCCCxEXLcOWEYOLZIlp4WFqVS4zcfvLRB6D_bEd9x50.css" media="screen" />

<%--make things centered--%>
<style>
    .center {
        /*margin-left:0;
        margin-right:0;*/
        margin:0 auto;
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
                <li class="active"><a href="createTask.aspx">Manage Tasks</a>
                </li>
                <li><a href="viewEvent.aspx">View Events</a>
                </li>
                <li><a href="createReport.aspx">Create Report</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<%--div for dropdown list--%>
<div style="width:339px; float:left;" class="text-center">
    Use the dropdown list to narrow down your search<br /><br />
    Task Category<br />
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Catering</asp:ListItem>
        <asp:ListItem>Decorations</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Event Owner<br />
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>Tina Vance-Knight</asp:ListItem>
        <asp:ListItem>Melissa Reddington</asp:ListItem>
        <asp:ListItem>Gloria Easley</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Date<br />
    <asp:DropDownList ID="DropDownList3" runat="server">
        <asp:ListItem>April 1st, 2015</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Event Category<br />
    <asp:DropDownList ID="DropDownList5" runat="server">
        <asp:ListItem>Networking Event</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Event<br />
    <asp:DropDownList ID="DropDownList4" runat="server">
        <asp:ListItem>Victory for Tyler 2015</asp:ListItem>
        <asp:ListItem>Job Fair</asp:ListItem>
    </asp:DropDownList>
    <br /></div>

<div style= "border:0px solid #a41e35;width:1100px; height:auto"class="center">
     <div class="row" >
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Catering<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                </a>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="Table1">
                                    <thead>
                                        <tr>
                                            <th>Task</th>
                                            <th>Person Responsible</th>
                                            <th>Due Date</th>
                                            <th>Completed</th>
                                            <th>Date Completed</th>
                                            <th>Update</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>Decorations</td>
                                            <td>Tina Vance-Knight</td>
                                            <td>March 4th, 2032</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                            </td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button9" runat="server" Text="Update" />
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button1" runat="server" Text="Delete" />
                                            </td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td>Food</td>
                                            <td>Mellissa Reddington</td>
                                            <td>April</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox2" runat="server" />
                                            </td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button8" runat="server" Text="Update" />
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button2" runat="server" Text="Delete" />
                                            </td>
                                        </tr>
                                        <tr class="odd gradeA">
                                            <td>Entertainment</td>
                                            <td>Gloria Easley</td>
                                            <td>January 4th</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox3" runat="server" />
                                            </td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button7" runat="server" Text="Update" />
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button3" runat="server" Text="Delete" />
                                            </td>
                                        </tr>
                                        <tr class="even gradeA">
                                            <td>Misc.</td>
                                            <td>Steve Hazzard</td>
                                            <td>.....</td>
                                            <td class="center">
                                                <asp:CheckBox ID="CheckBox4" runat="server" />
                                            </td>
                                            <td class="center">
                                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button6" runat="server" Text="Update" />
                                            </td>
                                            <td class="center">
                                                <asp:Button ID="Button4" runat="server" Text="Delete" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                    </div></div></div></div></div>
                    <!--End Advanced Tables -->

     <!--Vendor Information -->
    <div style= "border:0px solid #a41e35;width:1100px;"class="center">
        
            <div class="panel panel-default">
                <div class="panel-heading">
                    <%--<h4 class="panel-title">--%>
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                            Vendor Information
                        </a>
                    <%--</h4>--%>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse ">
                    <div class="panel-body">
                        <div class="form-horizontal">
                        <div class="row">
                            <div class="form-group">
                            <div class="col-sm-4">
                                <div class="form-title">Company Name
                                    <div class="controls">
                                    <input type="text" class="form-control" id ="VendorName" />
                                        </div>
                                </div>
                               
                             </div>
                                <div class="col-sm-4">
                                    <div class="form-title">E-Mail
                                    <div class="controls">
                                        <input type="text" class="form-control" id="email" />
                                    </div>
                                </div>
                             
                                
                                
                               </div>  
                                <div class="col-sm-3">
                                    <div class="form-title">Phone Number
                                    <div class="controls">
                                        <input type="text" class="form-control" id="PhoneNumber" />
                                    </div>
                                </div>                               
                               </div>                                 
                               </div>         
                         </div> 
                        <div class="row">
                            <div class ="form-group">
                             <div class="col-sm-5 ">   
                                <div class="form-title">Contact First Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="ContactFirstNAme" />
                                    </div>
                                   
                                </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-title">Contact Last Name
                                    <div class="controls">
                                        <input type="text" class="form-control" id="ContactLastName" />
                                    </div>
                                </div>
                                

                            </div>
                        </div>
                            </div>
                            <div class="row">
                                <div class ="form-group">
                             <div class="col-sm-5">   
                                <div class="form-title">Street Address 1
                                    <div class="controls">
                                        <input type="text" class="form-control" id="Address1" />
                                    </div>
                                   
                                </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-title">Street Address 2
                                    <div class="controls">
                                        <input type="text" class="form-control" id="Address2" />
                                    </div>
                                </div>
                                

                            </div>
                        </div>
                                </div>
                            <div class="row">
                            <div class="form-group">
                            <div class="col-sm-4">
                                <div class="form-title">City
                                    <div class="controls">
                                    <input type="text" class="form-control" id ="City" />
                                        </div>
                                </div>
                               
                             </div>
                                <div class="col-sm-4">
                                    <div class="form-title">State
                                    <div class="controls">
                                        <input type="text" class="form-control" id="State" />
                                    </div>
                                </div>
                             
                                
                                
                               </div>  
                                <div class="col-sm-3">
                                    <div class="form-title">Zip Code
                                    <div class="controls">
                                        <input type="text" class="form-control" id="Zip" />
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


    <div style= "border:0px solid #a41e35;width:1200px; height:250px"class="center">

        <asp:Label ID="Label4" runat="server" Text="Task name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Responsibility:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Due Date:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Add Task" />

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