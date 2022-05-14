<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>each user requests list</title>
<style>
    body {
     float: center;
     font-family: Arial, Helvetica, sans-serif;
     background-color: #8B008B; 
     background-size: 100% 100%;
    }
    
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


    /* Overwrite default styles of hr */
    hr {
     float: right;
     border: 1px solid #f1f1f1;
     margin-bottom: 25px;
    }

    /* Set a style for the submit button */
 
    h1, form{
     text-align: center;
    }
    /*table style*/
    table  {
     position: relative;
     left: 10%;
     border: 1px solid black;
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
    background-color: #E6E6FA;
    background-size: 100% 100%;
    }
  </style>
  
 <%
  DB.Connections book =new DB.Connections();
  ResultSet result = book.getMyRequests();
  if(result==null){
	  System.out.println("ss");
         out.print("error");         
     }
 %>
 
 
          <div class="icon-bar">
     <a class="active" href="#"><i class="fa fa-home"></i></a> 
     <a href="Serv.jsp"><i class="fa fa-envelope"></i><img alt="1" src="home.png" /></a> 
     <a href="AboutUs.jsp">  <i class="fas fa-envelope"></i><img alt="2" src="about-us.png" /></a> 
     <a href="Logout.jsp">  <i class="fas fa-sign-out-alt"></i><img alt="2" src="logoutt.png" /></a>
</div>

 
  <h1>List <font color="#8B008B">Of</font> Requests</h1>
	
	
  <div class="container">
    <div data-duration-in="300" data-duration-out="100" class="tabs w-tabs">
      <div class="tabs-menu w-tab-menu">
           
      </div>
       <div class="tabs-content w-tab-content">
          <div data-w-tab="Tab 1" class="tab-pane-tab-1 w-tab-pane w--tab-active">
                  <table border=1 style="width:80%">  
              <tbody>
                      <tr>
                          <td>Book Name</td>
                            <td>Price</td>
                              <td>Author</td>
                                <td>Category</td>
                                 <td>Request state</td>
                      </tr>
                      <% while(result.next()) {
                    	  %>
                      <tr>
                           <td><%= result.getString("Book_Name")%></td>
                           <td><%= result.getString("Price")%></td>
                           <td><%= result.getString("Book_Auther")%></td>
                           <td><%= result.getString("Book_Category")%></td>
                           <td><%= result.getString("Request_State")%></td>
                       </tr>
                      <% } 
                      result.close();
                      %>
                     </tbody>
                    </table>
                  </div>
                 </div>
                </div>
                  <h2 style = "position: absolute; left: 430px; bottom: -470px;">Today a Reader, Tomorrow a Leader</h2>
                </div>
</body>
</html>