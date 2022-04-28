<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Register</title>
   <style>
    body {
     float: right;
     font-family: Arial, Helvetica, sans-serif;
     background-color: #7319c8; 
     background-size: 50% 100%;
    }

    * {
     box-sizing: border-box;
    }

    /* Add padding to containers */
    .container {
     display: inline-block;
     position: relative;
     width: 51%;
     float: right;
     padding: 16px;
     background-color: white;
     background-size: 50% 100%;
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
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
     cursor: pointer;
     width: 30%;
     position: <br>;
     top: 100%;
     left: 50%;
     opacity: 0.9;
    }

    .registerbtn:hover {
     opacity: 1;
    }

    /* Add a blue text color to links */
    a {
     color: dodgerblue;
    }

    /* Set a grey background color and center the text of the "sign in" section */
    .signin {
     /*display: inline-block;*/
     position: relative;
     width: 51%;
     background-color: #f1f1f1;
     text-align: center;
     float: right;
    }
   </style>
</head>
<body>
  
 <style>
    body {
    background-image: url('reg.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 48% 100%;
    }
  </style>
<form name="loginForm" action="Create.jsp" method="POST">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email"><b>First name:</b></label>
    <input type="text" placeholder="Your first name" name="Fname" size="20" onkeypress="return /[0-9a-zA-Z]/i.test(event.key)" required>

    <label for="email"><b>Last Name:</b></label>
    <input type="text" placeholder="Your last name" name="Lname" size="20" onkeypress="return /[0-9a-zA-Z]/i.test(event.key)" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Your Email" name="Email" size="30" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="Pass" size="20" required>

    <!-- <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
    <hr> -->
    <button type="submit" class="registerbtn">Register</button>
    <button type="reset" class="registerbtn">Reset</button>
  </div>
  <div class="container signin">
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <p>Already have an account? <a href="login.jsp">Sign in</a>.</p>
  </div>
</form>
</body>
</html>