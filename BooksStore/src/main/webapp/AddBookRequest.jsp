<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add book request</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
     float: right;
     font-family: Arial, Helvetica, sans-serif;
     background-color: #89CFF0; 
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
    input[type=text], input[type=password] ,input[type=number] , .colored{
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
     position: fixed;
     top: 100;
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
<form name="loginForm" action="addBook.jsp" method="POST">
  <div class="container">
    <h1>Add new book request</h1>
    <p>Please insert required book information then wait acceptance.</p>
    <hr>

    <label for="email"><b>Book title:</b></label>
    <input type="text" placeholder="Book title" name="Book_Name" size="20" onkeypress="return /[0-9a-zA-Z]/i.test(event.key)" required>

    <label for="email"><b>Author Name:</b></label>
    <input type="text" placeholder="Book author name" name="Book_Auther" size="20" onkeypress="return /[0-9a-zA-Z]/i.test(event.key)" required>

    <label for="psw" ><b>Category:&nbsp&nbsp&nbsp</b></label><br>
    <select class="colored" name="Book_Category" required >
      <option class="colored" >Math</option>
      <option class="colored">Science</option>
      <option class="colored">Religious</option>
      <option class="colored">Programming</option>
     </select><br><br>
    <hr>
    
    <label for="email"><b>Book price:</b></label><br>
    <input type="number" placeholder="Book price by SAR" name="Price" size="20" min="0.00" max="10000.00" step="0.01" required "> 
    <br>
    <button type="submit" class="registerbtn">Request</button>
    <button type="reset" class="registerbtn">Reset</button>
  </div>
  <div class="container signin">
    <p>You can show here rule of book acceptance <a href="#">Books rules</a>.</p>
  </div>
</form>
</body>
</html>