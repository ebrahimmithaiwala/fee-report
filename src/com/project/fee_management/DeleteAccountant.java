package com.project.fee_management;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.fee_management.AccountantWorker;
import com.project.fee_management.StudentWorker;
@WebServlet("/DeleteAccountant")
public class DeleteAccountant extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
				AccountantWorker.deleteAccountant(id);
		response.sendRedirect("ViewAccountant");
	}
}
