<%@page import="java.awt.print.PrinterGraphics"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String col request.getParameter("c");
	String row request.getParameter("r");
	
	int nCol=Integer.paeseInt(col);
	int nRow=Integer.paeseInt(row);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellspacing="0">
		<c:forEach begin="0" end="${parm.r-1 }" step="1" var="r">
			<tr>
				<c:forEach begin="0" end="${parm.C-1 }" step="1" var="C">
				
					<td>cell(${c },${r })</td>
				</c:forEach>
			</tr>
		</c:forEach>
		
</body>
</html>