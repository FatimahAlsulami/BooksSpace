<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add book request</title>
</head>
<body>
 <%
  String BName = request.getParameter("Book_Name");
  String AName = request.getParameter("Book_Auther");
  String Categ = request.getParameter("Book_Category");
  String price = request.getParameter("Price");
  DB.Connections conn = new DB.Connections();
  boolean isAdded = conn.addRequest(BName, AName, Categ, price);
  if(isAdded){%>
  <%@ include file="requestDone.jsp" %>
  <%}if(!isAdded){%>
  <%@ include file="requestNotDone.jsp" %>
  <%}%>
</body>
</html>