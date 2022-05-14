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
    body {
     float: center;
     font-family: Arial, Helvetica, sans-serif;
     background-color: black; 
     background-size: 100% 100%;
    }

    * {
     box-sizing: border-box;
    }

    /* Add padding to containers */
    .container {
     position: relative;
     width: 98%;
     hight: 1000%;
     float: right;
     padding: 16px;
     background-color: white;
    }



    /* Overwrite default styles of hr */
    hr {
     float: right;
     border: 1px solid #f1f1f1;
     margin-bottom: 25px;
    }

    /* Set a style for the submit button */
    .registerbtn {
     position: relative;
     background-color: rgba(20,10,100);
     color: white;
     padding: 16px 20px;
     margin: 8px 0px;
     border: none;
     cursor: pointer;
     width: 30%;
     position: <br>;
     top: 100%;
     left: 37%;
     opacity: 0.9;
    }

    .registerbtn:hover {
     opacity: 1;
    }
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
     background-color: #D6EEEE;
    }
   </style>
</head>
<body>
<style>
    body {
    background-color: rgba(219,209,219);
    background-size: 100% 100%;
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
 
  <h1 class="heading">List of Books</h1>
  <div class="container">
    <div data-duration-in="300" data-duration-out="100" class="tabs w-tabs">
      <div class="tabs-menu w-tab-menu">
           
      </div>
       <div class="tabs-content w-tab-content">
          <div data-w-tab="Tab 1" class="tab-pane-tab-1 w-tab-pane w--tab-active">
                  <table border=1 style="width:80%">  
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
                <form action= "Admin_Home_Page.jsp" style="text-align: center; position: relative; left: -290px;">
                <br><br><button type="submit" class="registerbtn">Back Home</button>
                </form>
                </div>
</body>
</html>