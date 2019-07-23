<%@page import="com.project.fee_management.*,java.util.*"%>

<%
String Eamil=(String)session.getAttribute("Email") ;
session.invalidate();
request.logout();

response.sendRedirect("indexlogin.html");

%>