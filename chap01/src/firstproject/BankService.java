package firstproject;

public class BankService {
	String account;
	int balance, money;//최종 잔고와 입출금 금액
	
	//메소드
	void deposit(int balance, int money) {//입금
		balance = balance+money;//최종잔고는 입금돈에 원래잔고 더한것.
		this.balance=balance;
	}
	void withdrawal(int balance, int money) {
		balance = balance-money;//출금
		this.balance=balance;
	}
	
	void printBalance() {	
		if(balance<money) {
			System.out.println("Your balance is insufficient. Please check again.");
		}else {
			System.out.println("balance :"+balance);
		}
	}
	
	public static void main(String[] args) {
		BankService bs = new BankService();//입출금 인스턴스?
		
		BankCustomer b1= new BankCustomer("1234-5678",100000);
		b1.printCust();//고객 계좌와 잔고 출력
		
		//입출금 한다.
		//bs.deposit(100000,10000);//원래계좌에 입금했다~
		//bs.withdrawal(100000,5000);
		//bs.printBalance();
		
		
		bs.withdrawal(100000,100000);//출금한다~
		bs.printBalance();
		
	}
}
