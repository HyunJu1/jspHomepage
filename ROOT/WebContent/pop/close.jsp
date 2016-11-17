<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//그만보겠다고 온거기 때문에..
	//쿠키하나를 적절하게 시간 설정해서 보내고..
	Cookie c = new Cookie("pop1","close");
	c.setPath("/");
	c.setMaxAge(60*60*24);
	response.addCookie(c);
%>
<script>
	window.close();
</script>