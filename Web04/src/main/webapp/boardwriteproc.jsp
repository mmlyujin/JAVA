<%@page import="com.yj.app.BoardDto"%>
<%@page import="com.yj.app.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDto" class="com.yj.app.BoardDto"></jsp:useBean>

<jsp:setProperty property="*" name="boardDto" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	BoardDao dao = new BoardDao();
	int result = dao.insertBoard(boardDto);
	if(result>0){
		response.sendRedirect("index.jsp");
	}else{
		out.println("문제발생 <a href='index.jsp'>처음으로</a>");
	}

%>
	
</body>
</html>