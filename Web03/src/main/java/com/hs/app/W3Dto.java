package com.hs.app;

public class W3Dto {// jsp의 name와 반드시 같아야 하고, 이왕이면 db컬럼과 같으면 좋다
	private int idx;
	private String title;
	private String content;
	private String writer;
	private String pw;
	private String regdate;
	
	
	
	// Getter, Setter 만들기
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	
}
