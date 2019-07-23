package com.project.fee_management;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.fee_management.Accountant;
import com.project.fee_management.Student;
import com.project.fee_management.AccountantWorker;
import com.project.fee_management.StudentWorker;
@WebServlet("/ViewAccountant")
public class ViewAccountant extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>View Accountant</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("<link rel='stylesheet' href='style.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navadmin.html").include(request, response);
		out.println("<div class='container'>");
		out.print("<h1>View Accountant</h1>");
	
		List<Accountant> list=AccountantWorker.getAllAccountant();
		out.println("<table class='table table-bordered table-striped'>");
		out.print("<tr><th>Id</th><th>Name</th><th>Email</th><th>Password</th><th>address</th><th>contact</th><th>Edit</th><th>Delete</th>");
		for(Accountant acc:list){
			out.print("<tr><td>"+acc.getId()+"</td><td>"+acc.getName()+"</td><td>"+acc.getEmail()+"</td><td>"+acc.getPassword()+"</td><td>"+acc.getAddress()+"</td><td>"+acc.getContact()+"</td><td><a href='EditAccountantForm?id="+acc.getId()+"'>Edit</a></td><td><a href='DeleteAccountant?id="+acc.getId()+"'>Delete</a></td></tr>");
		}
		out.println("</table>");
			
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}
}
