<%@page import="com.project.fee_management.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Fee Receipt Manager</title>

    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    

    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>

  </head>
  <body oncontextmenu="false">

  <section id="container" >
      <!--TOP BAR CONTENT & NOTIFICATIONS-->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right"></div>
              </div>
            <!--logo start-->
            <a href="AccountantDashboard.jsp" class="logo"><b> Fee Receipt Manager</b> Account Portal</a>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
            	<form action="LogoutAction.jsp">
                    <li><button class="btn btn-danger" id="lg">Logout</li></button>
                    </form>
            	</ul>
            	
            </div> 
        </header>
        
        <style>
        #lg {
        margin-top: 20%;
        } 
        </style>
        
      <!--header end-->
      
      <!-- MAIN SIDEBAR MENU-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  
              	  <h5 class="centered">Welcome! </h5>
              	  	
                  <li class="mt">
                  
                      <a class="active" href="AccountantDashboard.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                   
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=""></i>
                          <span>Student</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="AddStudent.jsp">Add New Student</a></li>
                          <li><a  href="ViewAllStudents.jsp">View All Accountant</a></li>
                          <li><a  href="SearchStudentByRollno.jsp">Search Student</a></li>
                          <li><a  href="ShowStudentByDues.jsp">Pending Dues of Students</a></li>
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!--MAIN CONTENT-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height2">

              <div class="row">
                  
                  <div class="col-lg-9 main-chart">
                      
                      <div class="row mtbox">
                <div class="col-md-4 col-sm-3 col-md-offset-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-1">
                                    <i class="fa fa-edit fa-3x"></i>
                                </div>
                                <div class="col-xs-7 text-right">
                                    <div><h4>Student</h4></div>
                                </div>
                            </div>
                        </div>
                        <a href="AddStudent.jsp">
                            <div class="panel-footer">
                                <span class="pull-left"><h5>Add New Student</h5></span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                          <div class="col-md-4 col-sm-3 col-md-offset-1">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-1">
                                    <i class="fa fa-list-ol fa-3x"></i>
                                </div>
                                <div class="col-xs-8 text-right">
                                
                                    <div><h4>Student</h4></div>
                                </div>
                            </div>
                        </div>
                        <a href="ViewAllStudents.jsp">
                            <div class="panel-footer">
                                <span class="pull-left"><h5>View Students</h5></span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                          
                      </div>
                        
              <div class="row mtbox">
              
                      	<div class="col-md-4 col-sm-3 col-md-offset-2">
                      	<div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-1">
                                    <i class="fa fa-search fa-3x"></i>
                                </div>
                                <div class="col-xs-8 text-right">
                                
                                    <div><h4>Student</h4></div>
                                </div>
                            </div>
                        </div>
                        <a href="SearchStudentByRollno.jsp">
                            <div class="panel-footer">
                                <span class="pull-left"><h5> Search Student</h5></span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                    </div>
                      	
                      	<div class="col-md-4 col-sm-3 col-md-offset-1">
                      	<div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-1">
                                    <i class="fa fa-copy fa-3x"></i>
                                </div>
                                <div class="col-xs-8 text-right">
                                
                                    <div><h4>Student</h4></div>
                                </div>
                            </div>
                        </div>
                        <a href="SearchStudentByRollno.jsp">
                            <div class="panel-footer">
                                <span class="pull-left"><h5></h5>Print Student Receipt</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                      	
                      	</div>  
                      	</div>
                      	</div>                  
                  
             
             <style>
             #bp{
             width: 70%;
             height: 35%;
             margin-left: 15%;
             margin-top: 5%;
             }
             
             #alb{
             width: 70%;
             height: 35%;
             margin-left: 15%;
             margin-top: 10%;
             }
             </style>
             
      <!-- RIGHT SIDEBAR CONTENT-->                  
                  
                  <div class="row mtbox">
                      
                  <div class="col-lg-3 ds">
                        <!-- CALENDAR-->
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->
                        
                  </div><!-- /col-lg-3 -->

                  </div>
                      
              </div><!--/row-->
          </section>
      </section>

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer" class="site-min-height">
          <div class="text-center">
              2018 - Fee Manager
              <a href="" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  <!--</section>-->

    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>

    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	

	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  </body>
</html>
