<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
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
 String userid = (String)session.getAttribute("user_ID");
 if(userid==null)
 {
     response.sendRedirect("Login.jsp");
     return; //the return is important; forces redirect to go now
 } 
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