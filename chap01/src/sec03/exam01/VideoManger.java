
package sec03.exam01;

import java.util.Scanner;

public class VideoManger {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		   Scanner sc = new Scanner(System.in);
		
		 String video[]={"책없음","책없음","책없음","책없음","책없음","책없음","책없음","책없음","책없음","책없음","책없음"};
	      
	      System.out.println("비디오 관리 프로그램");
	      
	      while(true){
	      
	         System.out.println("메뉴선택 1.입력 2.삭제 3.전체출력 4.검색 5.종료");
	         int menu = sc.nextInt();// 문자를 입력하면 터짐
	         if(menu==1){
	            System.out.println("입력을 선택했습니다.");
	            System.out.print("입력할 번호를 선택하세요 :");
	            int idx = sc.nextInt();// 입력후 엔터를 치게 된다.
	            System.out.print("책제목을 입력하세요 :");
	            sc.nextLine();// 엔터값이 남아있는걸 처리하기 위해서 쓰지않지만 필요한 코드 작성함
	            String title = sc.nextLine();
	            // 엔터를 친게 엔터라는 값이 남아있어서 자동으로 엔터입력됨         
	            video[idx]=title;
	            
	         }else if(menu==2){
	            System.out.println("삭제를 선택했습니다.");
	            System.out.print("삭제할 번호를 선택하세요 :");
	            int idx = sc.nextInt();
	            video[idx]="책없음";
	            
	         }else if(menu==3){
	            System.out.println("전체출력을 선택했습니다.");
	            for(int i=0;i<video.length;i++){
	               System.out.println(i+". "+video[i]);
	            }
	         }else if(menu==4){
	            System.out.println("검색을 선택했습니다.");
	            System.out.print("검색할 번호를 선택하세요 :");
	            int idx = sc.nextInt();
	            System.out.println(video[idx]);
	         }else if(menu==5){
	            System.out.println("종료합니다.");
	            break;
	         }else{
	            System.out.println("잘못된 입력입니다.");
	         }
	      }
	      
	      
	      
	      
	      
	   }
	}
