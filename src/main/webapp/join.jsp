<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
		<h2>회원가입</h2>
		<hr>
		<form action="joinOk.jsp" method="get">
			아이디 : <input type="text" name="id"><br>
			암호 : <input type="text" name="password"><br>
			이름 : <input type="text" name="name"><br>
			이메일 : <input type="text" name="email"><br>
			<input type="submit" value="회원가입">
			
		</form>
</body>
</html>