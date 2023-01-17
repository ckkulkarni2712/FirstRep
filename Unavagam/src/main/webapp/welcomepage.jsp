<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UTOMS Dashboard</title>
        <style>
            body{
                background-image: url("background1.jpg");
                background-color: #3f6399; /* Used if the image is unavailable */
                height: 500px; /* You must set a specified height */
                background-position: center; /* Center the image */
                background-repeat: no-repeat; /* Do not repeat the image */
                background-size: cover; /* Resize the background image to cover the entire container */
                
            }
            .selectfrom{
                color:#fff;
                font-size: 24px;
                margin-top: 50px;
                text-shadow:
                    0 0 7px #fff,
                    0 0 10px #fff,
                    0 0 21px #fff,
                    0 0 42px #00f,
                    0 0 82px #0fa,
                    0 0 92px #0fa,
                    0 0 102px #00f,
                    0 0 151px #0fa;
            }
            #i{
                color:#fff;
                font-size: 24 px;
                margin-top: 50px;
                text-shadow:
                    0 0 7px #fff,
                    0 0 10px #fff,
                    0 0 21px #fff,
                    0 0 42px #00f,
                    0 0 82px #0fa,
                    0 0 92px #0fa,
                    0 0 102px #00f,
                    0 0 151px #0fa;
            
                }
            #ii button{
                box-sizing: border-box;
                width: 50%;
                padding: 3%;
                background: #3498db;
                border-bottom: 2px solid #177cc0;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
                border-radius: 50%;
            }
            #iii button{
                border-radius: 50%;
                box-sizing: border-box;
                width: 50%;
                padding: 3%;
                background: #3498db;
                border-bottom: 2px solid #177cc0;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
            }
            #iv button{
                border-radius: 50%;
                box-sizing: border-box;
                width: 50%;
                padding: 3%;
                background: #3498db;
                border-bottom: 2px solid #177cc0;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
            }
            #ii button:hover{
                border-radius: 70%;
                box-sizing: border-box;
                width: 50%;
                padding: 4.4%;
                background: #1b58c2;
                border-bottom: 2px solid #1b58c2;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
            }
            #iii button:hover{
                border-radius: 70%;
                box-sizing: border-box;
                width: 50%;
                padding: 4.4%;
                background: #1b58c2;
                border-bottom: 2px solid #1b58c2;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
            }
            #iv button:hover{
                border-radius: 70%;
                box-sizing: border-box;
                width: 50%;
                padding: 4.4%;
                background: #1b58c2;
                border-bottom: 2px solid #1b58c2;
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div id="i" align="center">
            <h1>Welcome to UTOMS Dashboard: Landing page for both Employees and Customers of Unavagam Restaurant</h1>
        </div>
        <div class="selectfrom" align="center">
            <p>Are you a/an...?</p>
        </div>
        <div class="select" align="center">
        <a href="loginpage.jsp" id="ii"><button>Admin</button></a>
        <a href="managerlogin.jsp" id="iii"><button>Manager</button></a>
        <a href="customerlogin.jsp" id="iv"><button>Customer</button></a>
    </div>
    </body>
</html>