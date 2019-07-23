package com.project.fee_management;  

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.fee_management.Student;
import com.project.fee_management.StudentWorker;
@WebServlet("/ViewStudent")
public class ViewStudent extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>View Student</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("<link rel='stylesheet' href='style.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navaccountant.html").include(request, response);
		out.println("<div class='container'>");
		
		out.print("<h1>View Students</h1>");
	
		List<Student> list=StudentWorker.getAllStudent();
		out.println("<table class='table table-bordered table-striped'>");
		out.print("<tr><th>Rollno</th><th>Name</th><th>Email</th><th>Sex</th><th>Course</th><th>Fee</th><th>paid</th><th>due</th><th>address</th><th>contact</th><th>Edit</th><th>Delete</th>");
		for(Student s:list){
			out.print("<tr><td>"+s.getRollno()+"</td><td>"+s.getName()+"</td><td>"+s.getEmail()+"</td><td>"+s.getSex()+"</td><td>"+s.getCourse()+"</td><td>"+s.getFee()+"</td><td>"+s.getPaid()+"</td><td>"+s.getDue()+"</td><td>"+s.getAddress()+"</td><td>"+s.getContact()+"</td><td><a href='EditStudentForm?rollno="+s.getRollno()+"'>Edit</a></td><td><a href='DeleteStudent?rollno="+s.getRollno()+"'>Delete</a></td></tr>");
		}
		out.println("</table>");
		out.println("</div>");
		request.getRequestDispatcher("footer.html").include(request, response);
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

}
