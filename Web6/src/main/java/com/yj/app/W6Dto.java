package com.yj.app;

public class W6Dto {
	private int idx;
	private String id;
	private String pw;
	private String name;
	private String email;
	
	public W6Dto() {} //매개변수를 가지는 생성자를 만든다면, 기본생성자를 직접 만들어야 한다. 
	
	
	public W6Dto(String id, String pw, String name, String email) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
