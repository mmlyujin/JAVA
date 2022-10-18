package com.hs.app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;
public class W3Dao {// Database Access Object
   // 여기에서 각 메서드로 insert,delte,update,select 기능들을 다 넣는다
   
   PreparedStatement pstmt = null; // 쿼리 준비
   String sql = null;// 실제 쿼리
   Connection conn = null;// db연결
   ResultSet rs = null;// select 결과 담는 객체
   int res = 0;// insert, delete, update 결과 담는 변수
   Vector<W3Dto> v = null;// rs의 에서 빼온 결과는 1개의 dto 이다. Vector는 dto를 여러개 담을수 있다.
   W3Dto dto = null;
   
   
   
   
   
   
   DBConnectionMgr dbMgr = DBConnectionMgr.getInstance();// new를 대신해주는 메서드
   // 싱글턴 패턴
   // 생성자를 바로 new 하지 않고, static 형태로 만들어 만약 만들어진 객체가 없다면 new를 하고
   // 만약 있다면 그 생성된 객체를 가져오는 방식. static 이므로 1개만 만들어지며 모든 객체가 공유해서 사용한다.
   // 내용의 수정이 없는 클래스(값을 가져오는 기능만 있음=> 그 클래스에 변수(필드)에 수정,삭제가 일어나지 않음)라면
   // 상당히 유용함
   
   
   
   public int insertData(W3Dto dto) {// sql, pstmt, res, conn
      try {         
         conn = dbMgr.getConnection();// 1. db 커넥션 가져오기
         
         
         
         sql = "INSERT INTO board1 VALUES (NULL, ?, ?, ?, ?, NOW())"; // 2. db돌아가는 쿼리      
         pstmt = conn.prepareStatement(sql);// 쿼리 준비   
         pstmt.setString(1, dto.getTitle());
         pstmt.setString(2, dto.getContent());
         pstmt.setString(3, dto.getWriter());
         pstmt.setString(4, dto.getPw());
         
         
         
         res = pstmt.executeUpdate();// db에 세팅된 내용을 던짐. => 결과를 int로 받음
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {// 상단 코드의 실행여부와 상관없이 무조건 실행됨. 
         dbMgr.freeConnection(conn, pstmt);// insert가 끝나면 연결을 강제로 다 끊어줌
      }      
      return res;
   }
   
   public Vector<W3Dto> selectAllData() {
      try {
         conn = dbMgr.getConnection();// 1 db연결
         sql = "select * from board1";// 2 db에서 실행될 쿼리 작성
         pstmt = conn.prepareStatement(sql);// 3 쿼리 세팅
         rs = pstmt.executeQuery();// 4 쿼리 실행
         
         v = new Vector<>();// select했을때 여러줄이면 각줄의 값을 Dto에 담고 그 Dto를 Vector에 담음         
         while(rs.next()) {
            W3Dto dto = new W3Dto();// 한줄을 담는 객체 생성
            dto.setIdx(rs.getInt("idx"));// 각줄의 컬럼별로 값을 가져와서 만들어진 dto에 담기
            dto.setTitle(rs.getString("title"));
            dto.setContent(rs.getString("content"));
            dto.setWriter(rs.getString("writer"));
            dto.setPw(rs.getString("pw"));
            dto.setRegdate(rs.getString("regdate"));
            v.add(dto);   // 한줄을 Vector에 추가         
         }// 반복문이 끝나는 시점에 각줄은 dto에 담기고 모든 줄은 Vector에 담김         
         
      } catch (Exception e) {         
         e.printStackTrace();
      }
      
      return v;
   }
   
   public W3Dto selectData(String idx) {
      //1. 커넥션 가져오기
      //2. 쿼리작성
      //3. 쿼리준비
      //4. 값넣기
      //5. 실행 => 결과는 rs
      //6. rs에서 값 빼기 => if? while?
      //7. if돌면서 가져온값 dto에 넣기 // while돌면서 dto에 넣고 Vector에 다시 넣기
      
      
      
      dto = new W3Dto();
      try {
         conn = dbMgr.getConnection();// 1 db연결
         sql = "select * from board1 where idx=?";// 2 db에서 실행될 쿼리 작성
         pstmt = conn.prepareStatement(sql);// 3 쿼리 세팅
         pstmt.setInt(1, Integer.parseInt(idx));
         rs = pstmt.executeQuery();// 4 쿼리 실행
         if(rs.next()) {            
            dto.setIdx(rs.getInt("idx"));// 각줄의 컬럼별로 값을 가져와서 만들어진 dto에 담기
            dto.setTitle(rs.getString("title"));
            dto.setContent(rs.getString("content"));
            dto.setWriter(rs.getString("writer"));
            dto.setPw(rs.getString("pw"));
            dto.setRegdate(rs.getString("regdate"));         
         }// 반복문이 끝나는 시점에 각줄은 dto에 담기고 모든 줄은 Vector에 담김         
         
         
         
         
      } catch (Exception e) {         
         e.printStackTrace();
      }
      
      return dto;
   }
   
   
   public int deleteData(String idx, String pw){      
      try {         
         conn = dbMgr.getConnection();// 1. db 커넥션 가져오기
         sql = "delete from board1 where idx=? and pw=?";      
         pstmt = conn.prepareStatement(sql);// 쿼리 준비   
         pstmt.setInt(1, Integer.parseInt(idx));
         pstmt.setString(2, pw);
         res = pstmt.executeUpdate();// db에 세팅된 내용을 던짐. => 결과를 int로 받음
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {// 상단 코드의 실행여부와 상관없이 무조건 실행됨. 
         dbMgr.freeConnection(conn, pstmt);// insert가 끝나면 연결을 강제로 다 끊어줌
      }      
      return res;
   }
   
   public int updateData(W3Dto dto) {
      try {         
         conn = dbMgr.getConnection();// 1. db 커넥션 가져오기
sql = "update board1 set title=?, content=?, writer=?, regdate=now() where idx=? and pw=?";      
         pstmt = conn.prepareStatement(sql);// 쿼리 준비
         pstmt.setString(1, dto.getTitle());
         pstmt.setString(2, dto.getContent());
         pstmt.setString(3, dto.getWriter());         
         pstmt.setInt(4, dto.getIdx());
         pstmt.setString(5, dto.getPw());
         res = pstmt.executeUpdate();// db에 세팅된 내용을 던짐. => 결과를 int로 받음
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {// 상단 코드의 실행여부와 상관없이 무조건 실행됨. 
         dbMgr.freeConnection(conn, pstmt);// insert가 끝나면 연결을 강제로 다 끊어줌
      }      
      return res;
   }
   
   
   
}















