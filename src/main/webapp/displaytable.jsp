<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<style>
.i {
      width: 100%;
  	  border: 1px solid #000;
}

th, td {
  width: 25%;
  text-align: left;
  vertical-align: top;
  border: 1px solid #000;
  border-collapse: collapse;
  padding: 0.3em;
  caption-side: bottom;
}
#ii{
	background-color: #177cc0;
}
</style>

<form method="post">
<p>User Details</p>
<table border="1" class="i">
   <tr id="ii">   
        <td>Table Number</td>
        <td>Table Status</td>
   </tr>
   <%
   try
   {
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/unavagam","root","Chandu@2000");
       String query="select * from tabledetails";
       Statement stmt=con.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
 		<tr><td><%out.println(rs.getString("tableNO")); %></td>
       <td><%out.println(rs.getString("tableStatus")); %></td></tr>

   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        con.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>
<a href="managerpanel.jsp">Click here to go back to Manager Page</a>