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
			ID = (String) session.getAttribute("ID");
			PW = (String) session.getAttribute("PW");
			name = (String) session.getAttribute("name");
			age = (String) session.getAttribute("age");
			cm = (String) session.getAttribute("cm");
		}

	} catch (Exception e) {
		System.out.println("E==" + e);
	}
%>

<h2>�� ����</h2>
<hr />
<ul style="line-height: 2;">
	<li>���̵� : <%=ID%></li>
	<li>��й�ȣ : <%=PW%></li>
	<li>�г��� : <%=name%></li>
	<li>���� : <%=age%></li>
	<li>Ű : <%=cm%></li>
</ul>
<hr />
<b><a href="?menu=aaa">ȸ��Ż��</a></b>
<b><a href="?menu=info_change">�� ���� ����</a></b>