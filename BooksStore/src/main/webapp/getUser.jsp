<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page errorPage = "ShowError.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER INFO</title>
</head>
<body>
<%
    String Fname= request.getParameter("Fname");
    String userID= request.getParameter("user_ID");
    String pass= request.getParameter("Pass");
    
    if( Fname != null && Fname.length() !=0 && pass.length()!=0 && pass != null){
     session.setMaxInactiveInterval(10);
	 DB.Connections connection =new DB.Connections();
	 ResultSet resultSet=connection.getUser(Fname,userID, pass);
	 
	 if(resultSet.next()) {
		 String role = resultSet.getString("user_role");
		 session.setAttribute("Fname", Fname);
		 session.setAttribute("user_ID", userID);
		 session.setAttribute("Pass", pass);
		 session.setAttribute("user_role", role);
		 
		 if(session.getAttribute("user_ID") != null && role.equalsIgnoreCase("admin"))
		    {//Admin
			 
			 %><%@ include file="Admin_Second_Verfication.jsp" %><%
		    }
		    else if(session.getAttribute("user_ID") != null && role.equalsIgnoreCase("user"))
		    {//user
		        %><%@ include file="Services.jsp" %><%
		    }
		    else
		    {//somthing wrong
		    	%><%@ include file="SignUp.jsp" %><%
		    }
		 		 

      }else {//user not found so you must register first
    	  %><%@ include file="SignUp.jsp" %><%
      }
    }else{//user not found so you must register first
    	 %><%@ include file="SignUp.jsp" %><%
      }
 %>
</body>
</html>