<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
   request.setCharacterEncoding("UTF-8");
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String ck = request.getParameter("save");
   // ck�� üũ�ڽ����� 1�� �ۿ� ���� ������ üũ�������� ���� �Ѿ���� ���ϸ� null�� �Ѿ�´�.
   
   if(ck != null){
      if(id.equals("admin") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// Ű,��         
         cookie.setMaxAge(60*60*24);// �ʴ��� �̹Ƿ� ���� ������ 24�ð��̴�.
         response.addCookie(cookie);
      }else if(id.equals("����") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// Ű,��
         cookie.setMaxAge(60*60*24);// �ʴ��� �̹Ƿ� ���� ������ 24�ð��̴�.
         response.addCookie(cookie);
      }
      
   }else{
      if(id.equals("admin") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// Ű,��         
         cookie.setMaxAge(0);// �ʴ��� �̹Ƿ� ���� ������ 0���̴�. �ٷ� ������
         response.addCookie(cookie);
      }else if(id.equals("����") && pw.equals("1234")){
         Cookie cookie = new Cookie("saveid",id);// Ű,��         
         cookie.setMaxAge(0);// �ʴ��� �̹Ƿ� ���� ������ 0���̴�. �ٷ� ������
         response.addCookie(cookie);
      }
   }
   response.sendRedirect("cookie.jsp");
%>

<%=id %>/<%=pw %>/<%=ck %>

</body>
</html>








