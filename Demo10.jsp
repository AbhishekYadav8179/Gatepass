<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int week=2; %>
<%
switch(week){
case 0:
	out.print("Sunday");
	break;
case 1:
	out.print("Monday");
	break;
case 2:
	out.print("Tuesday"+"<br>");
	break;
case 3:
	out.print("Wednesday");
	break;
default:
	out.print("Wrong choice");
}
%>
<%! int day=6; int i=1; %>
<% while(i<=day){
	if(i<=day){
	out.print("Its weekday "+i+"<br>");
	}
	i++;
	}%>
</body>
</html>