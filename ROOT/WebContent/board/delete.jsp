<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="utils.*" import="models.*" import="java.sql.*"%>
<%
	BoardDao dao = new BoardDao();
	BoardVo vo = dao.readOne(Integer.parseInt((request.getParameter("num"))));

	dao.delete(vo);
%>
<script>
	alert("�����Ǿ����ϴ�.");
	location.href = "/?menu=list";
</script>