<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h2>ȸ�����Ծ��</h2>
<i>(*)�׸��� �ʼ� ���� �׸��Դϴ�.</i>
<hr />
<form action="/member/regproc.jsp">
	<ul style="line-height: 2;">
		<li>���̵� 
			<input id="rid" type="text" name="ID" required="required" 
					readonly="readonly" onclick="javascript:idcheck()"/> 
			<input type="button" value="�ߺ�üũ" onclick="javascript:idcheck()"/>
		</li>
		<li>��й�ȣ <input type="password" name="PW" /></li>
		<li>�̸� <input type="text" name="name"/></li>
		<li>���� <input type="text" name="age"><br></li>
		<li>Ű <input type="text" name="cm" /></li>
	</ul>
	<input type="submit" value="���" />
</form>
<script>
	function idcheck() {
		window.open("/member/check.jsp", "c", "width=350,height=130");
	}


</script>



