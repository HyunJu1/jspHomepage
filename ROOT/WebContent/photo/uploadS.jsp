<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="utils.*" import="models.*" import="java.util.*"%>
<%@page import="com.oreilly.servlet.*" import="java.io.*"%>
<%
	String save = request.getRealPath("/upload");
	MultipartRequest multi = new MultipartRequest(request, save, 1024 * 1024 * 300, "euc-kr"); //����°� ��ü�� ���ε� ��!!!!

	//�⺻������ �̴� �͵��� (text ��ݰ���)
	String i = multi.getParameter("info"); //request.getParameter().. �ƴ�!!
	//���Ͽ� ���� ������.. ()
	File f = multi.getFile("target");
	String fn = f.getName();
	String fp = f.getPath();

	PhotoDao dao = new PhotoDao();
	PhotoVo vo = new PhotoVo();

	vo.setId((String) session.getAttribute("ID"));
	vo.setUrl("http://192.168.104.111/upload/" + fn);
	vo.setPath("x");
	dao.createOne(vo);

	PhotoDao pdao = new PhotoDao();
	List<PhotoVo> pli = pdao.readAll((String) session.getAttribute("ID"));
	String url = "";
	if (pli.size() == 0) {
		url = "/photo/default.jpg";
	} else {
		url = pli.get(0).getUrl();
	}
	session.setAttribute("profile", url);
%>
<h2>���ε� ó�����..!</h2>
���ϼ��� ? :
<%=i%><br />
<hr />
<%=fp%><br />
������ ��� : http://192.168.104.111/upload/<%=fn%>
<hr />
<img src="http://192.168.104.111/upload/<%=fn%>" />