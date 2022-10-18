<%@include file="header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    body {
        width: 100vw;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .container {
        width: 300px;
        margin: 0 auto;
        display: flex;
    }

    form {
        width: 100%;
        display: flex;
        flex-direction: column;
    }

    span {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }
</style>

<body>
<div class="container">
    <form action="RegisterResult.jsp">
        <span>
            <label for="id">아이디</label>
            <input type="text" name="id" id="id">
        </span>
        <span>
            <label for="pw">비밀번호</label>
            <input type="text" name="pw" id="pw">
        </span>
        <span>
            <label for="name">이름</label>
            <input type="text" name="name" id="name">
        </span>
        <span>
            <label for="hp">전화번호</label>
            <input type="text" name="hp" id="hp">
        </span>
        <span>
            <label for="addr">주소</label>
            <input type="text" name="addr" id="addr">
        </span>
        <span>
            <label for="hobby">취미</label>
            <div class="hobby-wrap">
            <input type="checkbox" name="hobby" id="hobby" value="sports">운동
            <input type="checkbox" name="hobby" value="reading">독서
            <input type="checkbox" name="hobby" value="movie">영화
            </div>
        </span>
        <span>
            <label for="email">이메일</label>
            <input type="text" name="email" id="email">
        </span>
        <span>
            <label for="introduce">자기소개</label>
            <input type="text" name="introduce" id="introduce">
        </span>
        <span>
            <input type="submit" value="가입">
            <input type="reset" value="취소">
        </span>
    </form>
</div>
</body>
