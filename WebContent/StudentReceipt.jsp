<%@page import="com.project.fee_management.*,java.util.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  <script>
  function printData()
{
   var divToPrint=document.getElementById("printTable");
   var ButtonControl = document.getElementById("printButton");
   newWin= window.open("");
   ButtonControl.style.visibility = "hidden";
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}
</script>
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
                      <a class="active" href="javascript:;" >
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
          <section class="wrapper site-min-height2" id="printTable">

          	<h3 align="center">Receipt</h3>

              <div class="row mt">
                  <div class="col-md-12">

     <%
	String srollno=request.getParameter("rollno");
	int rollno=Integer.parseInt(srollno);
	Student s=StudentWorker.getStudentByRollno(rollno);
   %>
   
                      <div class="content-panel">
                      <form>
                      <table class="table" id="printTable">
                      <tr>
                      <td> Name : <%=s.getName()%></td>
                      <td> Date : <%= new java.util.Date() %>
                      </tr>
                      
                      <tr>
                      <td> Roll No : <%=s.getRollno()%>
                      <td> Course : <%=s.getCourse() %></td> 
                      </tr>
                      </table>
                      
                      
                          <table border="1" id="printTable2" class="table table-striped table-advance table-hover">                       
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th>Sr.no</th>
                                  <th>Particulars</th>
                                  <th>Rs Paid</th>
                              </tr>
                              </thead> 

                              <tbody>
                                  <tr>
								  <td> 1.</td>
								  <td> Tution Fees</td>
                                  <td> <%=s.getPaid()%></td>
                                  </tr>
                                  <tr>
                                  <td></td>
                                  <td></td>
                                  <td> <h5><b>Total Fees <%=s.getFee()%></b></h5></td>
                                  </tr>
                                  
                                  <tr>
                                  <td colspan="3"> <h5 align="center">The Balance Other Fees Dues (Rs <%=s.getDue()%>) is to be paid</h5></td>
                                  </tr>
                                  
                                  <tr>
                                  <td rowspan="4"> Student Signature</td>
                                  <td rowspan="4"></td>
                                  <td rowspan="4"> Accountant Signature and Stamp</td>
                                  </tr>
                                 
                                  
                                  
                          </table>
                          <div class="form-group">
                          <center><input type="button" id="printButton" value="Print Receipt" class="btn btn-primary" onclick="javascript:printData('printablediv')">
                          </center></div>
                          </form>
                      </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
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
