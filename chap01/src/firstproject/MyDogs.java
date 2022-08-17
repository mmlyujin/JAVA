package firstproject;

public class MyDogs {
 //필드 -> 객체의 데이터가 저장되는 곳 
//우리 강쥐라는 객체를 생성할 것이니 우리 강쥐들에 대한 특성을 생성
	String name,gender;//이름,성별
	int age,height;//나이,키
	
	//생성자 -> 객체를 초기화시켜준다.
	public MyDogs() {
		// TODO Auto-generated constructor stub
		this.name = "coco";
	}
	public MyDogs(String name) {
		this.name = name;
	}
	public MyDogs(String name,String gender) {
		this.name = name;
		this.gender = gender;
	}
	public MyDogs(String name,String gender,int age) {
		this.name = name;
		this.gender = gender;
		this.age = age;
	}
	public MyDogs(String name,String gender,int age,int height) {
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.height = height;
	}
	
	
	//메소드 -> 동작
	void printDogs() {
		System.out.println("name :"+name+"/"+"gender :"+gender+"/"+"age :"+age+"/"+"height :"+height+"cm");
	}
	void setName(String name) {
		this.name = name;
	}
	int height () {
		return height;
	}
	
	public static void main(String[] args) {
	    MyDogs dog1 = new MyDogs();
		System.out.println(dog1.name);//위의 메소드에서 설정한 이름값이 나옴.
		MyDogs dog2 = new MyDogs("ruby","female");
		dog2.age = 12;
		dog2.height = 30;
		dog2.setName("cute ruby");//개2의 name이 ruby->cute ruby로 체인지.
		dog2.printDogs();//dog2객체에 프린트독스 메소드 동작을 붙임.
		int height2 = dog2.height;//독2객체에 메소드 int height()를 붙인 것에 변수를 줌
		System.out.println(height2+"cm");//리턴값 추출 ->객체에 저장된 height 값
	}
	
}
