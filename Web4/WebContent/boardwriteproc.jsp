<%@page import="com.hs.app.BoardDao"%>
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
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String id = request.getParameter("id");
	String content = request.getParameter("content");
	
	BoardDao dao = new BoardDao();
	int result = dao.insertData(title,id,content);
	if(result>0){
		response.sendRedirect("index.jsp");
	}else{
		out.println("문제 발생 <a href='index.jsp'>처음으로</a>");
	}
%>


</body>
</html>



