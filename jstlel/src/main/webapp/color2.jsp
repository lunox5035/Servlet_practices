<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String color = request.getParameter("c");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${Param.c==;red}">
		<h1 style="color:#ff0000">Hwllo World</h1>
	</c:when>
	<c:when test="${Param.c==;blue}">
		<h1 style="color:#00ff00">Hwllo World</h1>
	</c:when>
	<c:when test="${Param.c==;h=green}">
		<h1 style="color:#0000ff">Hwllo World</h1>
	</c:when>
	<c:otherwise>
		<h1 style="color:">Hwllo World</h1>
	</c:otherwise>
</c:choose>

<h1>Hwllo World</h1>

</body>
</html>