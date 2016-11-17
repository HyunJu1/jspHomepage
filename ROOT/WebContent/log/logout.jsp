<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*"%>
<%
	Cookie[] c = request.getCookies();
	Cookie a1 = new Cookie("ID", "");
	Cookie a2 = new Cookie("PW", "");
	boolean b = CookieFind.Find(c, "ID");
	if (b) {
		a1.setMaxAge(0);
		a2.setMaxAge(0);
		a1.setPath("/");
		a2.setPath("/");
		response.addCookie(a1);
		response.addCookie(a2);
	}

	session.invalidate();

	String target = "/template.jsp?t=/log/login&c=/main&b=/bottom";
	target = "/";
%>
<script>
	location.href = "/index.jsp";
</script>