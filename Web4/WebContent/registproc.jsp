<%@page import="com.hs.app.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="memberDto" class="com.hs.app.MemberDto" />
<jsp:setProperty property="*" name="memberDto"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<%
		/* out.println(memberDto.getId()+"<br>");
		out.println(memberDto.getPw()+"<br>");
		out.println(memberDto.getName()+"<br>");
		out.println(memberDto.getNick()+"<br>");
		out.println(memberDto.getEmail()+"<br>"); */
		
		
		MemberDao dao = new MemberDao();
		int result = dao.insertMember(memberDto); 
		if(result>0){
			response.sendRedirect("index.jsp");			
		}else{
			out.println("문제발생 <a href='index.jsp'>처음으로</a>");
		}
	%>

</body>
</html>

