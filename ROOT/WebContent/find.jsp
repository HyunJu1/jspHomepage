<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="utils.*"%>

<%
	String name = request.getParameter("name");

	try {
		Connection con = ConnUtil.open();
		String sql = "select * from sample where name like ?"; // ?�� �������� �ؿ��� setString ������ �̿��� ��.
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, "%" + name + "%");

		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			out.println("FOUND!");
			String n = rs.getString("name");

			out.println(n + "<br/>");
		}
		//=============================================
		con.close();
	} catch (Exception e) {
		out.println("<h1>" + e + "</h1>");
	}
%>