<%@page import="kr.co.kic.dev1.dao.EmpDao"%>
<%@ page pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	int empno = Integer.parseInt(request.getParameter("empno"));
	
	EmpDao dao = EmpDao.getInstance();
	boolean isSuccess = dao.delete(empno);
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
	
	
	
	
	
