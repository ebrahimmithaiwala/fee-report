package com.project.fee_management;

import com.project.fee_management.Student;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class StudentWorker {
	
public static int addStudent(Student s){
	int status=0;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("insert into fee_student(name,email,sex,course,fee,paid,due,address,contact) values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1,s.getName());
		ps.setString(2,s.getEmail());
		ps.setString(3,s.getSex());
		ps.setString(4,s.getCourse());
		ps.setInt(5,s.getFee());
		ps.setInt(6,s.getPaid());
		ps.setInt(7,s.getDue());
		ps.setString(8,s.getAddress());
		ps.setString(9,s.getContact());
		status=ps.executeUpdate();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}
public static int updateStudent(Student s){
	int status=0;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("update fee_student set name=?,email=?,sex=?,course=?,fee=?,paid=?,due=?,address=?,contact=? where rollno=?");
		ps.setString(1,s.getName());
		ps.setString(2,s.getEmail());
		ps.setString(3,s.getSex());
		ps.setString(4,s.getCourse());
		ps.setInt(5,s.getFee());
		ps.setInt(6,s.getPaid());
		ps.setInt(7,s.getDue());
		ps.setString(8,s.getAddress());
		ps.setString(9,s.getContact());
		ps.setInt(10,s.getRollno());
		status=ps.executeUpdate();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}	
public static int deleteStudent(int rollno){
	int status=0;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("delete from fee_student where rollno=?");
		ps.setInt(1,rollno);
		status=ps.executeUpdate();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}
public static int deleteStudentByName(String name){
	int status=0;
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("delete from student where name=?");
		ps.setString(1,name);
		status=ps.executeUpdate();
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	return status;
}

public static List<Student> getAllStudent(){
	List<Student> list=new ArrayList<Student>();
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_student");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Student s=new Student();
			s.setRollno(rs.getInt(1));
			s.setName(rs.getString(2));
			s.setEmail(rs.getString(3));
			s.setSex(rs.getString(4));
			s.setCourse(rs.getString(5));
			s.setFee(rs.getInt(6));
			s.setPaid(rs.getInt(7));
			s.setDue(rs.getInt(8));
			s.setAddress(rs.getString(9));
			s.setContact(rs.getString(10));
			list.add(s);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}
public static List<Student> getDues(){
	List<Student> list=new ArrayList<Student>();
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_student where due>0");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Student s=new Student();
			s.setRollno(rs.getInt(1));
			s.setName(rs.getString(2));
			s.setEmail(rs.getString(3));
			s.setSex(rs.getString(4));
			s.setCourse(rs.getString(5));
			s.setFee(rs.getInt(6));
			s.setPaid(rs.getInt(7));
			s.setDue(rs.getInt(8));
			s.setAddress(rs.getString(9));
			s.setContact(rs.getString(10));
			list.add(s);
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return list;
}

public static Student getStudentByRollno(int rollno){
	Student s=new Student();
	try{
		Connection con=DatabaseConnector.getCon();
		PreparedStatement ps=con.prepareStatement("select * from fee_student where rollno=?");
		ps.setInt(1,rollno);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			s.setRollno(rs.getInt(1));
			s.setName(rs.getString(2));
			s.setEmail(rs.getString(3));
			s.setSex(rs.getString(4));
			s.setCourse(rs.getString(5));         
			s.setFee(rs.getInt(6));
			s.setPaid(rs.getInt(7));
			s.setDue(rs.getInt(8));
			s.setAddress(rs.getString(9));
			s.setContact(rs.getString(10));
		}
		con.close();
	}catch(Exception ex){System.out.println(ex);}
	
	return s;
}

}