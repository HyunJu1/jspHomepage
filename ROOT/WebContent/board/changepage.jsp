<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	session.setAttribute("num", request.getParameter("num"));
%>

<form action="/board/change.jsp">
	<table style="width: 95%;">
		<tr>
			<td align="right"><b>글제목</b></td>
			<td><input type="text" size="78" name="title" /></td>
		</tr>
		<tr>
			<td valign="top" align="right"><b>글내용</b></td>
			<td><textarea rows="14" cols="80" name="content"></textarea></td>
		</tr>
	</table>
	<hr />
	<input type="submit" value="수정" />
</form>