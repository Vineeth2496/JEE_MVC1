<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>
<link rel="stylesheet" href="./CSS/style.css">
</head>
<body>
	<div class="signup container">
	<center>
	
		<h1>Welcome to SignUp page</h1>
		<form action="SignUpAction.jsp" method="post">
		 	<table>
		 		<tr>
		 			<td> <input type="text" name="uid" placeholder="Enter UserId"> </td>
		 		</tr>
		 		<tr>
		 			<td> <input type="text" name="fn" placeholder="Enter Full Name"> </td>
		 		</tr>
		 		<tr>
		 			<td> <input type="email" name="em" placeholder="Enter Email"> </td>
		 		</tr>
		 		<tr>
		 			<td> <input type="password" name="pa" placeholder="Enter Password"> </td>
		 		</tr>
		 		<tr>
		 			<td> DOB: <input type="date" name="dob" placeholder="Enter DOB"> </td>
		 		</tr>
		 		<tr>
		 			<td> <input type="text" name="phno" placeholder="Enter Phone No"> </td>
		 		</tr>
		 		<tr>
		 			<td> 
		 			<input type="radio" name="gn" value="Male"> Male 
		 			<input type="radio" name="gn" value="Female"> Female
		 			</td>
		 		</tr>
		 		<tr>
		 			<td style="text-align: center;"> <input type="submit" value="SignUp"> </td>
		 		</tr>
		 	
		 	</table>
		
		
		</form>
		
		
		<%
		String msg=request.getParameter("msg");
		if("valid".equals(msg)){
		%>
		<h1 style="color: green;">Account is Registerd Successfully</h1>
		<%}
		if("invalid".equals(msg)){
		%>
		<h1 style="color: red;">Something Went Wrong</h1>
		<%} %>
		
	</center>
	</div>
</body>
</html>