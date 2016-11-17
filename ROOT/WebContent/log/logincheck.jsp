<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" import="java.util.*" import="utils.*"
	import="models.*"%>

<%
	String ID = request.getParameter("ID");
	String PW = request.getParameter("PW");
	String check = request.getParameter("check");
	PhotoDao pdao = new PhotoDao();
	List<PhotoVo> pli = pdao.readAll(ID);
	String url = "";
	int n = 0;
	String name = "알수없음";
	String age = "";
	String cm = "";
	boolean tmp = false;
	try {
		Connection con = ConnUtil.open();
		String sql = "select * from sample where ID = ? and PW = ?"; // ?를 쓸때에는 밑에서 setString 따위를 이용해 함.
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, ID);
		ps.setString(2, PW);

		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			String i = rs.getString("ID");
			String p = rs.getString("PW");
			name = rs.getString("name");
			age = rs.getString("age");
			cm = rs.getString("cm");
			if (i.equals(ID) && p.equals(PW))
				tmp = true;
		}
		//=============================================
		n = ps.executeUpdate();
		con.close();
	} catch (Exception e) {
		out.println("<h1>" + e + "</h1>");
	}
	if (n > 0) {
		session.setAttribute("ID", ID);
		session.setAttribute("PW", PW);
		session.setAttribute("name", name);
		session.setAttribute("age", age);
		session.setAttribute("cm", cm);
		session.setAttribute("count", 0);
		session.setAttribute("login", "on");

		if (pli.size() == 0) {
			url = "/photo/default.jpg";
		} else {
			url = pli.get(0).getUrl();
		}
		session.setAttribute("profile", url);

		if (check == null) {
		} else if (check.equals("on")) {
			Cookie id = new Cookie("ID", ID);
			Cookie pw = new Cookie("PW", PW);
			id.setMaxAge(3600 * 24 * 2);
			pw.setMaxAge(3600 * 24 * 2);
			id.setPath("/");
			pw.setPath("/");
			response.addCookie(id);
			response.addCookie(pw);
			session.setAttribute("login", "on");
		}
%>
<script>
	location.href = "/index.jsp";
</script>
<%
	//RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		//rd.forward(request, response);
	} else {
		out.println("로그인 실패");
	}
%>