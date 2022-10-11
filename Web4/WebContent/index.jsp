<%@page import="com.hs.app.BoardDao"%>
<%@page import="com.hs.app.BoardDto"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	#wrap{
		width:1280px;
		border:1px solid black;
		margin:0 auto;
		display:flex;
	}
	#wrap div{ height:500px; }/* �׽�Ʈ�� �ڵ� - ���� ����*/
	
	#wrap div:first-child {/* �Խ��� */
		width: 70%;
		border:1px solid red;
	}
	#wrap div:last-child { /* �α��� */
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
	Vector<BoardDto> v = dao.selectNew();//�ֽ� �� 10�� ��������	
%>

<div id="wrap">
	<div>
	 �Խ���<br>
	 
	 <table>
	 	<tr>
	 		<th>��ȣ</th>
	 		<th>����</th>
	 		<th>�ۼ���</th>
	 		<th>��¥</th>
	 	</tr>
	 	
	 	<% if(v.size()==0){ %>
	 	<!-- Vector�� null �϶� -->
	 	<tr>
	 		<td colspan="4">�����Ͱ� �����ϴ�.</td>
	 	</tr>
	 	<%}else { %>
	 	<!-- Vector�� null�� �ƴ϶�� ���� �����͸� for������ �о�´�. -->
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
	 	<a href="boardwrite.jsp">�۾���</a>
	 <% } %>
	 
	 <a href="boardlist.jsp">������</a>
	 
	</div>
	<div>
	
		<% 
			String loginid = (String)session.getAttribute("loginid");
			if(loginid != null){	// ���ǿ� ���� �ִٸ� - �α����� �� ���¶��
		%>
		
		���ǿ� ���� ������ ������ �κ�<br>
		<%=loginid %>�� �ݰ����ϴ�.<br>
		<a href="logout.jsp">�α׾ƿ�</a>
		
		<% 	} else { %>
		
		
			
		���ǿ� ���� ������ ���� �κ� - �α���<br>
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
					<input type="submit" value="�α���">
					<input type="button" value="ȸ������" onclick="location.href='regist.jsp'">
				</td>
			</tr>
		</table>
		</form>
		
		<%} %>
		
		
		
		
	</div>
</div>







</body>
</html>