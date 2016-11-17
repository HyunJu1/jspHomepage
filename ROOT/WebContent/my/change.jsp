<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="utils.*"%>
<%
	String name = "";
	String age = "";
	String cm = "";
	name = (String) request.getParameter("name");
	age = (String) request.getParameter("age");
	cm = (String) request.getParameter("cm");
	try {
		Connection con = ConnUtil.open();
		String sql = "update SAMPLE set name=?,age=?,cm=? where ID = ?";
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, name);
		ps.setString(2, age);
		ps.setString(3, cm);
		ps.setString(4, (String) session.getAttribute("ID"));

		ResultSet rs = ps.executeQuery();
		ps.executeUpdate();

		if (rs.next()) {
			name = rs.getString("NAME");
			age = rs.getString("AGE");
			cm = rs.getString("CM");
		}

		con.close();
	} catch (Exception e) {
		System.out.println("E==" + e);
	}
%>
<script>
	alert("회원정보 변경 성공!");
	location.href = "/log/logout.jsp";
</script>
