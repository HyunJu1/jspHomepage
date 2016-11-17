<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h2>회원가입</h2>
<i>(*항목은 필수 기입 항목입니다.)</i>
<hr/>
<form action="/member/login.jsp">
		<li>아이디 
			<input id="rid" type="text" name="id" required="required" 
					readonly="readonly" onclick="javascript:idcheck()"/> 
			<input type="button" value="중복체크" onclick="javascript:idcheck()"/>
		</li>
	PW <input type="password" name="PW"><br>
	이름 <input type="text" name="name"><br>
	나이 <input type="text" name="age"><br>
	키 <input type="text" name="cm"><br>
	<input type="submit">
</form>
<script>
	function idcheck() {
		window.open("/member/check.jsp", "c", "width=350,height=130");
	}


</script>
