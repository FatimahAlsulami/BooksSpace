<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Done</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
   div.relative{
    right: 170px;
    color: white;
    text-align: left;
    font-family: "Lucida Console",Monospace;
    font-size: 30px;
    }
    a {
     text-decoration: none;
     display: inline-block;
     padding: 8px 16px;
    }

    a:hover {
     background-color: #008CBA;
     color: black;
    }
    .next {
     background-color: #eee;
     padding: 15px 32px;
     text-align: center;
     font-size: 16px;
     margin: 4px 2px;
     color: black;
     cursor: pointer;
     width: 200px;
     border-radius: 4px;
     position: relative;
     top: -50px;
    }
    .other {
     background-color: #eee;
     padding: 15px 32px;
     text-align: center;
     font-size: 16px;
     margin: 4px 2px;
     color: black;
     cursor: pointer;
     width: 200px;
     border-radius: 4px;
     position: relative;
     top: -50px;
     left: 50px
    }
  </style>
</head>
<body>
 <style>
    body {
    background-color: rgba(85,30,135);
    background-size: 100% 100%;
    }
  </style>
  <p style="position: relative; top: 50px; right: 0px; color: white; text-align: left; font-family: Lucida Console,Monospace; font-size: 30px;"> Your Add book request <br>submitted successfully </p>
   <div class="position: relative">
   <img src="OK.png" alt="Done" style= "position: relative; right: -510px; top: -80px;">
   </div>
   <a href="Services.jsp" class="next"> Back Home </a>
   <a href="AddBookRequest.jsp" class="other"> Other Add Book Request </a>
</body>
</html>