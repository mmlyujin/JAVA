<%@page import="com.hs.app.W3Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="com.hs.app.W3Dto"/>
<jsp:setProperty property="*" name="dto"/>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   W3Dao dao = new W3Dao();
   int res = dao.updateData(dto);
   if(res>0){
      response.sendRedirect("index.jsp");
   }else{
      out.println("문제발생");
      out.println(" <a href='read.jsp?idx="+dto.getIdx()+"'>다시 입력</a>");
   }
%>

</body>
</html>





