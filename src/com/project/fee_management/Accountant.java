package com.project.fee_management;

public class Accountant {
private int id;
private String name,email,password,address,contact;

public Accountant() {
	super();
	// TODO Auto-generated constructor stub
}

public Accountant(String name, String email, String password, String address, String contact) {
	super();
	this.name = name;
	this.email = email;
	this.password = password;
	this.address = address;
	this.contact = contact;
}

public Accountant(int id, String name, String email, String password, String address, String contact) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.password = password;
	this.address = address;
	this.contact = contact;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}

}
