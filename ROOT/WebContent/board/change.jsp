<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" import="models.*"%>
<%
	BoardDao dao = new BoardDao();
	BoardVo vo = dao.readOne(Integer.parseInt((session.getAttribute("num").toString())));
	dao.change(vo,request.getParameter("title"),request.getParameter("content"));
%>
<script>
	alert("�����Ǿ����ϴ�.");
	location.href = "/?menu=list";
</script>