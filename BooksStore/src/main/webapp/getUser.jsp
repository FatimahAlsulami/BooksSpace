<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER INFO</title>
</head>
<body>
<%
    String Fname= request.getParameter("Fname");
    String Lname= request.getParameter("user_ID");
    String pass= request.getParameter("Pass");
    if( Fname != null && Fname.length() !=0&& pass.length()!=0){
	 DB.Connections connection =new DB.Connections();
	 ResultSet resultSet=connection.getUser(Fname,Lname, pass);
	 if(resultSet.next()) {
		 session.setAttribute("Fname", Fname);
		 session.setAttribute("user_ID", Lname);
		 session.setAttribute("Pass", pass);
		 session.setMaxInactiveInterval(5);
		 %><%@ include file="Services.jsp" %><%
		//  out.print("<a href='ShowUser.jsp'> Show </a> |");

      }else {
    	  %><%@ include file="SignUp.jsp" %><%
     }
 //else
 //redirect user login page with appropitate message
    }else{
       response.sendRedirect("Login.jsp");
      }
 %>
</body>
</html>