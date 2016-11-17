<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*" import="models.*" import="java.util.*" %>
<%@page import="com.oreilly.servlet.*" import="java.io.*"%>
	
<h3>파일업로드 폼 구축</h3>
<form action="/photo/uploadS.jsp" method="post" enctype="multipart/form-data">
	설명 : <input type="text" name="info" /><br />
	첨부파일 : <input type="file" name="target" /><br />
	<input type="submit" value="업로드" />
</form>

<a href="/photo/all.jsp">업로드된 사진 전체보기</a>