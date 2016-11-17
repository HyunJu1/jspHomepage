<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*"%>
<%
	Cookie[] a = request.getCookies();
	Cookie c = new Cookie("word", "");
	String word = "";

	if (CookieFind.Find(a, "word")) {
		word = CookieFind.FindS(a, "word");
		word += " / " + request.getParameter("word");
		c.setValue(word);
		c.setPath("/");
		c.setMaxAge(60 * 60 * 24);
		String[] wordb = word.split("/");
		if(wordb.length > 3){
			wordb[0] = wordb[wordb.length-3];
			wordb[1] = wordb[wordb.length-2];
			wordb[2] = wordb[wordb.length-1];
			word = wordb[0];
			word += " / "+wordb[1];
			word += " / "+wordb[2];
			c.setValue(word);
		}
		response.addCookie(c);
	} else {
		word = request.getParameter("word");
		c.setValue(word);
		c.setPath("/");
		c.setMaxAge(60 * 60 * 24);
		response.addCookie(c);
	}
	response.sendRedirect("/");
%>