<%@page import="com.yj.app.BoardDto"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- jstl의 core을 쓰려면 반드시 위의 한줄을 정의해 주어야 함 -->

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Board List</h1>
<p></p>

el = Expression Language 표현 언어 <br>
<%-- <%= %> 대신에 사용가능하다. ${내용} 
request.getParameter("id") => ${param.id}
자동형변환 된다.
dto(bean) 의 변수명으로 컬렉션(Vector, ArrayList,Hashmap..) 객체에 접근가능
표현언어이므로 제어가 없다 .(if,for ...) --%>
jstl = jsp standard tag library => jsp 전용 태그 
el은 null이 없다. null일 경우 빈값이 출력된다. <br>
<a href="boardDel.do?idx=${vectordata[0].idx}">${vectordata[0].idx}</a>${vectordata[0].id}/${vectordata[0].title}/${vectordata[0].content}/${vectordata[0].regdate}  * <br> 


<%
/* 	Vector<BoardDto> v = (Vector<BoardDto>)request.getAttribute("vectordata");
	//out.println(v.size()); // 컨트롤러로 갔다가 가져옴. 
	if(v.size()==0){
		out.print("데이터 없음"); 
	}else{
		
	
	for(int i=0;i<v.size();i++){
		out.println("No."+v.get(i).getIdx()+"/");
		out.println("아이디 : "+v.get(i).getId()+"/");
		out.println("제목 : "+v.get(i).getTitle()+"/");
		out.println("내용 : "+v.get(i).getContent()+"/");
		out.println("작성날짜 : "+v.get(i).getRegdate()+"<br>");
		}
	} */
%>

<hr><br>

<c:choose>
	<c:when test="${vectordata.size()==0}">데이터 없다.</c:when>
	<c:otherwise>
		<c:forEach var="i" items="${vectordata}">
			${i.idx}/${i.id}/${i.title}/${i.content}/${i.regdate}<br> 
		</c:forEach>
	
	</c:otherwise>
</c:choose>



</body>
</html>