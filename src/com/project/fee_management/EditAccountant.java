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
@WebServlet("/EditAccountant")
public class EditAccountant extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
	 	String email=request.getParameter("email");
		String password=request.getParameter("password");
		String address=request.getParameter("address");
		String contact=request.getParameter("contact");
		
		Accountant acc=new Accountant(id,name, email, password, address, contact);
		AccountantWorker.updateAccountant(acc);
		response.sendRedirect("ViewAllAccountant.jsp");
		
		out.close();
	}

}
