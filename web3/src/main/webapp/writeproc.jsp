<%@page import="com.yj.app.W3Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="com.yj.app.W3Dto"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"></jsp:setProperty>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeproc.jsp</title>
</head>
<body>
<%
	W3Dao dao =new W3Dao();
	int res= dao.insertData(dto);
	
	if(res>0){//값이 1개 이상 들어갔다 => 문제없음
		response.sendRedirect("index.jsp");		
	}else{//값이 안 들어갔다. => 문제있음
		out.print("문제 발생<br> <a href='index.jsp'>메인으로</a>");
	}
	
%>
</body>
</html>