package firstproject;

public class Human {
    //�ʵ�
    String name;
    int age;
    String gender;
    String number;

    //������
    public Human(){
        name = "ȫ�浿";
    }
    public Human(String name,int age,String gender,String number){
        //
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.number = number;
    }

    //�޼���
    void printHuman(){//�ʵ� ��ü ���
        System.out.println(name+age+gender+number);
    }
    void setName(String name){
        this.name = name;
    }
    int getAge(){
        return age;
    }

    public static void main(String[] args) {
        Human human3 =new Human();
        System.out.println(human3.name);
        Human human1 = new Human("yujin",26,"female","01012345678");//���1����
        Human human2 = new Human("homin",27,"male","01011112222");//���2����
        human2.printHuman();
        human1.setName("coco");//��ü�� ���� ����� ���� ���߿� ��ü�� ��ȭ������ ���� void set(){}
        human1.printHuman();//setname�ϰ� �� �ڿ� ��� �ؾ��� ����.
        int getAge1 = human1.getAge();//���̰� ������.
        System.out.println(getAge1);
    }
}