<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="models.*"%>
데이터 등록 작업중..
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
	alert("등록중 오류 발생\n잠시 뒤에 재시도 부탁드립니다.");
	location.href = "/?menu=register";
</script>
<%
	}
%>



