<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h2>�۾���</h2>
<hr />
<form action="/board/writeproc.jsp">
	<table style="width: 95%;">
		<tr>
			<td align="right"><b>������</b></td>
			<td><input type="text" size="78" name="title" /></td>
		</tr>
		<tr>
			<td align="right"><b>�ۺз�</b></td>
			<td><input type="radio" value="����" name="type" checked="checked" />����
				<input type="radio" name="type" value="�����" />�����</td>
		</tr>
		<tr>
			<td valign="top" align="right"><b>�۳���</b></td>
			<td><textarea rows="14" cols="80" name="content"></textarea></td>
		</tr>
	</table>
	<hr />
	<input type="submit" value="���" />&nbsp; 
	<input type="button"value="���"  onclick="javascript:location.href='/?menu=list'"/>
</form>
