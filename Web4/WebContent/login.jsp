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
			session.setAttribute("loginid", id);//���ǿ� ��  �߰� key, value 
			response.sendRedirect("index.jsp");
		}else{
			out.println("���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�.<br>");
			out.println("<a href='index.jsp'>ó������</a>");
		}
	%>
</body>
</html>




