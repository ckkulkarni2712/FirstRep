package com.project1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	static Connection con;
	public Connection getConnection() throws SQLException,ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/unavagam","root","Chandu@2000");
		return con;
	}

}
