<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<h2>회원가입양식</h2>
<i>(*)항목은 필수 기입 항목입니다.</i>
<hr />
<form action="/member/regproc.jsp">
	<ul style="line-height: 2;">
		<li>아이디 
			<input id="rid" type="text" name="ID" required="required" 
					readonly="readonly" onclick="javascript:idcheck()"/> 
			<input type="button" value="중복체크" onclick="javascript:idcheck()"/>
		</li>
		<li>비밀번호 <input type="password" name="PW" /></li>
		<li>이름 <input type="text" name="name"/></li>
		<li>나이 <input type="text" name="age"><br></li>
		<li>키 <input type="text" name="cm" /></li>
	</ul>
	<input type="submit" value="등록" />
</form>
<script>
	function idcheck() {
		window.open("/member/check.jsp", "c", "width=350,height=130");
	}


</script>



