<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h2>글쓰기</h2>
<hr />
<form action="/board/writeproc.jsp">
	<table style="width: 95%;">
		<tr>
			<td align="right"><b>글제목</b></td>
			<td><input type="text" size="78" name="title" /></td>
		</tr>
		<tr>
			<td align="right"><b>글분류</b></td>
			<td><input type="radio" value="공개" name="type" checked="checked" />공개
				<input type="radio" name="type" value="비공개" />비공개</td>
		</tr>
		<tr>
			<td valign="top" align="right"><b>글내용</b></td>
			<td><textarea rows="14" cols="80" name="content"></textarea></td>
		</tr>
	</table>
	<hr />
	<input type="submit" value="등록" />&nbsp; 
	<input type="button"value="목록"  onclick="javascript:location.href='/?menu=list'"/>
</form>
