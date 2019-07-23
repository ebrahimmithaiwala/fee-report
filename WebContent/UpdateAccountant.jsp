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
  
  <body>

  <section id="container" >
      <!--TOP BAR CONTENT & NOTIFICATIONS-->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right"></div>
              </div>
            <!--logo start-->
            <a href="AdminDashboard.jsp" class="logo"><b> Fee Receipt Manager</b> Admin Portal</a>
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
                  
                      <a href="AdminDashboard.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                   
                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class=""></i>
                          <span>Accountant</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="AddAccountant.jsp">Add New Accountant</a></li>
                          <li><a  href="ViewAllAccountant.jsp">View All Accountant</a></li>
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

<h3><i class="fa fa-angle-right"></i> Update Accountant</h3>
              <div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  
        <%         	  
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		Accountant acc=AccountantWorker.getAccountantById(id);
		%>
                      <form method="POST" action="EditAccountant" class="form-horizontal style-form">
                  
                  
                                  <input type="hidden" name="id" value="<%=acc.getId()%>">
                              
                  
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Accountant Name</label>
                              <div class="col-sm-10">
                                  <input type="text"  name="name" class="form-control" value="<%=acc.getName()%>" placeholder="Accountant Name">
                              </div>
                              
                          </div>
                          
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email</label>
                              <div class="col-sm-10">
                                  <input type="email" name="email" class="form-control" value="<%=acc.getEmail()%>" placeholder="Email Id">
                              </div>
                          </div>
                          
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Accountant Password</label>
                              <div class="col-sm-10">
                                  <input type="password" name="password" class="form-control" value="<%=acc.getPassword()%>" placeholder="Set Accountant Password">
                              </div>
                          </div>
                          
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Accountant Address</label>
                              <div class="col-sm-10">
                                 <textarea name="address" class="form-control">
                                 <%=acc.getAddress()%>
                                 </textarea>
                              </div>
                          </div>
                          
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">ContactNumber</label>
                              <div class="col-sm-10">
                                  <input type="text" name="contact" class="form-control" value="<%=acc.getContact()%>" placeholder="Contact Number">
                              </div>
                          </div>

                          <div class="form-group">
                        <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                        <input type="submit" value="Update Accountant" class="btn btn-primary">
                        <input type="reset" value="Clear" class="btn btn-primary">
                           </div>
                       </div>
                          
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
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

  </body>
</html>
