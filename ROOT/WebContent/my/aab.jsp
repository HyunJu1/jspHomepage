<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="utils.*"%>
<%
	System.out.println(session.getAttribute("count"));
	session.setAttribute("count", (Integer)session.getAttribute("count")+1);
	if((Integer)session.getAttribute("count")>5) {%>
	<script>
		location.href="/log/logout.jsp";
	</script>
	<%}
	int n = 0;
	String pw="";

	try {
		pw = request.getParameter("PW");
		
		Connection con = ConnUtil.open();
		if(pw.equals(session.getAttribute("PW"))){
		String sql = "delete SAMPLE where id=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, (String) session.getAttribute("ID"));
		n = ps.executeUpdate();
		}
		con.close();
		
	} catch (Exception e) {
		System.out.println("E==" + e);
	}
%>
<%if(n>0){ %>
<script>
	alert("È¸¿øÅ»Åð ¿Ï·á");
	location.href = "/log/logout.jsp";
</script>
<%}else{%>
<script>
	alert("¿À·ù³²");
	location.href="/?menu=aaa";
</script>
<%}%>