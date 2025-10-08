<%@page import="com.model.DAO"%>
<%@page import="com.model.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
</head>
<body>
	<%
	try
	{
	String uid=request.getParameter("uid");
	Integer userId=Integer.parseInt(uid);
	String fullName=request.getParameter("fn");
	String email=request.getParameter("em");
	String password=request.getParameter("pa");
	String dob=request.getParameter("dob");
	String phno=request.getParameter("phno");
	Long phoneno=Long.parseLong(phno);
	String gender=request.getParameter("gn");
	
	/*
	out.println(uid);
	out.println(userId +10);
	out.println(fullName);
	out.println(email);
	out.println(password);
	out.println(dob);
	out.println(phoneno);
	out.println(gender);
	*/
	
	Data d=new Data();
	d.setUserId(userId);
	d.setFullName(fullName);
	d.setEmail(email);
	d.setPassword(password);
	d.setDob(dob);
	d.setPhoneno(phoneno);
	d.setGender(gender);
	
	/*
	out.println(d.getUserId());
	out.println(d.getFullName());
	out.println(d.getEmail());
	out.println(d.getPassword());
	out.println(d.getDob());
	out.println(d.getPhoneno());
	out.println(d.getGender());
	
	*/
	
	DAO ss=new DAO();
	int res=ss.update(d);
	
	if(res>0){
		response.sendRedirect("Login.jsp?msg=updated");
	}else{
		response.sendRedirect("Login.jsp?msg=noupdated");
	}
	
	
	}catch(Exception e){
		response.sendRedirect("Login.jsp?msg=error");
		e.printStackTrace();
	}
	
	%>
</body>
</html>