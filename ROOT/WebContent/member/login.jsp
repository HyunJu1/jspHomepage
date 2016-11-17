<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<h1>데이터 등록!</h1>
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
			out.println("입력값 오류");

		//=======================================================
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe"; //DB 위치를 담고 있는 패턴
		String username = "web"; //접속할 DB계정명
		String password = "oracle"; //해당 계정의 비밀번호

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
		out.println("<h3>예외발생! " + e + "</h3>");
	}
	if (n > 0) {
%>
<script>
	alert("회원가입 성공!");
	location.href = "/index.jsp";
</script>
<%
	} else {
%>
<script>
	alert("오류남");
</script>
<%
	}
%>
