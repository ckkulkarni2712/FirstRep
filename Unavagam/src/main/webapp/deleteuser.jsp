<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Detail Update</title>
        <style>
			body{
            	background-image: url("admin.jpeg");
                background-color:#3f6399;
                height: 600px; 
                background-position: center; 
                background-repeat: no-repeat; 
                background-size: cover; 
            }
            input[type=text],input[type=password] {
                width: 100%;
                padding: 2px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                
            }
            input[type=submit],input[type=reset]{
                box-sizing: border-box;
                width: 100%;
                padding: 3%;
                background: rgb(82, 95, 138);
                border-bottom: 2px solid rgb(82, 95, 138);;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
            }
        </style>
    </head>
    <body>
        <h1 id="i">Enter ID</h1>
        <form method="post" action="deleteuser">
            <table id="ii">
                <tr>
                    <td>ID</td>
                </tr>
                <tr>
                    <td><input type="text" name="ID" placeholder="Enter ID"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>