<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reject add book request</title>
</head>
<body>
  <%
 
  String ID = request.getParameter("Book_ID");
 //String id = String.valueOf(ID);

 DB.Connections conn = new DB.Connections();
 int isDeleted = conn.rejectBook(ID);
 if(isDeleted>0){
	 %><%@ include file="Admin_Add_Books_Requestes.jsp" %><%
 }else{
 out.print("Error");
 }
 conn.close();
 %>
</body>
</html>