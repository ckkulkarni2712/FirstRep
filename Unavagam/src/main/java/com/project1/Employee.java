package com.project1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Employee{

	public void details() throws SQLException, ClassNotFoundException{
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("SELECT * FROM users");
		ResultSet rs=st.executeQuery();
		while(rs.next()==true) {
			int id=rs.getInt("ID");
			String empName=rs.getString("name");
			String role=rs.getString("userType");
			System.out.println("ID:"+id+"\tempName: "+empName+"\tRole: "+role);
		}
	}
	public boolean addEmp(String name,String password,String type,int ID) throws SQLException, ClassNotFoundException {
		boolean flag=true;
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("INSERT INTO users values(?,?,?,?)");
		st.setString(1,name);
		st.setString(2,password);
		st.setString(3, type);
		st.setInt(4, ID);
		int rs=st.executeUpdate();
		if(rs>0) {
			flag=true;
		}
		else {
			flag=false;
		}
		return flag;
	}
	public boolean empname(String name,int id) throws SQLException, ClassNotFoundException {
		boolean flag=true;
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("UPDATE users SET name=? WHERE ID=?");
		st.setString(1, name);
		st.setInt(2, id);
		int rs=st.executeUpdate();
		if(rs>0) {
			flag=true;
		}
		else {
			flag=false;
		}
		return flag;
	}
	public boolean password(String password,int id) throws SQLException, ClassNotFoundException {
		boolean flag=true;
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("UPDATE users SET password=? WHERE ID=?");
		st.setString(1, password);
		st.setInt(2, id);
		int rs=st.executeUpdate();
		if(rs>0) {
			flag=true;
		}
		else {
			flag=false;
		}
		return flag;
	}
	public void all(String name,String password,String role,int id) throws SQLException, ClassNotFoundException {
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("UPDATE users SET name=? password=? role=? WHERE ID=?");
		st.setString(1,name);
		st.setString(2,password);
		st.setString(3, role);
		st.setInt(4, id);
		int rs=st.executeUpdate();
		if(rs>0) {
			System.out.println("Details updated successfully");
		}
	}
	public boolean delete(int id) throws SQLException, ClassNotFoundException {
		boolean flag=true;
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("DELETE FROM users WHERE ID=?");
		st.setInt(1, id);
		int rs=st.executeUpdate();
		if(rs>0) {
			flag=true;
		}
		else {
			flag=false;
		}
		return flag;
		
	}
	
}