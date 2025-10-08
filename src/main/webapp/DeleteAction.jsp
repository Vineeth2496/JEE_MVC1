<%@page import="com.model.DAO"%>
<%@page import="com.model.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Action</title>
</head>
<body>
<%
	String uid=request.getParameter("uid");
	Integer userId=Integer.parseInt(uid);
	
	Data d=new Data();
	d.setUserId(userId);
	
	DAO ss=new DAO();
	int res=ss.delete(d);
	
	if(res>0){
		response.sendRedirect("Login.jsp?msg=delete");
	}else{
		response.sendRedirect("Login.jsp?msg=nodelete");
	}
	
	
%>
</body>
</html>