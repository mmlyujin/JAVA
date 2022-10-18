<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

값넣기<br>
<form action="insertproc.jsp">
   아이디 <input type="text" name="id"><br>
   비밀번호<input type="password" name="pw"><br>
   이름<input type="text" name="name"><br>
   <input type="submit" value="입력">
</form><hr>

값삭제<br>
<form action="deleteproc.jsp">
   번호<input type="text" name="idx"><br>
   <input type="submit" value="삭제">
</form><hr>

값수정<br>  <!-- 특정한 값으로 찾기 -->
<form action="update.jsp">
   <select name="find">
      <option value="idx">번호</option>
      <option value="id">아이디</option>
   </select>
   <input type="text" name="val"><br>
   <input type="submit" value="수정">
</form><hr>

전체값보기<br>
<a href="select.jsp">클릭</a>




</body>
</html>







