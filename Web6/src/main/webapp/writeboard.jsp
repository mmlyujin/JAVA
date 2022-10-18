<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="writeboardProc.do" method="post"> 
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="title"> 
			</td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="content" placeholder="내용"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="저장"></td>
		</tr>
	</table>
	</form>
</body>
</html>