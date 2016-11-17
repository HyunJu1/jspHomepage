<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="utils.*" import="models.*" import="java.sql.*"%>
<%
	BoardDao dao = new BoardDao();
	BoardVo vo = dao.readOne(Integer.parseInt((request.getParameter("num"))));

	dao.delete(vo);
%>
<script>
	alert("삭제되었습니다.");
	location.href = "/?menu=list";
</script>