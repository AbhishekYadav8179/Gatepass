<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.Driver.*" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="java.lang.Class" %>
<%@ page import ="java.lang.*" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="request.connections" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
GATEPASS
<form>
<div class="input-box">
            <span class="details"></span>
            <input type="text"name="reason"placeholder="Enter purpose"required>
          </div>
          <br>
          <br>
<div class="button">
          <input type="submit" value="submit">
        </div>
        </form>
<%--
String rsn=request.getParameter("reason");
try
{
	Connection con=connections.Establish();
	Statement stm=con.createStatement();
	stm=con.createStatement();
	String sql="insert into student_request(date,roll_no,purpose)values()"
}
--%>
</body>
</html>