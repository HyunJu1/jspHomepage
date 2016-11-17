<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="models.*"%>
<h3>아이디 중복체크결과</h3>
<%
	// 파라미터로 뽑아다가
	// dao 통해서 데이터 있는지 확인해서 있으면 사용불가
	// 없으면 사용가능
	String cid = request.getParameter("cid");
	MemberDao mdao = new MemberDao();
	MemberVo vo = mdao.readOne(cid);

	if(vo == null) {
%>
	[<%=cid %>] 은/는 <b>사용가능</b> 합니다.
	<hr/>
	<a href="javascript:apply()">적용하기</a>
<%		
	}else {
%>
	[<%=cid %>] 은/는 <b>사용불가능</b> 합니다.
	<hr/>
	<a href="/member/check.jsp">재검색하기</a>
<%		
	}
%>
<script>
	function apply() {
		var nd = opener.document.getElementById("rid");
		nd.value= "<%=cid%>";
		window.close();
	}
</script>





