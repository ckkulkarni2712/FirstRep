<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success!</title>
    <style>
        button{
            box-sizing: border-box;
                width: 90%;
                padding: 3%;
                background: rgb(82, 95, 138);
                border-bottom: 2px solid rgb(82, 95, 138);
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;
        }
        button:hover{
            box-sizing: border-box;
                width: 100%;
                padding: 3%;
                background: rgb(24, 52, 144);
                border-bottom: 2px solid rgb(24, 52, 144);
                border-top-style: none;
                border-right-style: none;
                border-left-style: none;    
                color: #fff;

        }
        .i{
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
    </style>
</head>
<body>
    <div class="i" align="center">
        <p>Thank you for shopping with Unavagam! Please shop with us again!</p>
        </div>
        <div  align="center">
        <a href="customerpanel.jsp"><button>Click here to order again!</button></a>
    </div>
    <div  align="center">
        <a href="welcomepage.jsp"><button>Click here to return to Dashboard</button></a>
    </div>
</body>
</html>