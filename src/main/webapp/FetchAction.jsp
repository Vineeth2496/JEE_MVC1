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
<title>Fetch Action</title>
</head>
<body>
<center>
<%
		String uid=(String)session.getAttribute("userid");
		Integer userId=Integer.parseInt(uid);
		String password=(String)session.getAttribute("password");
		
		Data d=new Data();
		d.setUserId(userId);
		d.setPassword(password);
		
		DAO ss=new DAO();
		List li=ss.fetch(d);

		ListIterator LLi=li.listIterator();
		while( LLi.hasNext()){
			Data d2=(Data)LLi.next();
		
%>		<table border="1">
			<tr>
				<th>UserId</th>
				<th>FullName</th>
				<th>Email</th>
				<th>Password</th>
				<th>DOB</th>
				<th>PhoneNo</th>
				<th>Gender</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			
			<tr>
				<td> <%= d2.getUserId() %>  </td>
				<td> <%= d2.getFullName() %>  </td>
				<td> <%= d2.getEmail() %>  </td>
				<td> <%= d2.getPassword() %>  </td>
				<td> <%= d2.getDob() %>  </td>
				<td> <%= d2.getPhoneno() %>  </td>
				<td> <%= d2.getGender() %>  </td>
				<td> <a href="">Edit</a>  </td>
				<td> <a href="">Delete</a>  </td>
			</tr>
		</table>
		<a href="EndAction.jsp">Logout</a>
		<%} %>
</center>
</body>
</html>