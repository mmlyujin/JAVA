<%@ page import="com.hs.app.W3Dao" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.hs.app.W3Dto" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>table</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            width: 100vw;
            height: 100vh;
        }

        main{
            width: 700px;

            margin: 0 auto;
        }
        table{
            width: 700px;
            border-collapse: collapse;
            border: 1px solid black;
        }
        tr th:first-child{
            width: 50px;
        }
        tr th:nth-child(2){
            width: 350px;
        }
        tr th:nth-child(3) {
            width: 150px;
        }
        .table-footer{
            display: flex;
            justify-content: end;
        }
    </style>
</head>
<body>
    <main>

        <%
            W3Dao dao = new W3Dao();
            Vector<W3Dto> v = dao.selectAllData();
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>글쓴이</th>
                    <th>날짜</th>
                </tr>
            </thead>
            <tbody>
            <% for(int i =0; i<v.size();i++){%>
            <tr>
                <td><%=v.get(i).getIdx()%></td>
                <td><a href="read.jsp?idx=<%=v.get(i).getIdx()%>"><%=v.get(i).getTitle()%></a></td>
                <td><%=v.get(i).getWriter()%></td>
                <td><%=v.get(i).getRegdate()%></td>
            </tr>
            <%}%>
            </tbody>
        </table>
        <div class="table-footer">
            <a href="write.jsp"><button>글쓰기</button></a>
        </div>
    </main>
</body>
</html>