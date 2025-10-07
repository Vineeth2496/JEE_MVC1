<%@page import="java.util.List"%>
<%@page import="com.model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Action</title>
</head>
<body>
<%
	String uid=request.getParameter("uid");
	Integer userId=Integer.parseInt(uid);
	String password=request.getParameter("pa");
	
	//out.println(userId);
	//out.println(password);
	
	DAO ss=new DAO();
	List li=ss.validate();
	
	if(li.contains(userId)  && li.contains(password)){
		
		session.setAttribute("userid", uid);
		session.setAttribute("password", password);
		
		RequestDispatcher rd=request.getRequestDispatcher("FetchAction.jsp");
		rd.forward(request, response);
		
		//response.sendRedirect("Login.jsp?msg=valid");
		
	}else{
		response.sendRedirect("Login.jsp?msg=invalid");
	}
	

%>
</body>
</html>