<%@page import="com.hs.app.W3Dao"%>
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
      String idx = request.getParameter("idx");
      String pw = request.getParameter("pw");
      W3Dao dao = new W3Dao();
      int res = dao.deleteData(idx,pw);
      if(res>0){
         response.sendRedirect("index.jsp");
      }else{
         out.print("비밀번호가 틀렸습니다<br>");
         out.print("<a href='index.jsp'>처음으로</a>");
         out.print("<a href='delete.jsp?idx="+idx+"'>비밀번호 다시 입력</a>");
      }
   %>
</body>
</html>



