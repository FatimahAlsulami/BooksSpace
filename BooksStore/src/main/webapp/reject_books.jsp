<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
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

 String userid = (String)session.getAttribute("user_ID");
  if(userid==null)
  {
      response.sendRedirect("Login.jsp");
      return; //the return is important; forces redirect to go now
  } 
  
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