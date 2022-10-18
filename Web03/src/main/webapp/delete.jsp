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
   %>
      <form action="deleteproc.jsp" method="post">
      비밀번호 : <input type="password" name="pw">
         <input type="submit" value="확인">
         <input type="hidden" name="idx" value=<%=idx %>>
      </form>
   
</body>
</html>




