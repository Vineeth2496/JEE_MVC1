<%@page import="com.model.DAO"%>
<%@page import="com.model.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	try{
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
	out.println(userId);
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
	
	
	DAO ss=new DAO();
	
	int res=ss.sigUp(d);
	if(res>0){
		response.sendRedirect("SignUp.jsp?msg=valid");
	}else{
		response.sendRedirect("SignUp.jsp?msg=invalid");
	}
	
	}catch(Exception e){
		response.sendRedirect("SignUp.jsp?msg=invalid");
		e.printStackTrace();
	}
	
	
	
	

%>

</body>
</html>