<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" import="models.*"%>
<%
	BoardDao dao = new BoardDao();
	List<BoardVo> bli = dao.readAll();
%>
<h2>�Խ���</h2>
<hr />
<div align="right" style="width: 98%">
	<input type="button" value="�۾���"
		onclick="javascript:location.href='/?menu=write'" />
</div>
���� ���� ���� ��ϵǾ��ֽ��ϴ�.
<table style="width: 99%;">
	<tr bgcolor="#F8EBA0">
		<th width="7%">�۹�ȣ</th>
		<th width="12%">Ÿ��</th>
		<th>����</th>
		<th width="12%">�ۼ���</th>
		<th width="7%">��ȸ��</th>
	</tr>
	<%for(BoardVo vo : bli) { %>
	<tr>
		<td><%=vo.getNum() %></td>
		<td><%=vo.getType() %></td>
		<td><a href="/?menu=read&num=<%=vo.getNum()%>"><%=vo.getTitle() %></a></td>
		<td><%=vo.getWriter() %></td>
		<td><%=vo.getCount() %></td>
	</tr>
	<%} %>
</table>
