package com.project1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Manager{
	public boolean Login(String a,String b) throws SQLException, ClassNotFoundException {
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("SELECT * FROM users WHERE name=? AND password=?");
		boolean res=true;
		try {
			st.setString(1, a);
			st.setString(2,b);
			ResultSet rs=st.executeQuery();
			if(rs.next()==true) {
				res=true;
			}
			else {
				res=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return res;
		
	}
	public void tableDetails() throws SQLException, ClassNotFoundException {
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		PreparedStatement st=con.prepareStatement("SELECT * FROM tabledetails");
		ResultSet rs=st.executeQuery();
		while(rs.next()==true) {
			String tableNumber=rs.getString("tableNO");
			String tableStatus=rs.getString("tableStatus");
			System.out.println("Table Number: "+tableNumber+" \tStatus: "+tableStatus);
		}
	}
	public void billDetails(String[] orderMenu) throws SQLException, ClassNotFoundException {
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		String rate="";	
		System.out.println("||Item         Price||");
		System.out.println("-----------------------------");
		for(int i=0;i<orderMenu.length;i++) {
				String str=orderMenu[i];
				PreparedStatement st=con.prepareStatement("SELECT dishRate FROM items WHERE itemName=?");
				st.setString(1,str);
				ResultSet rs=st.executeQuery();
				while(rs.next()==true) {
				rate=rs.getString("dishRate");
				System.out.println("||"+orderMenu[i]+"         "+rate+"||");
			}
		}
	}
	public double calculateBill(String[] orderMenu) throws SQLException, ClassNotFoundException {
		Connector cn=new Connector();
		Connection con=cn.getConnection();
		int itemCount=orderMenu.length;
		int bill=0;
		for(int i=0;i<itemCount;i++) {
			String str=orderMenu[i];
			if(str!=null) {
				PreparedStatement st=con.prepareStatement("SELECT sum(dishRate) FROM items WHERE itemName=? AND dishRate IS NOT NULL;");
				st.setString(1, str);
				ResultSet rs=st.executeQuery();
				rs.next();
				double dR=Double.parseDouble(rs.getString("sum(dishRate)"));
	
				bill+=dR;
			}
			
		}
		return bill;
	}
	/*public void tableStatusChange(Connection con,Statement st,int seatCount) {
		String query="UPDATE tabledetails SET tableStatus='Occupied' WHERE tableNO='T01' AND tableStatus<>'Occupied'";
	}*/
}