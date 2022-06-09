<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String str1,str2,str3,str4,str5,str6; %>
<form>
<label><b>Registration Form</b></label><br>
First Name<input type="text" name="un"><br>
Email Id<input type="text" name="email"><br>
Password <input type="password" name="pwd"><br><br>
Married<input type="radio" name="married"checked>
Un-Married<input type=radio name="married"><br><br><br>
Gender<br>
<input type="radio" name="gender" value='Male'>Male
<input type="radio" name="gender" value='Female'>Female
<input type="radio" name="gender" value='Others'>Others<br><br><br>
<button type="button"onclick="displayRadioValue()">Submit</button>
<br>
<div id="result"></div>
<script>
function displayRadioValue() {
	var ele= document.getElementsByName('gender');
	for(i=0;i<ele.length;i++)
		{
		if(ele[i].checked)
			document.getElementById("result").innerHTML="Gender:"+ele[i].value;
		}
}
</script>
Certified In?<br>
<input type="checkbox" name="c">C & DS<br>
<input type="checkbox" name="c">Java<br>
<input type="checkbox" name="c">MySql<br><br>
<input type="submit" value="submit"><br>
<% str1=request.getParameter("un");
str2=request.getParameter("email");
str3=request.getParameter("pwd");
str4=request.getParameter("married");
str5=request.getParameter("gender");
str6=request.getParameter("c");
%>
<% if(str1!=null && str2!=null&&str3!=null&&str4!=null&&str5!=null&&str6!=null) 
{
	out.print(str1+"<br>");
	out.print(str2+"<br>");
	out.print(str3+"<br>");
	out.print(str4+"<br>");
	out.print(str5+"<br>");
	out.print(str6+"<br>");
	out.print("<h3><label>Registration Successfull</label></h3>");
}
%>
<%--<table border=2 bgcolour="black" style="colour:blue"> <%--table builds rows and columns ,border  --%>
Country<br>
<select name="Country">
<option value=1>India</option>
<option value=2>USA</option>
<option value=3>UK</option>
</select>
<%--script tag fro java code --%>
</form>
</body>
</html>