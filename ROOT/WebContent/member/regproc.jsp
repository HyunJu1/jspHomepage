<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="models.*"%>
������ ��� �۾���..
<%
	String id = request.getParameter("ID");
	String pass = request.getParameter("PW");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	Float cm = Float.parseFloat(request.getParameter("cm"));
	//String cm = request.getParameter("cm");
	
	MemberDao mdao = new MemberDao();
	int n =	mdao.createOne(id, pass, name, age, cm);
	
	//=========================================================================
	if (n > 0) {
		response.sendRedirect("/");
	} else {
%>
<script>
	alert("����� ���� �߻�\n��� �ڿ� ��õ� ��Ź�帳�ϴ�.");
	location.href = "/?menu=register";
</script>
<%
	}
%>



