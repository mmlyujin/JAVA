<%@include file = "header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
    <%
        int result =0;
        boolean isCorrect = true;
        try{

        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        char mark = request.getParameter("mark").charAt(0);
        switch (mark){
            case '+' :
                result = num1 + num2;
                break;
            case '-' :
                result = num1 - num2;
                break;
            case '*' :
                result = num1 * num2;
                break;
            case '/' :
                result = num1 / num2;
                break;
            default:
                isCorrect = false;
        }}
        catch (NumberFormatException e){
            isCorrect = false;
     }%>

    <% if(isCorrect){%>
        <h2>결과는 <% out.print(result);%>입니다.</h2>
    <% } else {%>
        <h2>숫자와 연산기호를 바르게 입력해주세요.</h2>
    <% } %>

</body>
</html>
