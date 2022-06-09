<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String str1,str2; %>
<form method="get"> <%-- Form Tag --%>
<h1><label>Enter a text and click on submit</label></h1>
<h2><label>Enter Username</label></h2>
<input type="text"name="un"> <%--INPUT TAG --%>
<br>
<input type="password"name="ab">
<input type="submit"value="Click"> <%--Button Tag --%>
<% str1=request.getParameter("un");
str2=request.getParameter("ab");
if(str1!=null) out.print("Welcome "+str1);%>
<%//if(str2!=null) out.print("Your Password is "+str2);%>

</form> <%-- here we fetch the data using the name attribute"un" of the ext from the current page --%>
</body>
</html>