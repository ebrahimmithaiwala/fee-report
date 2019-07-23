package com.project.fee_management;
import java.sql.*;

public class DatabaseConnector {
	
	public static String dbName = "system";
	public static String url = "jdbc:mysql://localhost:3306/"+dbName;
	public static String user = "root";
	public static String password = "root";

	public static Connection con = null;

	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,password);

		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}

	public static Statement getStatement()
	{
		Statement stmt = null;
		try
		{
			con=getCon();
			stmt=con.createStatement();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return stmt;
	}

	public static PreparedStatement getPreparedStatement(String query)
	{
		PreparedStatement pstmt=null;
		try
		{
			con=getCon();
			pstmt=con.prepareStatement(query);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return pstmt;
	}

	public static ResultSet getResultSet(String query)
	{
		ResultSet rs=null;
		Statement stmt;
		try
		{
			stmt=getStatement();
			rs=stmt.executeQuery(query);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
}  


