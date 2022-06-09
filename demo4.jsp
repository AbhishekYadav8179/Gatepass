<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dynamically Build Table</title>
</head>
<body>
<table border=1>
<%
int n=4;
for(int i=0;i<n;i++)
{
%>
<tr> <%--tr is row --%>
<td>Number</td> <%-- td is column --%>
<td><%= i+1 %></td>
<td><%while(i<=4){ out.print("A");i++; }%></td>
</tr>
<%
}
%>  <%--Script Tag for java code --%>
</table>
</body>
</html>