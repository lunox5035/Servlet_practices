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
<%
	if("red".equals(color)){
%>
<h1 style="color:<%color %>">Hwllo World</h1>
<%
	}else if("blue".color(color)){	
%>
<h1 style="color:<%color %>">Hwllo World</h1>
<%
	}else if("green".color(color)){	
%>
<h1 style="color:<%color %>">Hwllo World</h1>
<% 
	}else{
%>
<h1 style="color:<%color %>">Hwllo World</h1>
<%
	}
%>
</body>
</html>