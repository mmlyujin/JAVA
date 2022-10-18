import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionProvider { //커넥션 공급자
	public static Connection getConnection() throws NamingException,SQLException{
		Context initContext =  new InitialContext(); //InitialContext -> 미리 설정되어 있는 환경을 뽑아오기 위함 
		Context envContext = (Context)initContext.lookup("java:/comp/env"); //뽑기 
		DataSource ds =  (DataSource)envContext.lookup("jdbc/mysq");
		Connection conn = ds.getConnection();
		
		return conn;
		
	}

}
