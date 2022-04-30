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
  String AName = request.getParameter("Book_Author");
  String Categ = request.getParameter("Book_category");
  String price = request.getParameter("Book_Price");
  DB.Connections conn = new DB.Connections();
  boolean isAdded = conn.addBook(BName, AName, Categ, price);
  if(isAdded)%>
  <%@ include file="requestDone.jsp" %>
  <%if(!isAdded)
  out.print("Error");
  %>
</body>
</html>