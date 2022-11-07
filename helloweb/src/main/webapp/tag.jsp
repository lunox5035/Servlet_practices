<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>
	<h7>Hello World</h7>
	
	<!-- 주석 -->

	<table border='1' cellspacing="0"><!--  -->
		<tr>
			<th>글번호</th>
			<th>굴제목</th>
			<th>작성자</th>
		</tr>

		<tr>
			<td>2</td>
			<td>안녕</td>
			<td>둘리</td>
		</tr>

		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>마이콜</td>
		</tr>

	</table>
	
	<img src="http://Localhost:8080/helloweb/images/cat2.jpg" style="width: 100px">
	<br/>
	<img src="/helloweb/images/cat2.jpg" style="width: 100px">
	<br/>
	<img src="./images/cat2.jpg" style="width: 100px">
	<p>
	문장입니다.~~~<br/>
	문장입니다.~~~<br/>
	문장입니다.~~~<br/>
	</p>
	
	<a href="hello.jsp">hello로가기</a>
	<br/>
	<a href="form.jsp">폼으로가기</a>
</body>
</html>