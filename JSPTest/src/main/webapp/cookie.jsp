<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <%
      String savedId = "";
   
      if(request.getCookies() != null){
      Cookie[] cookies = request.getCookies();
      out.print(cookies.length);
      
      for(int i=0;i<cookies.length;i++){
         out.print(cookies[i].getName()+":"+cookies[i].getValue()+"<br>");   
         if(cookies[i].getName().equals("saveid")){
            savedId=cookies[i].getValue();
         }
      }
      }
   %>
   <hr>

   <form action="cookieproc.jsp" method="post">
      아이디<input type="text" name="id" value="<%=savedId %>"><br>
      비번<input type="password" name="pw"><br>
      <input type="checkbox" name="save" value="save" <%=savedId.equals("")?"":"checked"%>>아이디 저장<br>
      <input type="submit" value="로그인">
      <input type="button" value="회원가입">
   </form>
</body>
</html>








