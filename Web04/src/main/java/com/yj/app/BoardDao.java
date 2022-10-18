package com.yj.app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import com.yj.app.DBConnectionMgr;
import com.yj.app.BoardDao;

public class BoardDao {
//	create table board2(
//			idx int auto_increment primary key,
//			title varchar(200) not null,
//			id varchar(50),
//			regdate datetime,
//			content text not null
//			)
	
	   PreparedStatement pstmt = null; // 쿼리 준비
	   String sql = null;// 실제 쿼리
	   Connection conn = null;// db연결
	   ResultSet rs = null;// select 결과 담는 객체
	   int res = 0;// insert, delete, update 결과 담는 변수
	   Vector<BoardDto> v = null;// rs의 에서 빼온 결과는 1개의 dto 이다. Vector는 dto를 여러개 담을수 있다.
	   BoardDto dto = null;
	   
	   DBConnectionMgr dbMgr = DBConnectionMgr.getInstance();
	   
	  //==================10개 가져오는 메서드========================//
	  public Vector<BoardDto> selectNew(){
		   try {
			   
			 v= new Vector<>();
			 
			conn = dbMgr.getConnection();
			sql="select * from board2 order by idx desc Limit 10";
			//전체를 역순으로 정렬한 이후 위에서 부터 10개 가져오기  
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) { //1줄 이상이면 while 문 
				BoardDto dto = new BoardDto();
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString(2));
				dto.setId(rs.getString(3));
				dto.setRegdate(rs.getString(4));
				v.add(dto); //한줄의 내용을 dto에 담은 것을 한덩어리로 만들기 위해 v에 담기  
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbMgr.freeConnection(conn, pstmt, rs);
		}
		return v;
		   
	   }//메서드 끝 
	  
	  
	  //=============================insert 메서드===============//   
	  public int insertBoard(BoardDto dto) {
			try {
				conn = dbMgr.getConnection();
				sql = "insert into board2 values (null,?,?,now(),?);";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dto.getTitle());
				pstmt.setString(2, dto.getId());
				pstmt.setString(3, dto.getContent()); //컬럼 순서대로 잘넣기 
				res = pstmt.executeUpdate();// 실행
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbMgr.freeConnection(conn, pstmt);
			}
		  
		return res;
		  
	  }//메서드끝
	  
	  
	  public int getTotalRow() {
			 
			try {
				conn = dbMgr.getConnection();
				sql="select count(idx) from board2";  
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					res = rs.getInt(1);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				dbMgr.freeConnection(conn, pstmt);
			}
			
		  return res;
	  }
	  
	  
	  //========================selectAll method==========//
	  public Vector<BoardDto> selectAll(){ //전체 select
		   try {
			   
			 v= new Vector<>();
			 
			conn = dbMgr.getConnection();
			sql="select * from board2";  
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) { //1줄 이상이면 while 문 
				BoardDto dto = new BoardDto();
				dto.setIdx(rs.getInt("idx"));
				dto.setTitle(rs.getString(2));
				dto.setId(rs.getString(3));
				dto.setRegdate(rs.getString(4));
				v.add(dto); //한줄의 내용을 dto에 담은 것을 한덩어리로 만들기 위해 v에 담기  
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbMgr.freeConnection(conn, pstmt, rs);
		}
		return v;
		   
	   }//메서드 끝 
	   
}//클래스 끝
