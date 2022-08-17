package firstproject;

public class BankCustomer {
	String account; //계좌
	int balance;//입출금 전 원래 잔고
	
	//생성자-객체를 초기화....은행고객의 정보
	public BankCustomer(String account,int balance) {
		this.account=account;
		this.balance=balance;
	}
	
	//메소드 ->실행문 
	public void setCus(String account,int balance) {
		this.account=account;
		this.balance=balance;
	}
//	void setAccount(String account,int money) {
//		setAccount("1234-5678", money);
//	}
	void printCust() {
		System.out.println("Account :"+account);
		System.out.println("Balance :"+balance);
		
	}
	
	/*
	public static void main(String[] args) {
		BankCustomer c1 = new BankCustomer(123,100000);
		c1.printCust();
		BankCustomer c2 = new BankCustomer(456, 50000);
		c2.printCust();
		
	}*/
}
