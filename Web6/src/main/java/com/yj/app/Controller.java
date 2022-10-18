package com.yj.app;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProc(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProc(request, response);
	}
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getRequestURI(); //http://localhost:8080/Web6/*.do
		cmd = cmd.substring(cmd.lastIndexOf("/")+1,cmd.indexOf(".")); //*
		
		if(cmd.equals("main")) {
			response.sendRedirect("main.jsp");
		}else if(cmd.equals("regist")) {
			response.sendRedirect("regist.jsp");
		}else if(cmd.equals("registProc")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			
			System.out.println(id+"/"+pw+"/"+name+"/"+email);
			
			W6Dao dao = new W6Dao();
			W6Dto dto =  new W6Dto(id,pw,name,email);
			int result = dao.insertMember(dto);
			if(result>0) {
				response.sendRedirect("main.jsp");
			}else {
				
			}
			
		}else if(cmd.equals("memberList")) {
			//dao 실행시키고 결과를 이쪽으로 가져옴. 
			W6Dao dao = new W6Dao();
			Vector<W6Dto> v = dao.selectMemberAll();
			//response.sendRedirect("memberList.jsp");
			//java => jsp로 값을 가지고 가지 못함 . => RequestDispatcher로 변경해야 함. 
			
			RequestDispatcher view = request.getRequestDispatcher("memberList.jsp");
			request.setAttribute("vectordata", v);
			view.forward(request, response);
		}else if(cmd.equals("writeboard")) {
			response.sendRedirect("writeboard.jsp");
		}else if(cmd.equals("writeboardProc")) {
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String content= request.getParameter("content");
			
			System.out.println(id+"/"+title+"/"+content);
			
			BoardDao dao = new BoardDao();		
			BoardDto dto =  new BoardDto(id,title,content);
			int result = dao.insertBoard(dto);
			if(result>0) {
				response.sendRedirect("main.jsp");
			}else {
				
			}
			
		}else if(cmd.equals("boardList")) { 
			BoardDao dao = new BoardDao();
			Vector<BoardDto> v = dao.selectboardAll();
			
			RequestDispatcher view = request.getRequestDispatcher("boardList.jsp"); //어디로 갈지?
			request.setAttribute("vectordata", v); // 값을 담기
			view.forward(request, response); // 가랏 
		}
		
	
	}

}
