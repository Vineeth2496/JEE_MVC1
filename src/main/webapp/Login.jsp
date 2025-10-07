<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="./CSS/style.css">
</head>
<body>
<div class="login container">
<center>
	<h1>Welcome to Login Page</h1>
	<form action="LoginAction.jsp" method="post">
	<table>
		<tr> 
			<td> <input type="text" name="uid" placeholder="Enter User Id"> </td>
		</tr>
		<tr> 
			<td> <input type="password" name="pa" placeholder="Enter Password"> </td>
		</tr>
		<tr> 
			<td style="text-align: center;"> <input type="submit" value="Login"> </td>
		</tr>
	</table>
	</form>
	
	<%
		String msg=request.getParameter("msg");
		if("valid".equals(msg))
		{
	%>	
	<h3 style="color: green;">Login is Done Successfully</h3>
	<%} 
		if("invalid".equals(msg)){ %>
		<h3 style="color: red;">Invaild UserId / Password</h3>
	<%} 
		if("logout".equals(msg)){
		%>
		<h3 style="color: brown;">Successfully Logged Out</h3>
		<%} %>
</center>
</div>
</body>
</html>