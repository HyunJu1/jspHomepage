<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	//��ũ�� �Ǵٰų�, �׼��� ��´ٰų� ������ ��ġ�� ������
 	//�����δ� /���� ������ ���ּ���.
 	//�̰� �������� ��Ƶθ� template�ν��� ������ ����.
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