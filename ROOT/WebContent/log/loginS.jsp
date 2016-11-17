<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- 상단용으로 사용할 로그인 데이터 입력 폼 -->
<!-- 미완성 / action 노설정 / name 노 설정 (나중에 해야지..) -->
<%@page import="models.*"  import="java.util.*"%>
<%
	String ID = (String) session.getAttribute("ID");
	String PW = (String) session.getAttribute("PW");
	String name = (String) session.getAttribute("name");
	
	PhotoDao pdao = new PhotoDao();
	List<PhotoVo> pli = pdao.readAll(ID);
	String url=(String)session.getAttribute("profile");
%>
<div>
	<a href="javascript:profileUp()">
	<img src="<%=url %>", width="50", height="50"/>
	</a>
</div>
<%=url %>
<script>
	function profileUp(){
		window.open("/photo/upload.jsp","psa","width=800, height=400");
	}
</script>

<b><a href="?menu=info"><%=name%></a>님 반갑습니다.</b>
<%
	if (session.getAttribute("ID").equals("admin")) {
%>
&nbsp&nbsp
<a href="/member/all.jsp"><b>회원목록</b></a>
<%
	}
%>
<br>
<form action="/log/logout.jsp">
	<input type="submit" value="로그아웃" />
</form>