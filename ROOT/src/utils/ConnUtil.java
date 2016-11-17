package utils;

import java.sql.*;

public class ConnUtil {
	// DB 연결 자체가 너무 귀찮아서 만들꺼다.
	public static Connection open() throws Exception {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe"; // DB 위치를 담고 있는 패턴
		String username = "web"; // 접속할 DB계정명
		String password = "oracle"; // 해당 계정의 비밀번호

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, username, password);
		return conn;
	}
}
