<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*" %>
<!-- ���Ϳ����� ����� ���� �빮 ������ -->

<h1>UNDER CONSTRUCTION</h1>
~ 2016.08.01
<form action="/search.jsp">
	�˻� <input type="text" name="word">
	<input type="submit">
</form>
<%
	Cookie[] a = request.getCookies();
	String word = CookieFind.FindS(a, "word");
%>
<i>�ֱٰ˻��� : <%=word %></i>

<%
	Cookie[] c = request.getCookies();
	if(!CookieFind.Find(c, "pop1")){
%>
<script>
	//window.open(���, ���� �̸�, �ɼǵ�)
	window.open("/pop/open.jsp","c","width=300,height=400");
</script>
<%}%>