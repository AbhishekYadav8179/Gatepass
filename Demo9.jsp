<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String str; %>
<form method="post">
Enter Username:
<input type="text"name="un"><br>
Enter Password:
<input type="password"name="pwd"><br><br>
<input type="submit">
<br><br>
<% str=request.getParameter("un"); %>
<%if(str!=null)
out.print("Hi "+str); %>
</form>
</body>
</html>