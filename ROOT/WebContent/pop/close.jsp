<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//�׸����ڴٰ� �°ű� ������..
	//��Ű�ϳ��� �����ϰ� �ð� �����ؼ� ������..
	Cookie c = new Cookie("pop1","close");
	c.setPath("/");
	c.setMaxAge(60*60*24);
	response.addCookie(c);
%>
<script>
	window.close();
</script>