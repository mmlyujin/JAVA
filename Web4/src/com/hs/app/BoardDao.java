package com.hs.app;

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
	Vector<BoardDto> v;// select 여러줄 담기
	

	
	public Vector<BoardDto> selectNew() {
		try {
			v = new Vector<>();
			
			conn = mgr.getConnection();
			sql = "select * from board2 order by idx desc limit 10";
			//전체를 역순으로 정렬한 이후 위에서 부터 10개 가져오기
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDto dto = new BoardDto();// 한줄 읽을때 마다 Dto 생성
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString(2));
				dto.setId(rs.getString(3));
				dto.setRegdate(rs.getString(4));
				
				v.add(dto);// 한줄의 내용을 dto에 담은것을 한덩어리로 만들기 위해 v에 담기
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			mgr.freeConnection(conn, pstmt, rs);
		}
		
		return v;
	}
	
	
	public int insertData(String title, String id, String content) {
		try {
			conn = mgr.getConnection();
			sql = "insert into board2 values (null, ?,?,now(),?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, id);
			pstmt.setString(3, content);
			res = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			mgr.freeConnection(conn, pstmt);
		}
		
		return res;
	}
	
	public int getTotalRow() {// 전체 행 개수 가져오기
		try {
			conn = mgr.getConnection();
			sql = "select count(idx) from board2";		
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				res = rs.getInt(1);
			}			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mgr.freeConnection(conn, pstmt, rs);
		}
		return res;
	}
	
	
	public Vector<BoardDto> selectAll(int currentPage, int pageOfRow){
		try {
			System.out.println(currentPage);
			System.out.println(pageOfRow);
			v = new Vector<>();			
			conn = mgr.getConnection();
			sql = "select * from board2 limit ?, ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (currentPage-1)*pageOfRow);
			pstmt.setInt(2, pageOfRow);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDto dto = new BoardDto();// 한줄 읽을때 마다 Dto 생성
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString(2));
				dto.setId(rs.getString(3));
				dto.setRegdate(rs.getString(4));
				
				v.add(dto);// 한줄의 내용을 dto에 담은것을 한덩어리로 만들기 위해 v에 담기
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			mgr.freeConnection(conn, pstmt, rs);
		}
		
		return v;
	}
}









