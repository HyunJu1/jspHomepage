<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<h1>������ ���!</h1>
<%
	int n = 0;
	try {
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String cm = request.getParameter("cm");

		String sql = "insert into sample values(?,?,?,?,?)";
		int age_i = Integer.parseInt(age);
		double cm_d = Double.parseDouble(cm);
		if (name == null || age == null || cm == null || ID == null || PW == null)
			out.println("�Է°� ����");

		//=======================================================
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe"; //DB ��ġ�� ��� �ִ� ����
		String username = "web"; //������ DB������
		String password = "oracle"; //�ش� ������ ��й�ȣ

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(url, username, password);
		//=======================================================
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, name);
		ps.setInt(2, age_i);
		ps.setDouble(3, cm_d);
		ps.setString(4, ID);
		ps.setString(5, PW);

		n = ps.executeUpdate();

		conn.close();
	} catch (Exception e) {
		out.println("<h3>���ܹ߻�! " + e + "</h3>");
	}
	if (n > 0) {
%>
<script>
	alert("ȸ������ ����!");
	location.href = "/index.jsp";
</script>
<%
	} else {
%>
<script>
	alert("������");
</script>
<%
	}
%>
