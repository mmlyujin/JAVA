<%@page import="com.hs.app.W3Dto"%>
<%@page import="com.hs.app.W3Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<% 
W3Dto dto = new W3Dto();
dto.setTitle(request.getParameter("title"));
dto.setWriter(request.getParameter("writer"));
dto.setPw(request.getParameter("pw"));
dto.setContent(request.getParameter("content"));
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeproc.jsp</title>
</head>

<body>

<%
	W3Dao dao = new W3Dao(); 
	int res = dao.insertData(dto);
	
	if(res>0){// 값이 1개이상 들어갔다. => 문제없음
		response.sendRedirect("index.jsp");
	}else{// 값이 안들어갔다. => 문제있음
		out.print("문제발생<br> <a href='index.jsp'>메인으로</a>");
	}
%> 

</body>
</html>







