<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" import="models.*" import="java.sql.*"%>
<%
	String n = request.getParameter("num");
	BoardDao bdao = new BoardDao();
	List<BoardVo> bli = bdao.readAll();
	bdao.countAdd(Integer.parseInt(n));
	BoardVo vo1 = bdao.readOne(Integer.parseInt(n));
	
%>

<table style="width: 99%;">
	<tr bgcolor="#F8EBA0">
		<th width="3%">
			<input type="button" value="삭제"
			onclick="javascript:location.href='/?menu=delete&num=<%=vo1.getNum()%>'" />
		</th>
		<th width="3%">
			<input type="button" value="수정"
			onclick="javascript:location.href='/?menu=change&num=<%=vo1.getNum()%>'" />
		</th>
		<th><%=vo1.getTitle() %></th>
		<th width="10%"><%=vo1.getWriter() %></th>
		<th width="5%"><%=vo1.getCount() %></th>
	</tr>
	<tr>
		<th></th><th></th>
		<th><%=vo1.getContent()%></th>
	</tr>
</table>
