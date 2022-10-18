<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
<%// 이 스크립트 릿 안에서는 자바코드를 작성할 수 있다.

//html의 submit을 통해서 넘어온 값은 100% 문자열이다. 다른건 있을 수 없다. 
request.setCharacterEncoding("UTF-8");//한글처리
//한글을 보내는 페이지와 받는 페이지의 인코딩을 맞춰주면 된다.
/* String id=request.getParameter("id"); //name이 id인 값을 가져온다.
String pw=request.getParameter("pw");
String name=request.getParameter("name");
String age=request.getParameter("age");
String num1=request.getParameter("num1");
String num2=request.getParameter("num2");
String cal=request.getParameter("cal"); */
//System.out.prinln -> console창 나옴. 
//out.println -> 웹페이지에 나옴.

/* 	int num3=Integer.parseInt(num1);
	/* int num4=Integer.parseInt(num2);
	
	int result=0; //초기화 시켜야 함.
	if(cal.equals("+")){
		result=num3+num4;
	}else if(cal.equals("-")){
		result=num3-num4;
	}else if(cal.equals("*")){
		result=num3*num4;
	}else if(cal.equals("/")){
		result=num3/num4;
	} */
 


//out.println("아이디 : "+id);
//out.println("비밀번호 : "+pw);
//out.println("이름  : "+ name);
//out.println("나이  : "+ age);
String id=request.getParameter("id");
String pw=request.getParameter("pw");
String name=request.getParameter("name");
String number=request.getParameter("number");
String addr=request.getParameter("addr");
String[] check=request.getParameterValues("check");
String email=request.getParameter("email");
String ta=request.getParameter("ta");

%>

<!-- =name명 은 out.println(name) 과 같다. -->
<%-- 고객님이 입력하신 아이디는<%  out.println(id);%> 입니다.<br>
고객님이 입력하신 비밀번호는<%= pw %>입니다.<br>
고객님이 입력하신 이름은<%= name %>입니다.<br>
고객님이 입력하신 나이는<%= age %>입니다.<br>
 --%>
 
 <%-- <%=result %> --%>

ID : <%=id %><br>
PassWord : <%=pw %><br>
Name : <%=name %><br>
Phone Number : <%=number %><br>
Address : <%=addr %><br>
Hobby : 
<%=
if (check != null && check.length != 0) {
out.println(check[i]);
 for (int i = 0; i < check.length; i++) {
  out.println(check[i]);
  }
 }%><br>
Email : <%=email %><br>
Introduce : <%=ta %><br>

</body>
</html>