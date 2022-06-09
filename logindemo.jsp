<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.ResultSet" %>
<%@ page import ="java.sql.Driver" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="java.lang.Class" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post">
USERNAME: <input type="text" name="un"><br><br>
PASSWORD: <input type="password" name="p"><br>
<input type="submit">
<br>
<%
String uname=request.getParameter("un");
String pwd=request.getParameter("p");%>
<% 
String str="admin123";
String str1="0000";
if(uname!=null)
{
if(uname.equals(str) && pwd.equals(str1))
{
	response.sendRedirect("Adminlogin.jsp");
}

else
{
	out.print("INVALID USERNAME OR PASSWORD");
}
}
%>
</form>
</body>
</html>