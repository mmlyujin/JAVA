<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
   request.setCharacterEncoding("UTF-8");
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String ck = request.getParameter("save");
   // ck가 체크박스지만 1개 밖에 없기 때문에 체크했을때만 값이 넘어오고 안하면 null이 넘어온다.
   
   if(ck != null){
      if(id.equals("admin") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// 키,값         
         cookie.setMaxAge(60*60*24);// 초단위 이므로 현재 세팅은 24시간이다.
         response.addCookie(cookie);
      }else if(id.equals("어드민") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// 키,값
         cookie.setMaxAge(60*60*24);// 초단위 이므로 현재 세팅은 24시간이다.
         response.addCookie(cookie);
      }
      
   }else{
      if(id.equals("admin") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// 키,값         
         cookie.setMaxAge(0);// 초단위 이므로 현재 세팅은 0초이다. 바로 삭제됨
         response.addCookie(cookie);
      }else if(id.equals("어드민") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// 키,값         
         cookie.setMaxAge(0);// 초단위 이므로 현재 세팅은 0초이다. 바로 삭제됨
         response.addCookie(cookie);
      }
   }
   response.sendRedirect("cookie.jsp");
%>

<%=id %>/<%=pw %>/<%=ck %>

</body>
</html>








