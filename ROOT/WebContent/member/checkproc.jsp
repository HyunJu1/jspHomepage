<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="models.*"%>
<h3>���̵� �ߺ�üũ���</h3>
<%
	// �Ķ���ͷ� �̾ƴٰ�
	// dao ���ؼ� ������ �ִ��� Ȯ���ؼ� ������ ���Ұ�
	// ������ ��밡��
	String cid = request.getParameter("cid");
	MemberDao mdao = new MemberDao();
	MemberVo vo = mdao.readOne(cid);

	if(vo == null) {
%>
	[<%=cid %>] ��/�� <b>��밡��</b> �մϴ�.
	<hr/>
	<a href="javascript:apply()">�����ϱ�</a>
<%		
	}else {
%>
	[<%=cid %>] ��/�� <b>���Ұ���</b> �մϴ�.
	<hr/>
	<a href="/member/check.jsp">��˻��ϱ�</a>
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





