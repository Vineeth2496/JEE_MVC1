<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.model.DAO"%>
<%@page import="com.model.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Action</title>
</head>
<body>
<center>
<%
	

	String uid=request.getParameter("uid");
	Integer userId=Integer.parseInt(uid);

	Data d=new Data();
	d.setUserId(userId);
	
	DAO ss=new DAO();
	
	List li=ss.fetchForUpdate(d);
	
	ListIterator LLi=li.listIterator();
	while(LLi.hasNext()){
		Data d2=(Data)LLi.next();	
	
%>
	<form action="Edit.jsp" method="post">
	
	<table border="1">
		<tr>
			<th>User Id : </th><td> <input type="text" name="uid" value="<%=d2.getUserId()%>"></td>
		</tr>
		<tr>
			<th>Full Name : </th><td> <input type="text" name="fn" value="<%=d2.getFullName()%>"> </td>
		</tr>
		<tr>
			<th>Email: </th><td> <input type="text" name="em" value="<%=d2.getEmail() %>"> </td>
		</tr>
		<tr>
			<th>Password: </th><td> <input type="text" name="pa" value="<%=d2.getPassword() %>"> </td>
		</tr>
		<tr>
			<th>DOB: </th><td> <input type="text" name="dob" value="<%=d2.getDob() %>"> </td>
		</tr>
		<tr>
			<th>Phone No: </th><td> <input type="text" name="phno" value="<%=d2.getPhoneno() %>"> </td>
		</tr>
		<tr>
			<th>Gender: </th><td> <input type="text" name="gn" value="<%=d2.getGender() %>"> </td>
		</tr>
		
		<tr>
			<td colspan="2" style="text-align: center;"> <input type="submit" value="Edit"> </td>
		</tr>
		
	</table>
	</form>
	<%} 
	 %>
</center>
</body>
</html>