<%@page import="com.yj.app.BoardDto"%>
<%@page import="java.util.Vector"%>
<%@page import="com.yj.app.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

    BoardDao dao = new BoardDao();

	int currentPage=1;
	int pageofRow = 5; //한페이지당 나올 줄의 수
	int totalRow =  dao.getTotalRow(); //전체 줄 수
	int totalPage =totalRow/pageofRow;
		//전체 개수를 한페이지에 출력할 개수로 나누었을 때 소수점이 이하가 있다면 
	out.print(totalPage);
	
	Vector<BoardDto> v = dao.selectAll();
%>

<!-- 입력한 내용 전체 select 하는거 만들기 -->
<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>글쓴이</th>
		<th>날짜</th>
	</tr>
	
	<%for(int i=0;i<v.size();i++) {%>
	
	<tr>
		<td><%=v.get(i).getIdx() %></td>
		<td><%=v.get(i).getTitle() %></td>
		<td><%=v.get(i).getId() %></td>
		<td><%=v.get(i).getRegdate() %></td>
		
	
	</tr>
	<% } %>
</table>
<%
for(int i=1;i<totalPage;i++){ 
%>	
	[<%=i %>]
<%
} 
%>
</body>
</html>