<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>데이터베이스 연결 테스트</h1>
<%
  Connection conn =null; //자바 <-> mysql 연결하는 통로
  String dbId ="root"; 
  String dbPw ="";
  String dbUrl ="127.0.0.1.3306"; //프로토콜 +주소+포트+db명
  
  //드라이버 호출
 Class.forName("com.mysql.jdbc.Driver");
%>
</body>
</html>