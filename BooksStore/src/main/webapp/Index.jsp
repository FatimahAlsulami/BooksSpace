<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
 <head>
 <meta charset="ISO-8859-1">
 <title>Home page</title>
 <style>
   body {
   background-color: #170a45;
   }
   .header {
   position: relavint;
   width: 1300px;
   hight: 120px;
   top: -100;
   padding: 0px;
   margin: -10px -10px;
   text-align: left;
   background: rgba(240,240,240);
   color: white;
   font-size: 10px;
   }
   h1{
   text-align: center;
   color: white;
   position: relavint;
   bottom: 80px;
   }
    input[type=submit], input[type=reset] {
    background-color: #5D3FD3;
    border: none;
    color: white;
    padding: 12px 27px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 16px
   }
   .container {
    position: relative;
    font-family: Arial;
   }
  .text-block {
   position: absolute;
   bottom: 360px;
   left: 100px;
   background-color: #F2000000;
   color: white;
   padding-left: 20px;
   padding-right: 20px;
  }
  .tet-block {
   position: absolute;
   bottom: 350px;
   right: 70px;
   background-color: #F2000000;
   color: white;
   text-aling: right;
   width: 330px;
   hight: 30px;
   padding-left: 20px;
   padding-right: 20px;
  }
 </style>
</head>
<body>
  <div class="header">
   <img src="logo.png" style = "position:relative; left:-15px; top:-13px; width: 200px; hight: 290px;">
   <form action="Login.jsp">
    <input type="submit" value="Log in" style = "position:relative; left: 1100px; top: -110px; "/>
   </form>
   <form action="SignUp.jsp">
    <input type="submit" value="Sign Up" style = "position:relative; left: 980px; top: -157px; "/>
   </form>
  </div>
  <img src="back.jpg" style = "position:relative; left:-14px; top:-120px; width: 1300px; hight: 157px;">
  <div class="container">
  
  <div class="text-block">
    <p style = "font-family: Courier New, monospace; font-size: 130px;">BOOKS</p>
    <p style = "font-family: Courier New, monospace; font-size: 130px;">SPACE</p>
  </div>
  <div class="tet-block">
    <p style = "font-family: Times New Roman, Serif; font-size: 27px;">Our website helps to maintain sustainability. By enabling user to exchange books by reselling them. And also enable user to request recycling cover of the books and present all shops that provide this services and their locations, user can choose the nearest shop of his location. Our website is one of the best opportunities for those who cannot afford enough time to get their course books. Also to reusing books instead of throwing them away</p>
  </div>
</div>
   <h1 style = "position: absolute; left: 369px; bottom: -450px;">Today a Reader, Tomorrow a Leader</h1>
</body>
</html>