package com.project1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Menu{
	public boolean addMenu(String item,Double price) throws SQLException, ClassNotFoundException {
		boolean flag=true;
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareCall("INSERT INTO items values(?,?)");
		st.setString(1, item);
		st.setDouble(2, price);
		int rt=st.executeUpdate();
		if(rt>0) {
			flag=true;
		}
		else {
			flag=false;
		}
		return flag;
	}
	public boolean updateMenu(String item,Double price) throws SQLException, ClassNotFoundException{
		boolean flag=true;
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareCall("UPDATE items SET dishRate=? WHERE itemName=?");
		st.setDouble(1, price);
		st.setString(2, item);
		int rt=st.executeUpdate();
		if(rt>0) {
			flag=true;
		}
		else {
			flag=false;
		}
		return flag;
	}
	public void displayMenu() throws ClassNotFoundException, SQLException {
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareCall("SELECT * FROM items");
		try {
		ResultSet rs=st.executeQuery();
		System.out.println("||Item					Price||");
		System.out.println("------------------------------------------");
		while(rs.next()==true) {
			String itemName=rs.getString("itemName");
			String dishRate=rs.getString("dishRate");
			System.out.println("||"+itemName+"                                 "+dishRate+"||");
		}
		}
		catch(Exception sqle) {
			sqle.printStackTrace();
		}
	}
	public boolean delete(String itemname) throws SQLException, ClassNotFoundException {
		boolean flag=true;
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("DELETE FROM items WHERE itemName=?");
		st.setString(1, itemname);
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