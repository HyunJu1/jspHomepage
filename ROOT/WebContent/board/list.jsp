<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" import="models.*"%>
<%
	BoardDao dao = new BoardDao();
	List<BoardVo> bli = dao.readAll();
%>
<h2>게시판</h2>
<hr />
<div align="right" style="width: 98%">
	<input type="button" value="글쓰기"
		onclick="javascript:location.href='/?menu=write'" />
</div>
※총 개의 글이 등록되어있습니다.
<table style="width: 99%;">
	<tr bgcolor="#F8EBA0">
		<th width="7%">글번호</th>
		<th width="12%">타입</th>
		<th>제목</th>
		<th width="12%">작성자</th>
		<th width="7%">조회수</th>
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
