<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="utils.*"%>
<%
	String ID = "";
	String PW = "";
	String name = "";
	String age = "";
	String cm = "";
	try {
		Connection con = ConnUtil.open();
		String sql = "select * from sample where ID = ? and PW = ?";
		PreparedStatement ps = con.prepareStatement(sql);

		ps.setString(1, (String) session.getAttribute("ID"));
		ps.setString(2, (String) session.getAttribute("PW"));

		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			ID = rs.getString("ID");
			PW = rs.getString("PW");
			name = rs.getString("NAME");
			age = rs.getString("AGE");
			cm = rs.getString("CM");
		}

	} catch (Exception e) {
		System.out.println("E==" + e);
	}
%>

<h2>�� ����</h2>
<hr />
<ul style="line-height: 2;">
	<li>���� �г��� : <%=name%></li>
	<li>���� ���� : <%=age%></li>
	<li>���� Ű : <%=cm%></li>
</ul>
<hr />
<form action="/my/change.jsp">
	���ο� �г��� <input type="text" name="name">
	���ο� ���� <input type="text" name="age">
	���ο� Ű <input type="text" name="cm"> 
	<input type="submit" value="����">
</form>