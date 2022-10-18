<%@page import="com.yj.app.W6Dto"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
MEMBER LIST<br>
<p></p>
<%
	Vector<W6Dto> v = (Vector<W6Dto>)request.getAttribute("vectordata");
	//out.println(v.size()); // 컨트롤러로 갔다가 가져옴. 
/* 	for(int i=0;i<v.size();i++){
		out.println(v.get(i).getIdx()+"/");
		out.println(v.get(i).getId()+"/");
		out.println(v.get(i).getPw()+"/");
		out.println(v.get(i).getName()+"/");
		out.println(v.get(i).getEmail()+"<br>");
	} */
%>

<form>
	<table>
		<tr>
			<th>No.</th>
			<th>ID</th>
			<th>PassWord</th>
			<th>Name</th>
			<th>Email</th>
		</tr>
		<%for(int i=0;i<v.size();i++){ %>
		<tr>
			<td><%=v.get(i).getIdx()%></td>
			<td><%=v.get(i).getId()%></td>
			<td><%=v.get(i).getPw()%></td>
			<td><%=v.get(i).getName()%></td>
			<td><%=v.get(i).getEmail()%></td>
		</tr>
		<%} %>
	</table>

</form>

</body>
</html>