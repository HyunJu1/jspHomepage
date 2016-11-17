<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h3>사용할 아이디를 입력해주세요</h3>
<form action="/member/checkproc.jsp">
	<input type="text" name="cid" required="required"/>
	 <input type="submit" value="확인" />
</form>