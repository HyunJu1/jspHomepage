<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- ��ܿ����� ����� �α��� ������ �Է� �� -->
<!-- �̿ϼ� / action �뼳�� / name �� ���� (���߿� �ؾ���..) -->
<%@page import="models.*"  import="java.util.*"%>
<%
	String ID = (String) session.getAttribute("ID");
	String PW = (String) session.getAttribute("PW");
	String name = (String) session.getAttribute("name");
	
	PhotoDao pdao = new PhotoDao();
	List<PhotoVo> pli = pdao.readAll(ID);
	String url=(String)session.getAttribute("profile");
%>
<div>
	<a href="javascript:profileUp()">
	<img src="<%=url %>", width="50", height="50"/>
	</a>
</div>
<%=url %>
<script>
	function profileUp(){
		window.open("/photo/upload.jsp","psa","width=800, height=400");
	}
</script>

<b><a href="?menu=info"><%=name%></a>�� �ݰ����ϴ�.</b>
<%
	if (session.getAttribute("ID").equals("admin")) {
%>
&nbsp&nbsp
<a href="/member/all.jsp"><b>ȸ�����</b></a>
<%
	}
%>
<br>
<form action="/log/logout.jsp">
	<input type="submit" value="�α׾ƿ�" />
</form>