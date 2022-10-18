<%--
  Created by IntelliJ IDEA.
  User: nimoh
  Date: 2022/09/26
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header>
    <a href="index.jsp">Home</a>
    <a href="NewFile01.jsp">NewFile01</a>
    <a href="Calc.jsp">Calc</a>
</header>
<%  //이 "스크립트 릿" 안에서는 자바코드를 작성할 수 있다.
    //html의 submit을 통해서 넘어온 값은 100% 문자열이다. 다른 건 있을 수 없다.

    String id = request.getParameter("id"); // name이 id 인 것의 값을 가져온다.
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    System.out.println(id); // 콘솔출력
    out.println(id); // 브라우저 출력

%>

    고객님이 입력하신 아이디는 <% out.println(id); %>입니다.
    고객님이 입력하신 이름은 <% out.println(name); %>입니다.
</body>
</html>
