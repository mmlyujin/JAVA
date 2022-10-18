package com.yj.app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class BoardDao {
	
	DBConnectionMgr mgr = DBConnectionMgr.getInstance();
	Connection conn = null;
	PreparedStatement pstmt;
	int res=0;//  insert, update, delete의 결과
	String sql;
	ResultSet rs;// db 결과
	BoardDto dto;// select 한줄 담기
	Vector<BoardDto> v; //select 여러 줄 담기 
	
	
	//insert 메서드 
	public int insertBoard(BoardDto dto) {
		try {
			conn = mgr.getConnection();
			sql = "insert into board6 values (null,?,?,?,now())";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getTitle());  
			pstmt.setString(3, dto.getContent());
			res = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mgr.freeConnection(conn, pstmt);
		}
		
		return res;
	}//메서드 끝
	
	
	
	//select 
		public Vector<BoardDto> selectboardAll(){
			v = new Vector<>();
			try {
				conn =mgr.getConnection();
				sql = "select * from board6";
				pstmt = conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					BoardDto dto = new BoardDto();
					dto.setIdx(rs.getInt(1));
					dto.setId(rs.getString(2));
					dto.setTitle(rs.getString(3));
					dto.setContent(rs.getString(4));
					dto.setRegdate(rs.getString(5));
					v.add(dto);
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			return v;
			
		}//메서드 끝
	
	
}
