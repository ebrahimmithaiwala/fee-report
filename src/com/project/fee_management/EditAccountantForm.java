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
import com.project.fee_management.Student;

@WebServlet("/EditAccountantForm")
public class EditAccountantForm extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		Accountant acc=AccountantWorker.getAccountantById(id);
		
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Edit Accountant</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("<link rel='stylesheet' href='style.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navadmin.html").include(request, response);
		out.println("<div class='container'>");
		
		out.print("<h1>Edit Accountant Form</h1>");
		out.print("<form action='EditAccountant' method='post'>");
		out.print("<table>");
		out.print("<tr><td><input type='hidden' name='id' value='"+acc.getId()+"' /></td></tr>");
		out.print("<tr><td>Name:</td><td><input type='text' name='name' value='"+acc.getName()+"'/></td></tr>");
		out.print("<tr><td>Email:</td><td><input type='email' name='email' value='"+acc.getEmail()+"'/></td></tr>");
		out.print("<tr><td>Password:</td><td><input type='text' name='password' value='"+acc.getPassword()+"'/></td></tr>");
		out.print("<tr><td>Address:</td><td><textarea name='address' style='width:300px;height:100px;'>"+acc.getAddress()+"</textarea></td></tr>");
		out.print("<tr><td>Contact No:</td><td><input type='text' name='contact' value='"+acc.getContact()+"'/></td></tr>");
		out.print("<tr><td colspan='2' align='center'><input type='submit' value='Update Accountant' class='btn btn-default'/></td></tr>");
		out.print("</table>");
		out.print("</form>");
		out.println("</div>");
		request.getRequestDispatcher("footer.html").include(request, response);
		out.println("</body>");
		out.println("</html>");
		
		
		out.close();
	}

}
