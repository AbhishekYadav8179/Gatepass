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
User name<br>
<input type="text" name="un"><br><br>
Password<br>
<input type="password" name="p">
<input type="submit">
</form>
<%
String un=request.getParameter("un");
String p=request.getParameter("p");%>
<%
try
{
	//"com.mysql.jdbc.Driver"

Class.forName("com.mysql.cj.jdbc.Driver");
//Class.forName("com.mysql.jdbc.Driver");
Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/books", "root", "bollaveni8179");
Statement stmt=com.createStatement();
ResultSet rs;
rs=stmt.executeQuery("select title,category from book2;");
String tit="",cat="";
int flag=0;
if(un!=null)
{
	while(rs.next())
	{
		tit=rs.getString("title");
		cat=rs.getString("category");
		if(un.equals(tit)&&p.equals(cat))
		{
			response.sendRedirect("Adminlogin.jsp");
			//out.print("record Found"+"<a href='Demo13.jsp'>submit</a>");
			flag=1;
			break;
		}
	}
}
if(un!=null && flag==0)
{
	out.println("book Title and Catrgory is incorrect!"+"<a href='Demo12.jsp'> Retry</a>");
}
com.close();
}
catch(SQLException e)
{
	out.println(e);
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>