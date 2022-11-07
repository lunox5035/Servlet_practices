<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
String birthYear = request.getParameter("birthYear");
String gender = request.getParameter("gender");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4><%=email%></h4>
	<h4><%=password%></h4>
	<h4><%=birthYear%></h4>
	<h4><%=gender%></h4>
	
	<h6>email:<%=email %>,password:<%=password %>,birthYear:<%=birthYear %>,gender:<%=gender %></h6>
</body>
</html>