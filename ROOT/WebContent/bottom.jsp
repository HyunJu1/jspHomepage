<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<a href="/index.jsp">Ȩ</a> | 
<% if (session.getAttribute("ID") == null && session.getAttribute("PW") == null){%>
<a href="/index.jsp?menu=register">ȸ������ |</a> 
 <% }%> 
 <a href="/index.jsp?menu=list">�Խ���</a> | 
<a href="/index.jsp?menu=policy">�̿���</a> <b>&copy;saan CORP.</b>