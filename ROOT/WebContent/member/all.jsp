<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" import="models.*"%>
<%
	MemberDao mdao = new MemberDao();
	List<MemberVo> mli = mdao.readAll();
%>
<h2>
	ȸ�����(<%=mli.size()%>)
</h2>

<table style="width: 70%">
	<tr bgcolor="#A4FFFF">
		<td>�Ƶ�</td>
		<td>���</td>
		<td>�г���</td>
		<td>����</td>
		<td>Ű</td>
	</tr>
	<%for(MemberVo vo : mli) { %>
	<tr>
		<td><%=vo.getId() %></td>
		<td><%=vo.getPass() %></td>
		<td><%=vo.getName() %></td>
		<td><%=vo.getAge() %></td>
		<td><%=vo.getCm() %></td>
	</tr>
	<%} %>
	
	<%/*
	for(int i=0; i<mli.size(); i++) { 
			MemberVo t = mli.get(i);
		%>
	<tr>
		<td><%=t.getId() %></td>
		<td><%=t.getPass() %></td>
		<td><%=t.getName() %></td>
		<td><%=mli.get(i).getAge() %></td>
		<td><%=t.getCm() %></td>
	</tr>
	<%} 
	*/%>
<hr/>
</table>