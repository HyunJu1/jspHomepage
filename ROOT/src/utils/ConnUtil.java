package utils;

import java.sql.*;

public class ConnUtil {
	// DB ���� ��ü�� �ʹ� �����Ƽ� ���鲨��.
	public static Connection open() throws Exception {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe"; // DB ��ġ�� ��� �ִ� ����
		String username = "web"; // ������ DB������
		String password = "oracle"; // �ش� ������ ��й�ȣ

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, username, password);
		return conn;
	}
}
