package com.yj.app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller") // 애노테이션 -> @를 이용한 특수 예약어
public class Controller extends HttpServlet { // 웹 http관련 메서드+클래스  
	// 서블릿은 컨트롤러가 가장 먼저실행된다.
	// 컨트롤러에서 어디로 갈지, 무엇을 실행할지 전체 관리를 하기 때문!
	
    public Controller() {
        super();    
    }    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// <form method="get"> 이면 실행
		doProc(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// <form method="post"> 이면 실행
		doProc(request, response);
	}
	
	protected void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doPost건 doGet이건 무조건 doProc 메서드 실행 
		//if문을 이용해서 주소줄에 들어오는 값에 따라서 페이지가 이동된다.
		//System.out.println(request.getParameter("id"));
		
		
	}
}







