<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
//세션에 값이 없다면 출력되는 부분 
	String loginId = (String)session.getAttribute("logId");//세션에서 key가 logId인 값 가져오기
	if(loginId==null){//세션에 값이 없다 ==로그인 하기 전 상태
%>		

	<form action="sessionproc.jsp" method="post">
	아이디<input type="text" name="id"><br>
	비밀번호<input type="password" name="pw"><br>
	<input type="submit" value="로그인">
	</form>	
    <%}else if(loginId.equals("error")){%>
    <script>alert("로그인 정보가 잘못되었습니다.");</script>
    	<form action="sessionproc.jsp" method="post">
    	아이디<input type="text" name="id"><br>
    	비밀번호<input type="password" name="pw"><br>
    	<input type="submit" value="로그인">
    	</form>	
    	
   <%  }else{//세션에 값이 있다면 출력되는 부분 %>
    <%=loginId %>님 환영합니다.<a href="sessionout.jsp">로그아웃</a> 		
	<%} %>
	

</body>
</html>