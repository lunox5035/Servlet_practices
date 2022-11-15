<%@page import="java.awt.print.PrinterGraphics"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set Var="row" value="${param.r }"/>
<c:set Var="col" value="${param.c }"/>

<c:if test="${emty row }">

	<c:set var="col" value="3"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1"cellspacing="0">
		<c:forEach begin="0" end=${param.r-1 } step="1 var="r">
			<tr>
				<c:forEach begin="0" end=${param.r-1 } step="1 var="c">
					<td>cell(col,${r })</td>
				</c:forEach>
			</tr>
		</c:forEach>
		</table>
</body>
</html>