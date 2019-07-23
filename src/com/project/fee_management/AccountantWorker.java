package com.project.fee_management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.project.fee_management.Accountant;
import com.project.fee_management.Student;

public class AccountantWorker {
	
private static final String String = null;
public static int addAccountant(Accountant acc){
	int status=0;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("insert into fee_accountant(name,email,password,address,contact) values(?,?,?,?,?)");
		ps.setString(1,acc.getName());
		ps.setString(2,acc.getEmail());
		ps.setString(3,acc.getPassword());
		ps.setString(4,acc.getAddress());
		ps.setString(5,acc.getContact());
		status=ps.executeUpdate();
		con.close();
		}
		catch(Exception ex){System.out.println(ex);}
		return status;
	}

public static boolean accountantLogin(String email,String password){

	boolean status=false;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_accountant where email=? and password=?");
		ps.setString(1,email);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		con.close();
		}	
		catch(Exception ex){System.out.println(ex);}
		return status;
}
public static int updateAccountant(Accountant acc){
	int status=0;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("update fee_accountant set name=?,email=?,password=?,address=?,contact=? where id=?");
		ps.setString(1,acc.getName());
		ps.setString(2,acc.getEmail());
		ps.setString(3,acc.getPassword());
		ps.setString(4,acc.getAddress());
		ps.setString(5,acc.getContact());
		ps.setInt(6,acc.getId());
		status=ps.executeUpdate();
		con.close();
	}
		catch(Exception ex){System.out.println(ex);}
		return status;
}	

public static int deleteAccountant(int id){
	int status=0;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("delete from fee_accountant where id=?");
		ps.setInt(1,id);
		status=ps.executeUpdate();
		con.close();
	}
		catch(Exception ex){System.out.println(ex);}
		return status;
}

public static List<Accountant> getAllAccountant(){
	List<Accountant> list=new ArrayList<Accountant>();
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_accountant");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Accountant acc=new Accountant();
			acc.setId(rs.getInt(1));
			acc.setName(rs.getString(2));
			acc.setEmail(rs.getString(3));
			acc.setPassword(rs.getString(4));
			acc.setAddress(rs.getString(5));
			acc.setContact(rs.getString(6));
			list.add(acc);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}

public static Accountant getAccountantById(int id){
	Accountant acc=new Accountant();
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_accountant where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			acc.setId(rs.getInt(1));
			acc.setName(rs.getString(2));
			acc.setEmail(rs.getString(3));
			acc.setPassword(rs.getString(4));
			acc.setAddress(rs.getString(5));
			acc.setContact(rs.getString(6));
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return acc;
}
public static Accountant getAccountantByEmail(String email){
	Accountant acc=new Accountant();
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_accountant where email=?");
		ps.setString(1,String);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			acc.setId(rs.getInt(1));
			acc.setName(rs.getString(2));
			acc.setEmail(rs.getString(3));
			acc.setPassword(rs.getString(4));
			acc.setAddress(rs.getString(5));
			acc.setContact(rs.getString(6));
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return acc;
}
}
