<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/* String num1=request.getParameter("num1");
	String num2=request.getParameter("num2"); */

	%>
<!-- //form안의 내용은 submit버튼을 눌렀을 때 설정한 페이지로 input의 내용을 전부 넘긴다. -->
	<form action="result.jsp">
	회원가입<br>
	아이디 : <input type="text" name="id"> <br>
	비밀번호 : <input type="password" name="pw"> <br>
	이름 : <input type="text" name="name"> <br>
	전화번호 : <input type="text" name="number"> <br>
	주소 : <input type="text" name="addr"> <br>
	취미 : <input	 type="checkbox" name="check" value="reading">독서<input type="checkbox" name="check" value="workout">운동<input type="checkbox" name="check" value="movie">영화보기<br>
	이메일 : <input type="text" name="email"> <br>
	자기소개 : <textarea name="ta"></textarea><br>
	
	<input type="submit" value="가입"><input type="submit" value="취소">
	
	
	
	<!-- <input type="text" name="num1"><input type="text" name="cal"><input type="text" name="num2"><input type="submit"> -->
	
	</form>
	
	
	
</body>
</html>