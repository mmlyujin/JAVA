<%@include file = "header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- RegisterDto dto = new RegisterDto();--%>

<%-- Bean ( DTO )의 객체 선언 같은 것 --%>
<%-- id는 객체명, class는 해당 자바파일 경로 --%>

<jsp:useBean id="dto" class="com.hs.RegistDto"/>

<%--dto라는 이름으로 프로퍼티(필드)를 set해줌--%>
<jsp:setProperty name="dto" property="*"/>

<%-- 바로 위에 * 한 거랑 밑에 다 한거랑 똑같음 --%>
<%--<jsp:setProperty name="dto" property="id"/>--%>
<%--<jsp:setProperty name="dto" property="pw"/>--%>
<%--<jsp:setProperty name="dto" property="name"/>--%>
<%--<jsp:setProperty name="dto" property="hp"/>--%>
<%--<jsp:setProperty name="dto" property="addr"/>--%>
<%--<jsp:setProperty name="dto" property="hobby"/>--%>
<%--<jsp:setProperty name="dto" property="email"/>--%>
<%--<jsp:setProperty name="dto" property="introduce"/>--%>

<%--여기까지 한 게 request.getParameter("  ")로 하나하나 다 가져온 거랑 같음--%>
<body>
<%
    String id = request.getParameter("id"); // 제출된 form에서 name값이 id인 거 가져옴
    String[] hobby = request.getParameterValues("hobby"); //제출된 form에서 name이 hobby인 체크박스 Value들 배열로 다 가져옴

    for(int i = 0; i < hobby.length; i++){
        out.println(hobby[i]);
    }

    for(String h : hobby){ // for each
        out.println(h);
    }

%>

<%=dto.getId()%><br>
<%
    for(int i = 0 ; i< dto.getHobby().length; i++){
        out.println(dto.getHobby()[i]);
    }
%>

</body>
</html>
