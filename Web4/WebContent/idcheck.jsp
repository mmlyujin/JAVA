<%@page import="com.hs.app.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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




