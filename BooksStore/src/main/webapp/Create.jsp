<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
 <title>Create</title>
</head>
<body>
 <%
  String fName = request.getParameter("Fname");
  String lName = request.getParameter("Lname");
  String email = request.getParameter("Email");
  String password = request.getParameter("Pass");
  DB.Connections conn = new DB.Connections();
  boolean isAdded = conn.addUser(fName, lName, email, password);
  if(isAdded)%>
  <%@ include file="Services.jsp" %>
  <%if(!isAdded)%>
  <%@ include file="Index.jsp" %>
  <%
  %>
</body>
</html>