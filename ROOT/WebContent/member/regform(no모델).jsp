<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h2>ȸ������</h2>
<i>(*�׸��� �ʼ� ���� �׸��Դϴ�.)</i>
<hr/>
<form action="/member/login.jsp">
		<li>���̵� 
			<input id="rid" type="text" name="id" required="required" 
					readonly="readonly" onclick="javascript:idcheck()"/> 
			<input type="button" value="�ߺ�üũ" onclick="javascript:idcheck()"/>
		</li>
	PW <input type="password" name="PW"><br>
	�̸� <input type="text" name="name"><br>
	���� <input type="text" name="age"><br>
	Ű <input type="text" name="cm"><br>
	<input type="submit">
</form>
<script>
	function idcheck() {
		window.open("/member/check.jsp", "c", "width=350,height=130");
	}


</script>
