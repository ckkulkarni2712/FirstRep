package com.project1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Customer {
	public boolean Login(String a,String b) throws SQLException, ClassNotFoundException {
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("SELECT * FROM users WHERE name=? AND password=?");
		boolean res=true;
		st.setString(1,a);
		st.setString(2,b);
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			res=true;
		}
		else {
			res=false;
		}
		return res;
	}	
	}
