<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String birthYear = request.getParameter("birthYear");
	String gender = request.getParameter("gender");
	String profile = request.getParameter("profile");
	
	String[] hobbies = request.getParameterValues("hobby");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4><%=email %></h4>
	<h4><%=password %></h4>
	<h4><%=birthYear %></h4>
	<h4><%=gender %></h4>
	<p><%=profile %></p>
	
	<%
		for(String hobby:hobbies) {
	%>
		<h4><%=hobby %></h4>
	<%
		}
	%>
</body>
</html>