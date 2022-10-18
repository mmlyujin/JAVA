<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="drivertest.jsp" %>
<%
String sql="select * from member1";
PreparedStatement pstmt=null;
pstmt =conn.prepareStatement(sql);//sql연결

ResultSet rs =null;
rs=pstmt.executeQuery();

while(rs.next()){
	out.print(rs.getInt(1));//column 대신에 순번을 써도 된다.
	out.print(rs.getString(1)+"/");
	out.print(rs.getString(2)+"/");
	out.print(rs.getString(3)+"/");
	out.print(rs.getString(4)+"/");
	out.print(rs.getString(5)+"<br>");
	
	
}

%>

<a href="main.jsp">돌아가기</a>



</body>
</html>