<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String firstQ = request.getParameter("Fname");
  String SecondQ = request.getParameter("user_ID");
  String ThirdQ = request.getParameter("Pass");
  String userid = (String)session.getAttribute("user_ID");
  if(userid==null)
  {
      response.sendRedirect("Login.jsp");
      return; //the return is important; forces redirect to go now
  } 
  if(firstQ.equalsIgnoreCase("CPIT455") && SecondQ.equalsIgnoreCase("BookSpace") && ThirdQ.equalsIgnoreCase("30")){%>
  <%@ include file="Admin_Home_Page.jsp" %>
  <%}else{%>
  <%@ include file="Login.jsp" %>
  <%}
  %>
</body>
</html>