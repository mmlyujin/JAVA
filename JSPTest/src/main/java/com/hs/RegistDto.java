/* Java Resources -> com -> hs -> RegistDto.java */

/* 여기 쓰인 파일은 Bean 사용하려면 필수로 해놔야하는 가이드라인 같은 거라 이해할 게 딱히 없음 */

package com.hs;

public class RegistDto{

    /* 값을 전달해주기 위해서 만드는 객체 (Bean 이라고도 함)
    * private 변수와 getter/setter만 있음
    * 변수명은 반드시 jsp에서 작성한 name과 같아야함
    * 원하는 타입으로 미리 정하면 알아서 변경해준다. */

    private String id;
    private String pw;
    private String name;
    private String hp;
    private String addr;
    private String[] hobby; // hobby는 체크박스라서 값이 여러개 들어갈 수 있으므로 배열로 만들어줘야함
    private String email;
    private String introduce;
    
    /* 코드 화면 빈 공간에서 오른쪽마우스 클릭 -> Source -> Generate Getters and Setter -> 전부다 체크해서 만들어주기
    * 그럼 밑에있는 애들 전부 자동으로 생성됨 */

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
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}


   

}