<%--
  Created by IntelliJ IDEA.
  User: nimoh
  Date: 2022/09/26
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Calculator</title>
  <link rel="stylesheet" href="style.css">
  <style>
    div{
      border: 1px solid black;
    }
    #wrap{
      width: 1024px;
      margin: 0 auto; /* 블록태그의 가운데 정렬 */
    }
    #banner{
      width: 100%;
      height: 200px;
      background-image: url('img/fish.jpg');
      background-repeat: no-repeat;
      background-position: center;
      background-size: cover;
    }
    #main{
      width: 100%; /* 높이는 안에 있는 div의 내용에 따라 커져야 함으로 설정하지 않음*/
      display: flex;
    }
    #main div:first-child {
      background-color: yellow;
      width: 200px;
      height: 500px;
    }
    #main div:last-child {
      background-color: lightgreen;
      width: calc(100% - 200px);
      height: 500px;
    }
  </style>
<body>
  <header>
    <a href="index.jsp">Home</a>
    <a href="NewFile01.jsp">NewFile01</a>
    <a href="Calc.jsp">Calc</a>
    <a href="Register.jsp">Register</a>
    <a href="menu1.jsp">menu</a>
  </header>
<div id="wrap">
  <div id="banner"></div>
  <div id="main">
    <div>
      <a href="menu1.jsp">메뉴1</a>
      <a href="menu2.jsp">메뉴2</a>
      <a href="menu3.jsp">메뉴3</a>
    </div>
    <div>
      현재 메뉴1 화면입니다. <br>
    </div>
  </div>
</div>

