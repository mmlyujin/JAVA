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

session.invalidate();//모든 세션 삭제
response.sendRedirect("session.jsp");//다시 돌아감 

%>
</body>
</html>