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

   <form action="updateproc.jsp" method="post">
      제목 : <input type="text" name="title" value="<%=dto.getTitle()%>"><br>
      작성자 : <input type="text" name="writer" value="<%=dto.getTitle()%>">
      비밀번호 : <input type="password" name="pw"><br>
      내용 : <textarea name="content"><%= dto.getContent() %></textarea><br>
      <input type="submit" value="수정완료">
      <input type="hidden" name="idx" value="<%=dto.getIdx()%>">
   </form>
   
</body>
</html>

