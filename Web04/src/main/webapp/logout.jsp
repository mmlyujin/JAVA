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
	 session.invalidate(); //세션 삭제
	 response.sendRedirect("index.jsp");// index 페이지로 돌아가기  
	%>
</body>
</html>