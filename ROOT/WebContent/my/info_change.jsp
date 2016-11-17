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

<h2>내 정보</h2>
<hr />
<ul style="line-height: 2;">
	<li>현재 닉네임 : <%=name%></li>
	<li>현재 나이 : <%=age%></li>
	<li>현재 키 : <%=cm%></li>
</ul>
<hr />
<form action="/my/change.jsp">
	새로운 닉네임 <input type="text" name="name">
	새로운 나이 <input type="text" name="age">
	새로운 키 <input type="text" name="cm"> 
	<input type="submit" value="수정">
</form>