<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/boot/member" method="post"
	enctype="multipart/form-data">
		<label for="id">아이디:</label>
		<input type="text" name="id" id="id" placeholder="Enter id"><br>
		<label for="password">비밀번호:</label>
		<input type="password" name="password" id="password" placeholder="Enter password"><br>
		<label for="nick">닉네임:</label>
		<input type="text" name="nick" id="nick" placeholder="Enter nickname"><br>
		<button type="submit">가입</button>
	</form>
</body>
</html>