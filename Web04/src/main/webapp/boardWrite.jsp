<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width: 500px;
		border-collapse: collapse;
	}
	td,th{
		border: 1px solid black;
		text-align: center;
	}
	textarea{
		width: 450px;
		height: 200px;		
	}
	
</style>
</head>
<body>
	<form action="boardwriteproc.jsp" method="post">
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" name="id" 
					value="<%=session.getAttribute("loginid") %>" readonly>
			</td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="content" placeholder="내용"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="작성완료"></td>
		</tr>
	</table>
	</form>
	

</body>
</html>



