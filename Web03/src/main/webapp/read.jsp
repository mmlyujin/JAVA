<%@page import="com.hs.app.W3Dto"%>
<%@page import="com.hs.app.W3Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   form{
      display: inline-block;
   }
</style>
</head>
<body>
<% 
   String idx = request.getParameter("idx");
   W3Dao dao = new W3Dao();
   W3Dto dto = dao.selectData(idx);
%>
<%=dto.getIdx()%> / 
<%=dto.getTitle()%> / 
<%=dto.getContent()%> / 
<%=dto.getWriter()%> / 
<%=dto.getRegdate()%><br>

<a href="delete.jsp?idx=<%=idx %>">삭제</a>

<form action="update.jsp" method="post">
   <input type="hidden" name="idx" value="<%=dto.getIdx()%>">
   <input type="hidden" name="title" value="<%=dto.getTitle()%>">
   <input type="hidden" name="content" value="<%=dto.getContent()%>">
   <input type="hidden" name="writer" value="<%=dto.getWriter()%>">
<input type="submit" value="수정">
</form>


</body>
</html>








