<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="drivertest.jsp" %>
   <%
      String type = request.getParameter("find");// idx, id
      String val = request.getParameter("val");
      
      String sql = "SELECT * FROM member1 WHERE "+type+"=? ";
      
      PreparedStatement pstmt = null;
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, val);
      
      //int resut = ... -- insert, update, delete => executeUpdate();
      ResultSet rs = pstmt.executeQuery();// select 는 executeQuery();
      
      
      int idx = 0;// 기본타입은 초기값이 0
      String id = null;// 대문자로 시작하는 객체는 초기값이 null
      String pw = null;
      String name = null;
      String regDate = null;
      
      if(rs.next()){// 값이 있다면 실행 - if문이 때문에 첫줄만 가져옴. 하지만 sql은 원래 1줄만 결과나옴
         idx=rs.getInt("idx");// 컬럼명을 써준다.
         id = rs.getString("id");// 컬럼명을 써준다.
         pw = rs.getString("pw");// 컬럼명을 써준다.
         name = rs.getString("name");// 컬럼명을 써준다.
         regDate = rs.getString("regdate");// 컬럼명을 써준다.
      }
   
   %>
   <form action = updateproc.jsp>
      번호 : <%=idx %><br>
      아이디 : <input type="text" name="id" value="<%=id%>"><br>
      비밀번호 : <input type="text" name="pw" value="<%=pw%>"><br>
      이름 : <input type="text" name="name" value="<%=name%>"><br>
      날짜 : <%=regDate%><br>
      <input type="hidden" name="idx" value="<%=idx %>">
      <input type="submit" value="수정">
   </form>
   
   
   
   
</body>
</html>




