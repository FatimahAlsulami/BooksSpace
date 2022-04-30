<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log out</title>
</head>
<body>
<%
 session.invalidate();
 out.print("you are not authorzied user");
 response.sendRedirect("Index.jsp");
 %>
</body>
</html>