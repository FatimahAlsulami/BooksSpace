<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceptance of books</title>
</head>
<body>
 <%

 String ID = request.getParameter("Book_ID");
 //String id = String.valueOf(id);
 DB.Connections conn = new DB.Connections();
 
 int isAccepted = conn.transfer(conn.getBookRequest(ID));
 if(isAccepted>0){
	 
	 int accept = conn.acceptBook(ID);
	 if(accept>0){
	 %><%@ include file="Admin_Add_Books_Requestes.jsp" %><%
	 }else{
		 System.out.print("Error here");
	 }
 }else{
 System.out.print("Error");
 }
 conn.close();
 %>
</body>
</html>