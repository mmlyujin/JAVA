<%@include file = "header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="CalcResult.jsp">
  <input type="text" name="num1">
    <select name="mark" id="">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
  <input type="text" name="num2">
  <input type="submit" value="결과">
</form>
</body>
</html>
