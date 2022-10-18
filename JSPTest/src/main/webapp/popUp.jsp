<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 #popup{
 	position:absolute;
 	width:200px;
 	height:300px;
 	border:1px solid black;
 	top:100px;
 	left:200px;
 
 }
 
 #popup img{
 	display:block;
 	width:100%;
 	height:250px;
 }

 

</style>

</head>
<body>
 
 <%
 //쿠키가 있는가 확인
 	String pop=null; //첫 값은 null
 	Cookie[] cookies =request.getCookies();//모든 쿠키 가져오기
 	
 	for(int i=0;i<cookies.length;i++){//내가 만든 쿠키가 있는가 확인 , 내가만든 쿠키의 이름은 open이다.
 		if(cookies[i].getName().equals("open")){
 			pop="open";//내가 만든 쿠키가 있다면 pop이라는 변수에 null대신 open을 넣는다.
 		}
 	}
 if(pop != null){//pop에 open이 있을 경우 ==내가 만든 쿠키가 있다.(pop의 값이 null이 아닌다.)
%>	 
	 #popup{
		 display:none;/*쿠키가 있다면 실행되는 부*/
	 }
<%	 
 }
%>

	<div id="popup">
      <img alt="" src="img/fish.jpg"><br>
      <form action="popupproc.jsp">
         <input type="checkbox" name="open" value="<%=pop %>">
         <input type="submit" name="close" value="30초 동안 열지 않기">
      </form>
   </div>

</body>
</html>