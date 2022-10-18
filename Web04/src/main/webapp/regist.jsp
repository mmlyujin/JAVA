<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="ko">

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			#wrap {
				text-align: center;
			}

			table {
				width: 400px;
				margin: 0 auto;
				border-collapse: collapse;

			}

			td {
				border: 1px solid black;
			}
		</style>
	</head>

	<body>
		<% String res=request.getParameter("res"); String txt="아이디 중복체크를 해주세요" ; if(res !=null){ if(res.equals("t")){
			txt="사용가능한 아이디 입니다." ; }else{ txt="이미 존재하는 아이디 입니다." ; } } %>


			<div id="wrap">
				<h1>회원가입</h1>
				<form action="registproc.jsp" method="post">
					<table>
						<tr>
							<td>ID</td>
							<td>
								<input type="text" name="id" id="id" placeholder="아이디" required>
								<input type="button" value="아이디 중복체크" onclick="idchk()">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<%=txt %>
							</td>
						</tr>
						<tr>
							<td>PW</td>
							<td><input type="password" name="pw" required></td>
						</tr>
						<tr>
							<td>NAME</td>
							<td><input type="text" name="name" required></td>
						</tr>
						<tr>
							<td>NICK</td>
							<td><input type="text" name="nick" required></td>
						</tr>
						<tr>
							<td>EMAIL</td>
							<td><input type="email" name="email" required></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;">
								<input type="submit" value="회원가입">
								<input type="button" value="취소" onclick="history.back()">
							</td>
						</tr>
					</table>
				</form>
			</div>


			<script>
				function idchk() {
					var id = document.getElementById("id").value;
					if(id.trim().length<4){ //id의 길이
						alert("아이디는 빈칸을 제외하고 4자 이상입니다.");
					}else if(id.indexOf(" ")!= -1){
						alert("아이디에 빈칸이 들어가면 안됩니다.");
					}else{
						location.href = "idcheck.jsp?id=" + id;		
					}
				}
			</script>
	</body>

	</html>