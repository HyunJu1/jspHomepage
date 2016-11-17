<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*" %>
<!-- 센터용으로 사용할 메인 대문 페이지 -->

<h1>UNDER CONSTRUCTION</h1>
~ 2016.08.01
<form action="/search.jsp">
	검색 <input type="text" name="word">
	<input type="submit">
</form>
<%
	Cookie[] a = request.getCookies();
	String word = CookieFind.FindS(a, "word");
%>
<i>최근검색어 : <%=word %></i>

<%
	Cookie[] c = request.getCookies();
	if(!CookieFind.Find(c, "pop1")){
%>
<script>
	//window.open(경로, 붙일 이름, 옵션들)
	window.open("/pop/open.jsp","c","width=300,height=400");
</script>
<%}%>