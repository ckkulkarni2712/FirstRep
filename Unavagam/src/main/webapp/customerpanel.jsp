<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style>
.i {
      width: 50%;
  	  border: 1px solid #000;
}
.table2{
	box-sizing: border-box;
	position: fixed;
    top: 200;
    left: 1000;
    z-index: 999;
    width: 100%;
    height: 23px;
    padding: 2px;
}
#billvalue{
	
              font-size: x-large;
                color:#000;
                text-shadow:
                    0 0 7px #fff,
                    0 0 10px #fff,
                    0 0 21px #fff,
                    0 0 42px #0fa,
                    0 0 82px #0fa,
                    0 0 92px #0fa,
                    0 0 102px #0fa,
                    0 0 151px #0fa;
}
input[type=submit],input[type=button]{
                box-sizing: border-box;
                width: 7%;
                padding: 1%;
                background: rgb(82, 95, 138);
                border-bottom: 2px solid rgb(82, 95, 138);;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
 }
 input[type=submit]:hover{
 	box-sizing: border-box;
    width: 10%;
    padding: 1%;
    background: rgb(24, 52, 144);
    border-bottom: 2px solid rgb(24, 52, 144);
    border-top-style: none;
    border-right-style: none;
    border-left-style: none;    
    color: #fff;
 }
 input[type=button]:hover{
 		box-sizing: border-box;
        width: 10%;
        padding: 1%;
        background: rgb(24, 52, 144);
        border-bottom: 2px solid rgb(24, 52, 144);
        border-top-style: none;
        border-right-style: none;
        border-left-style: none;    
        color: #fff;
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
	background-color:red;
}
nav{
	border:2px solid red;
}
ul{
	display:flex;
	gap:100px;
	justify-content:center;
}
ul li {
    list-style: none;
    cursor: pointer;
}
ul li:hover{
	 background: rgb(82, 95, 138);
     border-bottom: 2px solid rgb(82, 95, 138);;
     border-top-style: none;
     border-right-style: none;
     border-left-style: none;    
     color: #fff;
} 
</style>
<nav>
<ul>
<li id="menu_nav">Menu</li>
<li id="order_nav">Order List</li>
<li id="status_nav">Order Status</li>
<li id="bill_nav">Bill Payment</li>
</ul>
</nav>
<div class="table1">
<form method="post">
<p>Menu Details</p>
<table border="1" class="i" id="menu">
   <tr id="ii">   
        <td>Item Name</td>
        <td>Price</td>
   </tr>
   <%
   try
   {
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/unavagam","root","Chandu@2000");
       String query="select * from items";
       Statement stmt=con.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
 		<tr><td><%out.println(rs.getString("itemName")); %></td>
       <td><%out.println(rs.getString("dishRate")); %></td>
       <td><input type="checkbox"></td></tr>

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
   <input type="button" value=Submit class="addtocart">
</form>
</div>
<div class="table2">
<p id="carttext">Cart</p>
<form method="post" action=ordersuccess.jsp>
<table border="1" class="v" id="orders">
   <tr id="vi">  
   		<td>Item Name</td> 
        <td>Price</td>
   </tr>
   </table>
   <input type="button" onclick="calculatebill()" value="Calculate Bill">
   <input type="button" class="deletecart" value="Remove">
   <input type="submit" value="Submit">
</form>
<span id="billvalue"></span>

</div>
<script>
$(function(){
	$(document).on("click",".addtocart",function(){
		var selected=$(".i input:checked").parents("tr").clone().appendTo($(".v tbody").add(selected));
	})
})
$(function(){
	$(document).on("click",".deletecart",function(){
		var deleted=$(".v input:checked").parents("tr").remove();
	})
})

function calculatebill(){
		var table=document.getElementById("orders");
		var sumVal=0.00;
		for(var i=1;i<table.rows.length;i++){
			sumVal = sumVal + parseFloat(table.rows[i].cells[1].innerHTML);
		}
		document.getElementById("billvalue").innerHTML = "Your Bill would be: Rs." + sumVal + "/-";
	}
</script>
<a href="adminpanel.jsp">Click here to go back to Admin Page</a>