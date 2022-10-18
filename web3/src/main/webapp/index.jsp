
<%@page import="com.yj.app.W3Dao"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
 width:700px;
 border-collapse:collapse;
}
td,th{
border:1px solid black;
}
tr th:first-child{
	width:50px;
}
tr th:nth-child(2){
	width:350px;
}
tr th:nth-child(3){
	width:150px;
}
</style>
</head>
<body>
<%
	W3Dao dao = new W3Dao();
	Vector<W3Dao> v = new Vector();
	v.get(0);
	System.out.println(v.get(0));

%>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		<%for(int i=0;i<v.size();i++){ %>
		<tr>
		</tr>
		<% } %>
	</table>
	<input type="button" value="글쓰기" onclick="location.href='write.jsp'">
</body>
</html>