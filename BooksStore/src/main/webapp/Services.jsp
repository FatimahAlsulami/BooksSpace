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
   width: 860px;
   hight: 120px;
   top: -100;
   padding: 0px;
   margin: -10px -10px;
   text-align: left;
   background: rgba(240,240,240);
   color: white;
   font-size: 10px;
   }
   h2{
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
   bottom: 180px;
   left: 40px;
   background-color: #F2000000;
   color: white;
   padding-left: 20px;
   padding-right: 20px;
  }
  .tet-block {
   position: absolute;
   bottom: 230px;
   right: 60px;
   background-color: #F2000000;
   color: white;
   text-aling: right;
   width: 300px;
   hight: 30px;
   padding-left: 20px;
   padding-right: 20px;
   font-size: 17px;
  }
  *, *:before, *:after 
  { box-sizing: border-box; }
  html { font-size: 18px; }
  label .menu {
  position: absolute;
  right: -100px;
  top: -100px;
  z-index: 100;
  width: 200px;
  height: 200px;
  background: #FFF;
  border-radius: 50% 50% 50% 50%;
  -webkit-transition: .5s ease-in-out;
  transition: .5s ease-in-out;
  box-shadow: 0 0 0 0 #FFF, 0 0 0 0 #FFF;
  cursor: pointer;
  }

  label .hamburger {
   position: absolute;
   top: 135px;
   left: 50px;
   width: 30px;
   height: 2px;
   background: #69D2e7;
   display: block;
   -webkit-transform-origin: center;
   transform-origin: center;
   -webkit-transition: .5s ease-in-out;
   transition: .5s ease-in-out;
  }

  label .hamburger:after, label .hamburger:before {
   -webkit-transition: .5s ease-in-out;
   transition: .5s ease-in-out;
   content: "";
   position: absolute;
   display: block;
   width: 100%;
   height: 100%;
   background: #69d2e7;
  }

  label .hamburger:before { top: -10px; }

  label .hamburger:after { bottom: -10px; }

  label input { display: none; }

  label input:checked + .menu {
   box-shadow: 0 0 0 100vw #FFF, 0 0 0 100vh #FFF;
   border-radius: 0;
  }

  label input:checked + .menu .hamburger {
   -webkit-transform: rotate(45deg);
   transform: rotate(45deg);
  }

  label input:checked + .menu .hamburger:after {
   -webkit-transform: rotate(90deg);
   transform: rotate(90deg);
   bottom: 0;
  }

  label input:checked + .menu .hamburger:before {
   -webkit-transform: rotate(90deg);
   transform: rotate(90deg);
   top: 0;
  }

  label input:checked + .menu + ul { opacity: 1; }

  label ul {
   z-index: 200;
   position: absolute;
   top: 50%;
   left: 50%;
   -webkit-transform: translate(-50%, -50%);
   transform: translate(-50%, -50%);
   opacity: 0;
   -webkit-transition: .25s 0s ease-in-out;
   transition: .25s 0s ease-in-out;
  }

  label a {
   margin-bottom: 1em;
   display: block;
   color: #550a8a;
   text-decoration: none;
   text-align: center;
   font-size: 17px;  
  }

  h1 {
   position: absolute;
   top: 50%;
   left: 50%;
   -webkit-transform: translate(-50%, -50%);
   transform: translate(-50%, -50%);
   width: 80%;
   text-align: center;
  }
 </style>
</head>
<body>
  <div class="header">
  <label>
   <input type="checkbox">
   <span class="menu"> <span class="hamburger"></span> </span>
   <ul>
    <li> <a href="Services.jsp">Home</a> </li>
    <li> <a href="AddBookRequest.jsp">Add book</a> </li>
    <li> <a href="DeleteBookForm.jsp">Delete book</a> </li>
    <li> <a href="ShowBooks.jsp">Show my books</a> </li>
    <li> <a href="Logout.jsp">Log out</a> </li>
   </ul>
  </label>
   <img src="logo.png" style = "position:relative; left:-15px; top:-13px; width: 200px; hight: 190px;">
   <p style="color: black; position: relative; top:-50px; left: 20px;">User ID: <%out.print(DB.Connections.getID());%></p>
  </div>
  <div class="container">
  <img src="back.jpg" style = "position:relative; left:-14px; top:-30px; width: 865px; hight: 220px;">
  <div class="text-block">
    <p style = "font-family: Courier New, monospace; font-size: 80px;">BOOKS</p>
    <p style = "font-family: Courier New, monospace; font-size: 80px;">SPACE</p>
  </div>
  <div class="tet-block">
    <p style = "font-family: Times New Roman, Serif;">Our website helps to maintain sustainability. By enabling user to exchange books by reselling them. And also enable user to request recycling cover of the books and present all shops that provide this services and their locations, user can choose the nearest shop of his location. Our website is one of the best opportunities for those who cannot afford enough time to get their course books. Also to reusing books instead of throwing them away</p>
  </div>
</div>
    
   <h2 style = "position: absolute; left: 200px; bottom: -377px;">Today a Reader, Tomorrow a Leader</h2>
</body>
</html>