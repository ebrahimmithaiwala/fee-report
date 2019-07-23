package com.project.fee_management;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.fee_management.Accountant;
import com.project.fee_management.Student;
import com.project.fee_management.AccountantWorker;
import com.project.fee_management.StudentWorker;

@WebServlet("/AddAccountant")
public class AddAccountant extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Accountant Added</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("<link rel='stylesheet' href='style.css'/>");
		out.println("</head>");
		out.println("<body>");
		//request.getRequestDispatcher("navadmin.html").include(request, response);
		request.getRequestDispatcher("AdminDashboard.jsp").include(request, response);
		out.println("<div class='container'>");
		
		String name=request.getParameter("name");
	 	String email=request.getParameter("email");
		String password=request.getParameter("password");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		
		Accountant acc=new Accountant(name, email, password, address, contact);
		int status=AccountantWorker.addAccountant(acc);
		
		out.print("<h1>Add Accountant Form</h1>");
		out.println("<p>Accountant is added successfully!</p>");
		//request.getRequestDispatcher("AddAccountantForm.html").include(request, response);
		request.getRequestDispatcher("AddAccountant.jsp").include(request, response);
		out.println("</div>");
		request.getRequestDispatcher("footer.html").include(request, response);
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

}
