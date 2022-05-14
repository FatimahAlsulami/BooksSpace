<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
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
  
  String userid = (String)session.getAttribute("user_ID");
  if(userid==null)
  {
      response.sendRedirect("Login.jsp");
      return; //the return is important; forces redirect to go now
  } 
  
  DB.Connections conn = new DB.Connections();
  boolean isAdded = conn.addRequest(BName, AName, Categ, price);
  if(isAdded){%>
  <%@ include file="requestDone.jsp" %>
  <%}if(!isAdded){%>
  <%@ include file="requestNotDone.jsp" %>
  <%}%>
</body>
</html>