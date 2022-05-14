<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin verification</title>
</head>
<style>
    body {
     float: center;
     font-family: Arial, Helvetica, sans-serif;
     background-color: #7319c8; 
    }

    * {
     box-sizing: border-box;
    }

    /* Add padding to containers */
    .container {
     display: inline-block;
     position: relative;
     width: 100%;
     float: left;
     padding: 16px;
     background-color: white;
     background-size: 100% 100%;
    }

    /* Full-width input fields */
    input[type=text], input[type=password], input[type=number] {
     width: 95%;
     padding: 15px;
     margin: 5px 0 22px 0;
     display: inline-block;
     border: none;
     background: #f1f1f1;
    }


    /* Overwrite default styles of hr */
    hr {
     float: right;
     border: 1px solid #f1f1f1;
     margin-bottom: 25px;
    }

    /* Set a style for the submit button */
    .registerbtn {
     background-color: rgba(20,10,100);
     color: white;
     padding: 16px 20px;
     margin: 8px 0px;
     border: none;
     width: 30%;
     left: 50px;
     opacity: 0.9;
    }

    .registerbtn:hover {
     opacity: 1;
    }

    /* Add a blue text color to links */
    a {
     color: dodgerblue;
    }
    h1, h5{
    text-align: center;
    }
   </style>
<body>

<div class="container">
<form name="loginForm" action="verification.jsp" method="POST"> 

    <h1>Admin Questions</h1>
    <p>Answer questions to verify your identity.</p>
    <hr>

    <label for="email"><b>Course of this project:</b></label>
    <input type="text" placeholder="Only course code without - " name="Fname" size="20" onkeypress="return /[0-9a-zA-Z]/i.test(event.key)" required>
<br>
    <label for="email"><b>Project name:</b></label>
    <input type="text" placeholder="Only words" name="user_ID" size="20" onkeypress="return /[0-9a-zA-Z]/i.test(event.key)" required>
<br>
    <label for="psw"><b>How old will you be in 2030:</b></label>
    <input type="number" placeholder="Only numbers" name="Pass" size="20" required>
    
    <h5>Any wrong answer will return you to Log in page</h5>
    
    <button type="submit" class="registerbtn">Check</button> 
</form>
<form name="loginForm" action="Login.jsp" method="POST">
      <button type="submit" class="registerbtn">Back</button>
</form>
 </div>
</body>
</html>