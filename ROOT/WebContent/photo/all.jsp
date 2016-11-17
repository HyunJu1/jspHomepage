<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*" import="models.*" import="java.util.*"%>
<%@page import="com.oreilly.servlet.*" import="java.io.*"%>
<%
	PhotoDao dao = new PhotoDao();
	PhotoVo vo = new PhotoVo();
	List<PhotoVo> pli = dao.readAll((String) session.getAttribute("ID"));
	String url = "";
	int i = pli.size();
	for (int a = 1; a <= i; a++) {
		url = pli.get(a-1).getUrl();
%>
<div>
	<img src="<%=url%>" , width="50" , height="50">
</div>
<%
	}
%>