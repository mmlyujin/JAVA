<%@ page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:include page="drivertest.jsp"/>  결과를 가져오는 방식이다. 작성한 변수를 가져올 순 없다. --%>
<%@ include file="drivertest.jsp" %> <!-- 이것은 실행되기 전에 가져 오는 방식. 변수 가져오기 가능 -->    
<%
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String name = request.getParameter("name");
   
   // statement 객체를 통해서 sql 전송. 
   // 한번에 값을 포함해서 만드는 statement와
   // 미리 쿼리를 만들어 두고 ? 위치에 차후 값을 넣은후 전송 prepareStatement 가 있음 // 많이 씀
   String sql = "INSERT INTO member1 VALUES (NULL, ?, ?, ?,NOW())";
   PreparedStatement pstmt = null;
   pstmt = conn.prepareStatement(sql);// 쿼리 준비
   
   pstmt.setString(1, id);// set타입(?의 번호, 넣을값)
   pstmt.setString(2, pw);
   pstmt.setString(3, name);//여기까지 ?에 넣을값 세팅
         
   int res = pstmt.executeUpdate();// db에 세팅된 내용을 던짐. 
   // db는 만들어진 sql을 받아서 실행하고 결과를 돌려줌.
   // insert, delete, update의 경우 결과의 의미는 몇개가 실행되었는가? 임.
   
   if(res>0){
      response.sendRedirect("main.jsp");
   }else{
      out.print("에러발생 <a href='main.jsp'>돌아가기</a> ");
   }
   

%>




