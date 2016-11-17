<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 상단용으로 사용할 로그인 데이터 입력 폼 -->
<!-- 미완성 / action 노설정 / name 노 설정 (나중에 해야지..) -->
<%

%>

<form action="/log/logincheck.jsp">
	<b>ID </b><input type="text" name="ID"/><input type="checkbox" name="check"/>
	<b>PASS</b><input type="password" name="PW"/>
	<input type="submit" value="로그인"/>
</form>