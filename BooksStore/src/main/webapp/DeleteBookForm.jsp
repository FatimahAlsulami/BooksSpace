<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <style>
    body {
     float: right;
     font-family: Arial, Helvetica, sans-serif;
     background-color: #800080; 
     background-size: 50% 100%;
    }

    * {
     box-sizing: border-box;
    }

    /* Add padding to containers */
    .container {
     display: inline-block;
     position: relative;
     width: 100%;
     Hight:100%;
     float: right;
     right: 7px;
     padding: 29px;
     background-color: white;
     background-size: 80% 100%;
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
    a {
     text-decoration: none;
     display: inline-block;
     padding: 8px 16px;
    }

    a:hover {
     background-color: RoyalBlue;
     color: black;
    }
    .next {
     background-color: #66000000;
     color: white;
     position: relative;
     top: 100;
     left: 10px;
    }
   </style>

</head>
<body>
   <style>
    body {
    background-image: url('bokadd.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 48% 100%;
    }
  </style>
  <a href="Services.jsp" class="next"><i class="fa fa-home"></i> Home </a>
    <a href="Logout.jsp" class="next"><i class="fa fa-sign-out"></i> Logout </a>
   <a href="AboutUs.jsp" class="next"><i class="fa fa-info-circle"></i> About Us </a>
<form action="DeletBook.jsp">
  <div class="container">
    <h1>Delete Book Request</h1>
    <p>Please fill in this form to complete delete request.</p>
    <hr>

    <label for="email"><b>Book name</b></label>
    <input type="text" placeholder="Book title" name="Book_Name" required>

    <label for="email"><b>Author name</b></label>
    <input type="text" placeholder="Book Author name" name="Book_Author" required>
    
    <hr>
    <p> you can only delete your books </p>
    <br><br><br><br><br><br><br><br>
    <button type="submit" class="registerbtn">Delete Book</button>
    <button type="reset" class="registerbtn">Reset</button>
  </div>
</form>
</body>
</html>