<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
</head>
<body>
 <%
 String Book_nam = request.getParameter("Book_Name");
 String Book_aut = request.getParameter("Book_Author");
 
 String userid = (String)session.getAttribute("user_ID");
 if(userid==null)
 {
     response.sendRedirect("Login.jsp");
     return; //the return is important; forces redirect to go now
 } 
 
 DB.Connections Book = new DB.Connections();
 ResultSet result = Book.getBook(Book_nam, Book_aut);
 if(result.next()){
 int id = result.getInt("Book_ID");
 
 int isDeletedBook = Book.deleteBook(id);
 if(isDeletedBook>0){%>
 <%@ include file="DeleteDone.jsp" %>
 <%}if(isDeletedBook<0){
	 %>
	 <%@ include file="NotFound.jsp" %>
	 <% 
 }
 Book.close();// close Connection 
 }else{
	 %>
	 <%@ include file="NotFound.jsp" %>
	 <% 
 }
 %>
</body>
</html>