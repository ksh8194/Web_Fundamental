<%@page import="kr.co.kic.dev1.dto.DeptDto"%>
<%@page import="kr.co.kic.dev1.dao.DeptDao"%>
<%@ page pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String name = request.getParameter("name");
	String loc = request.getParameter("loc");
	
	DeptDao dao = DeptDao.getInstance();
	DeptDto dto = new DeptDto(no, name, loc);
	boolean isSuccess = dao.update(dto);
	if(isSuccess){
%>
	<script>
		alert("성공");
		location.href="view.jsp?no=<%=no%>";
	</script>
	<%}else{ %>
	<script>
		alert("실패");
		history.back(-1);
	</script>
	<%} %>
	
	
	
	
	
