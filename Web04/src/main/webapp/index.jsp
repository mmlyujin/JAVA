<%@page import="com.yj.app.BoardDao"%>
<%@page import="com.yj.app.BoardDto"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #wrap{
      width:1280px;
      border:1px solid black;
      margin:0 auto;
      display:flex;
   }
   #wrap div{ height:500px; }/* 테스트용 코드 - 지울 예정*/
   
   #wrap div:first-child {/* 게시판 */
      width: 70%;
      border:1px solid red;
   }
   #wrap div:last-child { /* 로그인 */
      width:30%;
      border:1px solid blue;
   }
   
   table{
      width: 100%;
      border-collapse: collapse;
   }
   td, th{
      border: 1px solid black;
   }
   
   #wrap th:nth-child(1){
      width: 5%;
   }
   #wrap th:nth-child(2){
      width: 50%;
   }
   #wrap th:nth-child(3){
      width: 20%;
   }
</style>
</head>
<body>

<%
   BoardDao dao = new BoardDao();
   Vector<BoardDto> v = dao.selectNew();//최신 글 10개 가져오기   
%>

<div id="wrap">
   <div>
    게시판<br>
    
    <table>
       <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성자</th>
          <th>날짜</th>
       </tr>
       
       <% if(v.size()==0){ %>
       <!-- Vector가 null 일때 -->
       <tr>
          <td colspan="4">데이터가 없습니다.</td>
       </tr>
       <%}else { %>
       <!-- Vector이 null이 아니라면 실제 데이터를 for문으로 읽어온다. -->
          <% for(int i=0;i<v.size();i++){ %>
          
          <tr>
             <td><%=v.get(i).getIdx() %></td>
             <td><%=v.get(i).getTitle() %></td>
             <td><%=v.get(i).getId() %></td>
             <td><%=v.get(i).getRegdate() %></td>
          </tr>
          
          <%
          } 
       }
       %>
       
    </table>
    
    
    
    
    
    
    
    <% if(session.getAttribute("loginid") != null){ %>
       <a href="boardWrite.jsp">글쓰기</a>
    <% } %>
    
    <a href="boardlist.jsp">더보기</a>
    
   </div>
   <div>
   
      <% 
         String loginid = (String)session.getAttribute("loginid");
         if(loginid != null){   // 세션에 값이 있다면 - 로그인이 된 상태라면
      %>
      
      세션에 값이 있을때 나오는 부분<br>
      <%=loginid %>님 반갑습니다.<br>
      <a href="logout.jsp">로그아웃</a>
      
      <%    } else { %>
      
      
         
      세션에 값이 없을때 나올 부분 - 로그인<br>
      <form action="login.jsp" method="post">
      <table>
         <tr>
            <td>ID</td>
            <td><input type="text" name="id"></td>
         </tr>
         <tr>
            <td>PW</td>
            <td><input type="password" name="pw"></td>
         </tr>
         <tr>
            <td colspan="2" style="text-align: center">
               <input type="submit" value="로그인">
               <input type="button" value="회원가입" onclick="location.href='regist.jsp'">
            </td>
         </tr>
      </table>
      </form>
      
      <%} %>

   </div>
</div>

</body>
</html>