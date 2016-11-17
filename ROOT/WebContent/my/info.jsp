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

<h2>내 정보</h2>
<hr />
<ul style="line-height: 2;">
	<li>아이디 : <%=ID%></li>
	<li>비밀번호 : <%=PW%></li>
	<li>닉네임 : <%=name%></li>
	<li>나이 : <%=age%></li>
	<li>키 : <%=cm%></li>
</ul>
<hr />
<b><a href="?menu=aaa">회원탈퇴</a></b>
<b><a href="?menu=info_change">내 정보 수정</a></b>