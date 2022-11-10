<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var='count' value='${fn:length(list }'/>
	
	${count }
	<c:forEach items='${list }' var='vo' varStatus='status'>
		[${status.index } :${status.count } ${vo.no }:${vo.name }:${vo.email }]<br/>
	</c:forEach>
</body>
</html>