<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Enter details
        </title>
        <style>
     body{
            	background-image: url("admin.jpeg");
                background-color:#3f6399;
                height: 600px; 
                background-position: center; 
                background-repeat: no-repeat; 
                background-size: cover; 
            }
            #ii{
                border-style:solid;
                padding:50px;
                background: #bb4d4d;
                border:#bb4d4d;
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
        <h1>Enter details</h1>
        <div id="i">
        <form  method="post" action="userdetails">
            <table id="ii">
                <tr>
                    <td>User Name</td>
                </tr>
                <tr>
                    <td><input type="text" name="username" placeholder="Enter Username" required></td>
                </tr>
                <tr>
                    <td>Password</td>
                </tr>
                <tr>
                    <td><input type="text" name="password" placeholder="Enter Password" required></td>
                </tr>
                <tr>
                    <td>Role</td>
                </tr>
                <tr>
                    <td><input type="text" name="role" placeholder="Enter Role" required></td>
                </tr>
                <tr>
                    <td>ID</td>
                </tr>            
                <tr>
                    <td><input type="text" name="ID" placeholder="Enter ID" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Reset"></td>
                </tr>
            </table>
        </form>
        </div>
    
    </body>
</html>