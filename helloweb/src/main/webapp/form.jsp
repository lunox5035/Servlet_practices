<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="join.jsp" method="post">
		email: <input type="text" name="email" value=""/>
		<br/><br/>

		비밀번호: <input type="password" name="password" value=""/> 
		<br/><br/>
		
		생년:
		<select name="birthYear">
			<option value="1996">1996년</option>		
			<option value="1997">1997년</option>		
			<option value="1998">1998년</option>		
		</select>
		<br/><br/>
		
		성별:
		여자 <input type="radio" name="gender" value="female" checked="checked"/>
		남자 <input type="radio" name="gender" value="male" />
		<br/><br/>
		
		자기소개:
		<br/>
		<textarea name="profile"></textarea>
		<br/><br/>
		
		취미:
		<br/>
		코딩 <input type="checkbox" name="hobby" value="coding" />		
		술먹기 <input type="checkbox" name="hobby" value="drinking" />		
		요리 <input type="checkbox" name="hobby" value="cooking" />		
		수영 <input type="checkbox" name="hobby" value="swimming" />		
		
		<br/><br/> 
		<input type="submit" value="회원가입"/>
	</form>
</body>
</html>