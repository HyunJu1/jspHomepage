<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*"%>
<%
	String login = "/log/login.jsp";
	Cookie[] c = request.getCookies();

	if (session.getAttribute("ID") != null && session.getAttribute("PW") != null) {
		login = "/log/loginS.jsp"; //로그아웃 페이지
	}

	String target = "";
	String cb = "/template.jsp?c=/main&b=/bottom&t=";
	String ab = request.getParameter("menu");
	if (CookieFind.Find(c, "ID") && session.getAttribute("login") == null) {
		cb = "";
		String ID = CookieFind.FindS(c, "ID");
		String PW = CookieFind.FindS(c, "PW");
		login = "/log/logincheck.jsp?ID=" + ID + "&PW=" + PW;
	} else if (ab == null)
		target = "";
	else if (ab.equals("policy")) {
		cb = "/template.jsp?c=/policy/service&b=/bottom&t=";
	} else if (ab.equals("register")) {
		cb = "/template.jsp?c=/member/regform&b=/bottom&t=";
	} else if (ab.equals("logincheck")) {
		cb = "/template.jsp?c=/main&b=/bottom&t=";
	} else if (ab.equals("info")) {
		cb = "/template.jsp?c=/my/info&b=bottom&t=";
	} else if (ab.equals("info_change")) {
		cb = "/template.jsp?c=/my/info_change&b=bottom&t=";
	} else if (ab.equals("aaa")) {
		cb = "/template.jsp?c=/my/aaa&b=bottom&t=";
	} else if (ab.equals("members")) {
		cb = "/template.jsp?c=/member/all&b=bottom&t=";
	} else if (ab.equals("list")) {
		cb = "/template.jsp?c=/board/list&b=bottom&t=";
	} else if (ab.equals("write")) {
		cb = "/template.jsp?c=/board/writeform&b=bottom&t=";
	} else if (ab.equals("read")){
		cb = "/template.jsp?c=/board/read&b=bottom&t=";
	} else if (ab.equals("delete")){
		cb = "/template.jsp?c=/board/delete&b=bottom&t=";
	} else if (ab.equals("change")){
		cb = "/template.jsp?c=/board/changepage&b=bottom&t=";
	}
	target = cb + login;
	request.getRequestDispatcher(target).forward(request, response);
%>