<%@page import="pass.StatesCapital" %> <%--page directive helps in adding or importing packages --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="max-width:500px;">
<%! StatesCapital sc=new StatesCapital(); %>
<table>
<tr class="gradientdown">
<th style="width:40px;"><br></th>
<th style="width:100px;">States and Capital</th>
</tr>
<%! String SAndC; %>
<%
for(int i=0;i<sc.stateCapital.size();i++){
SAndC=sc.getStatesCapital(i);%>
<tr class="data">
<td style="text-align:center;">
<td><%=SAndC %></td>
</tr>
<%
}
%>
</table>
</div>
</body>
</html>