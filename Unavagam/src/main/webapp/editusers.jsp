<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Add User Details
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
            #i{
                font-size: x-large;
                color:#f04;
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
        </style>
    </head>
    <body>
        <div id="i" align="center">
            <h1>Select which kind of operation you want to perform</h1>
        </div>
        <div align="center">
            <a href="newuser.jsp" id="iii"><button>New User</button></a>
            <a href="updateuser.jsp" id="iv"><button>Update User</button></a>
            <a href="deleteuser.jsp" id="v"><button>Delete User</button></a>
            <a href="displayuser.jsp" id="vi"><button>Display Users</button></a>
            </div>
    </body>
</html>