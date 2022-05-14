<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Books</title>
<style>
body {margin:0}

.icon-bar {
  width: 15%;
  background-color: #5552;
  overflow: auto;
}

.icon-bar a {
 float: left;
  width: 20%;
  text-align: center;
  padding: 10px 0;
  transition: all 0.3s ease;
  color: white;
  font-size: 36px;
}

.icon-bar a:hover {
  background-color: #8B008B;
}

.active {
  background-color: #8B008B;
}

    body {
     float: center;
     font-family: Arial, Helvetica, sans-serif;
     background-color: #8B008B; 
     background-size: 80%;
    }

    * {
     box-sizing: border-box;
    }

    /* Add padding to containers */
    .container {
     position: relative;
     width:-20%;
    height: auto;
     top: 100%;
     float: center;
     padding-top: 21px;
     padding-left:150px;
     padding-right:120px;
     padding-down:120px;
     padding-bottom:450px;
     background-color: white;
    }

    /*table style*/
    table  {
     position: relative;
     left: 10%;
     border: 3px solid black;
     border-collapse: collapse;
    }
    th, td{
     border: 1px solid black;
     border-collapse: collapse;
    }
    th:nth-child(even),td:nth-child(even) {
     background-color: #E6E6FA;
    }
       .next {
     background-color: #66000000;
     color: white;
     top: 100;
     right: -3%;
    }
   </style>
</head>
<body>
<style>
    body {
    background-color:#E6E6FA;
    background-size: 50% 100%;
    }
    	.s-heading{
		margin: 15px;
	}
	.s-heading{
	text-align:center;
	
}
  </style>
  



  
 <%
  DB.Connections book =new DB.Connections();
  ResultSet result = book.getBooks();
  if(result==null){
	  System.out.println("ss");
         out.print("error");         
     }
 %>
 
              
              
  <div class="s-heading">
  
  <!-- <a href="Serv.jsp" class="next"><i class="fa fa-home"></i> <img alt="1" src="home.png" /> </a>
  <a href="Logout.jsp" class="next"><i class="fa fa-sign-out"></i> Logout </a>
   <a href="AboutUs.jsp" class="next"><i class="fa fa-info-circle"></i> About Us </a>
   -->  
  
  
          <div class="icon-bar">
     <a class="active" href="#"><i class="fa fa-home"></i></a> 
     <a href="Serv.jsp"><i class="fa fa-envelope"></i><img alt="1" src="home.png" /></a> 
     <a href="AboutUs.jsp">  <i class="fas fa-envelope"></i><img alt="2" src="about-us.png" /></a> 
     <a href="Logout.jsp">  <i class="fas fa-sign-out-alt"></i><img alt="2" src="logoutt.png" /></a>
</div>   	

	<h1>List <font color="#8B008B">Of</font> Books</h1>
	
	<p>                   List of books that avaliable in our website</p>
	


  <div class="container">
    <div data-duration-in="200" data-duration-out="50" class="tabs w-tabs">
      <div class="tabs-menu w-tab-menu">
           
      </div>
      
       <div class="tabs-content w-tab-content">
          <div data-w-tab="Tab 1" class="tab-pane-tab-1 w-tab-pane w--tab-active">
                  <table border=2 style="width:80%">  
                
              <tbody>
                      <tr>
                         <td>Book ID</td>
                          <td>Book Name</td>
                            <td>Price</td>
                                <td>Author</td>
                          <td>Category</td>
                      </tr>
                      <% while(result.next()) {%>
                      <tr>
                           <td><%= result.getInt("Book_ID")%></td>
                           <td><%= result.getString("Book_Name")%></td>
                           <td><%= result.getString("Book_Price")%></td>
                           <td><%= result.getString("Book_Author")%></td>
                           <td><%= result.getString("Book_category")%></td>
                       </tr>
                      <% } 
                      result.close();
                      %>
                     </tbody>
                    </table>
      
                  </div>
                 </div>
                </div>
              
                </div>
                   <h2 style = "position: absolute; left: 430px; bottom: -470px;">Today a Reader, Tomorrow a Leader</h2>
</body>
</html>