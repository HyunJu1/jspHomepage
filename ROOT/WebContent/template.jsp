<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	//링크를 건다거나, 액션을 잡는다거나 페이지 위치를 잡을때
 	//앞으로는 /부터 설정을 해주세요.
 	//이걸 고정으로 잡아두면 template로써의 역할을 못함.
 	String top=request.getParameter("t");
 	String center=request.getParameter("c");
 	String bottom=request.getParameter("b");
 %>   
<html>
	<head>
		<title>WEB APPS</title>
	</head>
	<body>
		<table style="height: 100%; width: 100%">
			<tr height="7%" bgcolor="#A4FFFF">
				<td>
					<%
						pageContext.include(top);
					%>
				</td>
			</tr>
			<tr height="86%">
				<td>
					<%
						pageContext.include(center+".jsp");
					%>
				</td>
			</tr>
			<tr height="7%" bgcolor="#A4FFFF">
				<td>
					<%
						pageContext.include(bottom+".jsp");
					%>
				</td>
			</tr>
		</table>
	</body>
</html>