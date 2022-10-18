package com.yj.app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberDao {// 전역변수는 초기값을 안줘도 자동 초기화
//	create table member2(
//			idx int auto_increment primary key,
//			id varchar(50) not null unique,
//			pw varchar(255) not null,
//			name varchar(50) not null,
//			nick varchar(50) not null,
//			email varchar(255) not null,
//			regdate datetime
//			)
	
	DBConnectionMgr mgr = DBConnectionMgr.getInstance();
	Connection conn = null;
	PreparedStatement pstmt;
	int res=0;//  insert, update, delete의 결과
	String sql;
	ResultSet rs;// db 결과
	MemberDto dto;// select 한줄 담기
	Vector<MemberDto> v;// select 여러줄 담기

	
	public int insertMember(MemberDto dto) {
		try {
			conn = mgr.getConnection();
			sql = "insert into member2 values (null,?,?,?,?,?,NOW());";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getNick());
			pstmt.setString(5, dto.getEmail());
			res = pstmt.executeUpdate();// 실행
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mgr.freeConnection(conn, pstmt);
		}
		return res;
	}// 메서드 끝
	
	
	public int loginMember(String id, String pw) { 
		try {
			conn = mgr.getConnection();
			sql = "select count(*) from member2 where id=? and pw=?";
			// 입력한 id와 pw가 맞는 것의 개수를 가져온다.
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				res = rs.getInt(1);// 첫번째 컬럼의 값을 가져와서 res에 담음
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mgr.freeConnection(conn, pstmt, rs);
		}
		
		return res;
	}// 메서드 끝
	
	public int checkId(String id) {
		try {
			conn = mgr.getConnection();
			sql = "select count(*) from member2 where id=?";// 입력한 아이디의 개수			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				res = rs.getInt(1);// 첫번째 컬럼의 값을 가져와서 res에 담음
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mgr.freeConnection(conn, pstmt, rs);
		}
		
		return res;
	}
	
	
}// 클래스 끝













