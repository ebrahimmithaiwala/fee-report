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
          <section class="wrapper site-min-height2">

          	<h3><i class="fa fa-angle-right"></i> Pending Dues</h3>

              <div class="row mt">
                  <div class="col-md-12">
               
               	<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
    <style>           	
#myInput {

  width: 100%;
  font-size: 14px;
  padding: 6px 20px 5px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
</style>

<script>
function myFunction() {
  var input, tbody, table, tr, td, i;
  input = document.getElementById("myInput");
  tbody = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(tbody) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
               <% List<Student> list=StudentWorker.getDues();%>
                      <div class="content-panel">
                          <table id="myTable" class="table table-striped table-advance table-hover">
                                                   
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  
                                  <th>Roll No</th>
                                  <th>Student Name</th>
                                  <th>Email</th>
                                  <th>Gender</th>
                                  <th>Course</th>
                                  <th>Fees</th>
                                  <th>Paid</th>
                                  <th>Due</th>
                                  <th>Address</th>
                                  <th>Contact No</th>
                              </tr>
                              </thead> 
                              
                              <%for(Student s:list){
                      			
                      		%>
                              
                              <tbody>
                                  <tr>
                                  <td><%=s.getRollno()%></td>
                                  <td><%=s.getName()%></td>
                                  <td><%=s.getEmail()%></td>
                                  <td><%=s.getSex()%></td>
                                  <td><%=s.getCourse()%></td>
                                  <td><%=s.getFee()%></td>
                                  <td><%=s.getPaid()%></td>
                                  <td><%=s.getDue()%></td>
                                  <td><%=s.getAddress()%></td>
                                  <td><%=s.getContact()%></td>
                                  <td>
                                      <a href="UpdateStudent.jsp?rollno=<%=s.getRollno()%>">
                                      <button class="btn btn-success btn-xs"><i class="fa fa-check"></i> Update</button></a>
                                      <a href="DeleteStudent?rollno=<%=s.getRollno()%>">
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i> Delete</button></a>
                                      
                                  </td>
                                  
                              </tr>
                                 <%}%>
                          </table>
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
