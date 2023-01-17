<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Manager Panel</title>
        <style>
            body{
                background-image: url("manager.jpg");
                background-color: #3f6399; /* Used if the image is unavailable */
                height: 600px; /* You must set a specified height */
                background-position: center; /* Center the image */
                background-repeat: no-repeat; /* Do not repeat the image */
                background-size: cover; /* Resize the background image to cover the entire container */
            }
            #i{
                font-size: x-large;
                    color:white;
                    text-shadow:
                        0 0 7px #fff,
                        0 0 10px #fff,
                        0 0 21px #fff,
                        0 0 42px #00a,
                        0 0 82px #00a,
                        0 0 92px #0fa,
                        0 0 102px #0fa,
                        0 0 151px #0fa;
            }
            #ii{
                font-size: x-large;
                    color:white;
                    text-shadow:
                        0 0 7px #fff,
                        0 0 10px #fff,
                        0 0 21px #fff,
                        0 0 42px #00a,
                        0 0 82px #00a,
                        0 0 92px #0fa,
                        0 0 102px #0fa,
                        0 0 151px #0fa;
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
            #v button:hover{
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
            #vi button:hover{
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
            #vii button:hover{
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
            #v button{
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
            #vi button{
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
            #vii button{
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
        </style>
    </head>
    <body>
        <div id="i" align="center">
            <p>Welcome to Manager Panel</p>
        </div>
        <div id="ii" align="center">
            <p>What would you like to do today?</p>
        </div>
        <div id="iii" align="center">
            <a href="displayuser.jsp" id="iv"><button>Users list</button></a>
            <a href="displaymenu.jsp" id="v"><button>Menu List</button></a>
            <a href="displaytable.jsp" id="vi"><button>Table Status</button></a>
            <a href="tablemanagement.jsp" id="vi"><button>Manage Table Status</button></a>
            <a href="welcomepage.jsp" id="vii"><button>Logout</button></a>
        </div>
    </body>
</html>