<%@page import="com.yj.app.MemberDao"%>
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
		String id = request.getParameter("id");
		MemberDao dao = new MemberDao();
		int res = dao.checkId(id);
		
		if(res>0){
			response.sendRedirect("regist.jsp?res=f");			
		}else{
			response.sendRedirect("regist.jsp?res=t");
		}
	%>

</body>
</html>