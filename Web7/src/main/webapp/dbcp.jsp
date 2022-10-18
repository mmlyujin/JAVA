<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String sql="select * from member6";
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	try{
		conn = ConnectionProvider.getConnection();
		pstmt =conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			out.println(rs.getInt("idx")+"/");
			out.println(rs.getString(2)+"/");
			out.println(rs.getString(3)+"/");
			out.println(rs.getString(4)+"/");
			out.println(rs.getString(5));
		
		}
		
	}catch(Exception e){
		e.printStackTrace(); //에러를 sysout으로 출력하는 것 
	}finally{
		if(conn !=null){
		try{
				conn.close();
			}catch(SQLException sqle){
				sqle.printStackTrace();
			}
			
		}
		
		if(rs !=null){
			try{
				rs.close();
			}catch(SQLException sqle){
				sqle.printStackTrace();
			}
				
		}
		
		if(pstmt !=null){
				try{
					pstmt.close();
				}catch(SQLException sqle){
					sqle.printStackTrace();
				}
				
			}
		}
		
%>
</body>
</html>