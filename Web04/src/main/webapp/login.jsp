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
      String pw = request.getParameter("pw");
      MemberDao dao = new MemberDao();
      int result = dao.loginMember(id, pw);
      
      if(result>0){
         session.setAttribute("loginId", id);
         // 로그인 성공시 세션에 id 값 추가됨. (key:value)
         // key 값이 있으면 로그인된.
         response.sendRedirect("index.jsp");
      }else{
         out.println("아이디 또는 비밀번호가 일치하지 않습니다 <br/>");
         out.println("<a href='index.jsp'></a>");
      }
      
   %>
</body>
</html>