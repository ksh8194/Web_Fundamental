<%@page import="kr.co.kic.dev1.dto.DeptDto"%>
<%@page import="kr.co.kic.dev1.dao.DeptDao"%>
<%@ page pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	DeptDao dao = DeptDao.getInstance();
	boolean isSuccess = dao.delete(no);
	if(isSuccess){
%>
	<script>
		alert("성공");
		location.href="list.jsp";
	</script>
	<%}else{ %>
	<script>
		alert("실패");
		history.back(-1);
	</script>
	<%} %>
	
	
	
	
	
