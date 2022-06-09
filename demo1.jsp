<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--Given below is JSP Script ie Java code tag --%>
<% out.println((float)50/100+"<br>");
//out.print("Hello,KMIT.JAVA COde out.print() Example"); %>
<% int count=0; %>
Page count is <% out.println(++count); %>
<%! int n1=10,n2=100; %> <%-- Declaration tag --%>
<% out.println("<br>sum of n1 and n2 is:");%>
<%=n1+n2%> <%-- Expression evaluation &display Tag --%>
</body>
</html>