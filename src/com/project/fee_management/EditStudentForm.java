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
@WebServlet("/EditStudentForm")
public class EditStudentForm extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String srollno=request.getParameter("rollno");
		int rollno=Integer.parseInt(srollno);
		Student s=StudentWorker.getStudentByRollno(rollno);
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Edit Student Form</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("<link rel='stylesheet' href='style.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navaccountant.html").include(request, response);
		out.println("<div class='container'>");
		
		out.print("<h1>Edit Student Form</h1>");
		out.print("<form action='EditStudent' method='post'>");
		out.print("<table>");
		out.print("<tr><td><input type='hidden' name='rollno' value='"+s.getRollno()+"'/></td></tr>");
		out.print("<tr><td>Name:</td><td><input type='text' name='name' value='"+s.getName()+"'/></td></tr>");
		out.print("<tr><td>Email:</td><td><input type='email' name='email' value='"+s.getEmail()+"'/></td></tr>");
		out.print("<tr><td>Sex:</td><td><input type='text' name='sex' value='"+s.getSex()+"'/></td></tr>");
		out.print("<tr><td>Course:</td><td><input type='text' name='course' value='"+s.getCourse()+"'/></td></tr>");
		out.print("<tr><td>Fee:</td><td><input type='number' name='fee' value='"+s.getFee()+"'/></td></tr>");
		out.print("<tr><td>Paid:</td><td><input type='number' name='paid'  value='"+s.getPaid()+"'/></td></tr>");
		out.print("<tr><td>Due:</td><td><input type='number' name='due'  value='"+s.getDue()+"'/></td></tr>");
		out.print("<tr><td>Address:</td><td><textarea name='address' style='width:300px;height:100px;'>"+s.getAddress()+"</textarea></td></tr>");
		out.print("<tr><td>Contact No:</td><td><input type='text' name='contact' value='"+s.getContact()+"'/></td></tr>");
		out.print("<tr><td colspan='2' align='center'><input type='submit' value='Update Student'/></td></tr>");
		out.print("</table>");
		out.print("</form>");
		
		out.println("</div>");
		request.getRequestDispatcher("footer.html").include(request, response);
		out.println("</body>");
		out.println("</html>");
				
		out.close();
	}

}
