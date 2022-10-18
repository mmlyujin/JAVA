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
String open=request.getParameter("open");
String close=request.getParameter("close");

if(open!= null){
    if(open.equals()){
       Cookie cookie = new Cookie("open",open);// 키,값         
       cookie.setMaxAge(60*60*24);// 초단위 이므로 현재 세팅은 24시간이다.
       response.addCookie(cookie);
    }else if(){
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
%>
</body>
</html>