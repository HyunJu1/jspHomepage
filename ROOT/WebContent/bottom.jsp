<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<a href="/index.jsp">홈</a> | 
<% if (session.getAttribute("ID") == null && session.getAttribute("PW") == null){%>
<a href="/index.jsp?menu=register">회원가입 |</a> 
 <% }%> 
 <a href="/index.jsp?menu=list">게시판</a> | 
<a href="/index.jsp?menu=policy">이용약관</a> <b>&copy;saan CORP.</b>