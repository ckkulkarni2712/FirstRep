<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Tables</title>
    <script>
        function changestatus1(){
            var table = document.getElementById("table");
                    if(table.rows[1].cells[1].innerHTML=="Unoccupied"){
                        table.rows[1].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[1].cells[1].innerHTML=="Occupied"){
                        table.rows[1].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus2(){
            var table = document.getElementById("table");
                    if(table.rows[2].cells[1].innerHTML=="Unoccupied"){
                        table.rows[2].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[2].cells[1].innerHTML=="Occupied"){
                        table.rows[2].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus3(){
            var table = document.getElementById("table");
                    if(table.rows[3].cells[1].innerHTML=="Unoccupied"){
                        table.rows[3].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[3].cells[1].innerHTML=="Occupied"){
                        table.rows[3].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus4(){
            var table = document.getElementById("table");
                    if(table.rows[4].cells[1].innerHTML=="Unoccupied"){
                        table.rows[4].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[4].cells[1].innerHTML=="Occupied"){
                        table.rows[4].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus5(){
            var table = document.getElementById("table");
                    if(table.rows[5].cells[1].innerHTML=="Unoccupied"){
                        table.rows[5].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[5].cells[1].innerHTML=="Occupied"){
                        table.rows[5].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus6(){
            var table = document.getElementById("table");
                    if(table.rows[6].cells[1].innerHTML=="Unoccupied"){
                        table.rows[6].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[6].cells[1].innerHTML=="Occupied"){
                        table.rows[6].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus7(){
            var table = document.getElementById("table");
                    if(table.rows[7].cells[1].innerHTML=="Unoccupied"){
                        table.rows[7].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[7].cells[1].innerHTML=="Occupied"){
                        table.rows[7].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus8(){
            var table = document.getElementById("table");
                    if(table.rows[8].cells[1].innerHTML=="Unoccupied"){
                        table.rows[8].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[8].cells[1].innerHTML=="Occupied"){
                        table.rows[8].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus9(){
            var table = document.getElementById("table");
                    if(table.rows[9].cells[1].innerHTML=="Unoccupied"){
                        table.rows[9].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[9].cells[1].innerHTML=="Occupied"){
                        table.rows[9].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus10(){
            var table = document.getElementById("table");
                    if(table.rows[10].cells[1].innerHTML=="Unoccupied"){
                        table.rows[10].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[10].cells[1].innerHTML=="Occupied"){
                        table.rows[10].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus11(){
            var table = document.getElementById("table");
                    if(table.rows[11].cells[1].innerHTML=="Unoccupied"){
                        table.rows[11].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[11].cells[1].innerHTML=="Occupied"){
                        table.rows[11].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus12(){
            var table = document.getElementById("table");
                    if(table.rows[12].cells[1].innerHTML=="Unoccupied"){
                        table.rows[12].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[12].cells[1].innerHTML=="Occupied"){
                        table.rows[12].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus13(){
            var table = document.getElementById("table");
                    if(table.rows[13].cells[1].innerHTML=="Unoccupied"){
                        table.rows[13].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[13].cells[1].innerHTML=="Occupied"){
                        table.rows[13].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus14(){
            var table = document.getElementById("table");
                    if(table.rows[14].cells[1].innerHTML=="Unoccupied"){
                        table.rows[14].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[14].cells[1].innerHTML=="Occupied"){
                        table.rows[14].cells[1].innerHTML="Unoccupied";
                    }
        }
        function changestatus15(){
            var table = document.getElementById("table");
                    if(table.rows[15].cells[1].innerHTML=="Unoccupied"){
                        table.rows[15].cells[1].innerHTML="Occupied";
                    }
                    else if(table.rows[15].cells[1].innerHTML=="Occupied"){
                        table.rows[15].cells[1].innerHTML="Unoccupied";
                    }
        }
</script>
<style>
    .table1{
        width:100%;
    }
    input[type=submit]{
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
 input[type=button]{
                box-sizing: border-box;
                width: 22%;
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
    width: 25%;
    padding: 1%;
    background: rgb(24, 52, 144);
    border-bottom: 2px solid rgb(24, 52, 144);
    border-top-style: none;
    border-right-style: none;
    border-left-style: none;    
    color: #fff;
 }
</style>
</head>
<body>
    <form method="post" action="managerpanel.jsp">
    <table border="1px" class="table1" id="table">
        <tr>
            <td>Table Number</td>
            <td>Table Status</td>
        </tr>
        <tr>
            <td>T01</td>
            <td>Occupied</td>
            <td><input type="button" onclick="changestatus1()" value="Change Status"></td>
        </tr>
        <tr>
            <td>T02</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus2()" value="Change Status"></td>
        </tr>
        <tr>
            <td>T03</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus3()" value="Change Status"></td>
        </tr>
        <tr>
            <td>T04</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus4()" value="Change Status"></td>
        </tr><tr>
            <td>T05</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus5()" value="Change Status"></td>
        </tr><tr>
            <td>T06</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus6()" value="Change Status"></td>
        </tr><tr>
            <td>T07</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus7()" value="Change Status"></td>
        </tr><tr>
            <td>T08</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus8()" value="Change Status"></td>
        </tr><tr>
            <td>T09</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus9()" value="Change Status"></td>
        </tr><tr>
            <td>T10</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus10()" value="Change Status"></td>
        </tr><tr>
            <td>T11</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus11()" value="Change Status"></td>
        </tr><tr>
            <td>T12</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus12()" value="Change Status"></td>
        </tr>
        <tr>
            <td>T13</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus13()" value="Change Status"></td>
        </tr>
        <tr>
            <td>T14</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus14()" value="Change Status"></td>
        </tr>
        <tr>
            <td>T15</td>
            <td>Unoccupied</td>
            <td><input type="button" onclick="changestatus15()" value="Change Status"></td>
        </tr>
    </table>
    <input type="submit" value="Done">
</form>
</body>
</html>