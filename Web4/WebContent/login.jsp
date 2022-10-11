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
		String pw = request.getParameter("pw");
		MemberDao dao = new MemberDao();
		int result = dao.loginMember(id,pw); 
		if(result>0){
			session.setAttribute("loginid", id);//세션에 값  추가 key, value 
			response.sendRedirect("index.jsp");
		}else{
			out.println("아이디 또는 비밀번호가 틀렸습니다.<br>");
			out.println("<a href='index.jsp'>처음으로</a>");
		}
	%>
</body>
</html>




