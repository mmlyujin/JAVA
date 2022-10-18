package com.yj.app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import com.yj.app.DBConnectionMgr;

public class W6Dao {
	DBConnectionMgr mgr = DBConnectionMgr.getInstance();
	Connection conn = null;
	PreparedStatement pstmt;
	int res=0;//  insert, update, delete의 결과
	String sql;
	ResultSet rs;// db 결과
	W6Dto dto;// select 한줄 담기
	Vector<W6Dto> v;// select 여러줄 담기
	
	
	//insert 메서드 
	public int insertMember(W6Dto dto) {
		try {
			conn = mgr.getConnection();
			sql = "insert into member6 values (null,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());  
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			res = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mgr.freeConnection(conn, pstmt);
		}
		
		return res;
	}//메서드 끝
	
	
	
	//select 
	public Vector<W6Dto> selectMemberAll(){
		v = new Vector<>();
		try {
			conn =mgr.getConnection();
			sql = "select * from member6";
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				W6Dto dto = new W6Dto();
				dto.setIdx(rs.getInt(1));
				dto.setId(rs.getString(2));
				dto.setPw(rs.getString(3));
				dto.setName(rs.getString(4));
				dto.setEmail(rs.getString(5));
				v.add(dto);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return v;
		
	}//메서드 끝
	
	
}//클래스 끝  
