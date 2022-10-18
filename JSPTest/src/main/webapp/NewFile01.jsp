<%@include file = "header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  form 안의 내용은 submit 버튼을 눌렀을 때 설정한 페이지로 input의 내용을 전부 넘긴다.
<form action="result.jsp">
  회원가입 <br>
  아이디 : <input type="text" name="id"> <br>
  비밀번호: <input type="text" name="pw"> <br>
  이름: <input type="text" name="name"> <br>
  나이: <input type="text" name="age"> <br>
  <input type="submit"> <br>
</form>
</body>
</html>
