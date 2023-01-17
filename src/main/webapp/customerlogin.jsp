<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to UTOMS</title>
        <style>
            body{
                background-image: url("background1.jpg");
                background-color: #3f6399; /* Used if the image is unavailable */
                height: 500px; /* You must set a specified height */
                background-position: center; /* Center the image */
                background-repeat: no-repeat; /* Do not repeat the image */
                background-size: cover; /* Resize the background image to cover the entire container */
            }
            .pagedetails{
                color:#fff;
                font-size: 48px;
                margin-top: 50px;
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
            #loginheading{
                color:#fff;
                font-size: 48px;
                margin-top: 50px;
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
            .loginform{
                margin-left:305px;
            }
            #uname,#pword{
                font-size: x-large;
                color:#fff;
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
            .logintable{
                border-style:solid;
                padding:50px;
                background: #bb4d4d;
                border:#bb4d4d;
            }
        </style>
    </head>
    <body>
        <p align="center" class="pagedetails">Welcome to UTOMS: Official website of Unavagam Restaurant for customers and employees</p>
        <h1 align="center" id="loginheading">Unavagam Login</h1>
        <div class="loginform">
            <form method="post" action="customerlogin" class="loginform">
                <table class="logintable">
                    <tr>
                        <td id="uname">Username</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="username" placeholder="Enter Username"></td>
                    </tr>
                    <tr>
                        <td id="pword">Password</td>
                    </tr>
                    <tr>
                        <td><input type="password" name="password" placeholder="Enter Password"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login"></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Reset"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>