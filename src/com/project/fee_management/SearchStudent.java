package com.project.fee_management;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.fee_management.Student;
import com.project.fee_management.StudentWorker;
@WebServlet("/SearchStudent")
public class SearchStudent extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String srollno=request.getParameter("rollno");
		int rollno=Integer.parseInt(srollno);
		Student s=StudentWorker.getStudentByRollno(rollno);
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("StudentByRollno.jsp").include(request, response);
		out.println("<div class='container'>");
		
	
		out.println("<h1>Search Student</h1>");
		
		if(s.getRollno()>0){
		/*out.println("<table class='table table-bordered table-striped'>");
		out.print("<tr><td>Rollno:</td><td>"+s.getRollno()+"</td></tr>");
		out.print("<tr><td>Name:</td><td>"+s.getName()+"</td></tr>");
		out.print("<tr><td>Email:</td><td>"+s.getEmail()+"</td></tr>");
		out.print("<tr><td>Sex:</td><td>"+s.getSex()+"</td></tr>");
		out.print("<tr><td>Course:</td><td>"+s.getCourse()+"</td></tr>");
		out.print("<tr><td>Fee:</td><td>"+s.getFee()+"</td></tr>");
		out.print("</table>");*/
			request.getRequestDispatcher("StudentByRollno.jsp").include(request, response);
		}else{
			out.println("<p>Sorry, No Record found for "+rollno+"</p>");
		}
		
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}
}
