<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
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
        .msg{
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

    </style>
</head>
<body>
    <div id="i" align="center">
        <h1>Welcome Michael</h1>
    </div>
    <div id="ii" align="center">
        <p class="msg">What would you like to do today?</p>
    </div>
    <div class="selection" align="center">
        <a href="editusers.jsp" id="iii"><button>Users</button></a>
        <a href="edititems.jsp" id="iv"><button>Items</button></a>
        </div>
</body>
</html>