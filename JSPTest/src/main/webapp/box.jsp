<%--
  Created by IntelliJ IDEA.
  User: nimoh
  Date: 2022/09/26
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            width: 100vw;
        }

        .container {
            margin: 0 auto;
            width: 600px;
            border: 1px solid black;
            height: 700px;
        }

        .top {
            margin: 20px auto;
            background-color: red;
            width: 90%;
            height: 100px;
        }

        .bottom {
            display: grid;
            grid-template-columns: 1fr 2fr;
            margin-top: 50px;
        }

        .bottom-left {
            background-color: blue;
            height: 500px;
            margin: 0 10px 0 30px;
        }

        .bottom-right {
            background-color: green;
            height: 500px;
            margin: 0 30px 0 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="top"></div>
    <div class="bottom">
        <div class="bottom-left"></div>
        <div class="bottom-right"></div>
    </div>
</div>
</body>
</html>
