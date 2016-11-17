<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="models.*" %>
<%
	BoardDao dao = new BoardDao();
	BoardVo vo = new BoardVo();
	String writer = (String)session.getAttribute("ID");
	String type = request.getParameter("type");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String ip = request.getRemoteAddr();	
	
	vo.setWriter(writer);
	vo.setType(type);
	vo.setTitle(title);
	vo.setContent(content);
	vo.setIp(ip);
	int n = dao.createOne(vo);
	if(n>0){
		%>
		<script>
		location.href='/?menu=list';
		</script>
		<%
	}
	//dao.createOne(writer,type,title,content,ip);
%>