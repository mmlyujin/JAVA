<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="registProc.do" method="post">
		아이디 : <input type="text" name="id" required> <br>
		비밀번호 : <input type="password" name="pw" required> <br>
		이름 : <input type="text" name="name" required> <br>
		이메일 : <input type="text" name="email" required><br>
		<input type="submit" value="가입">   <br>
		<input type="button" onclick="javascript:history.back();" value="취소">  <br> 
	</form>
</body>
</html>