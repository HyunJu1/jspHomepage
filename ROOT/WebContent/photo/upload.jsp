<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*" import="models.*" import="java.util.*" %>
<%@page import="com.oreilly.servlet.*" import="java.io.*"%>
	
<h3>���Ͼ��ε� �� ����</h3>
<form action="/photo/uploadS.jsp" method="post" enctype="multipart/form-data">
	���� : <input type="text" name="info" /><br />
	÷������ : <input type="file" name="target" /><br />
	<input type="submit" value="���ε�" />
</form>

<a href="/photo/all.jsp">���ε�� ���� ��ü����</a>