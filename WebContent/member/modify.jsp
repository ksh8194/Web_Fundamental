<%@page import="kr.co.kic.dev1.dto.MemberDto"%>
<%@page import="kr.co.kic.dev1.dao.MemberDao"%>
<%@ page pageEncoding="utf-8" %>


<%
	request.setCharacterEncoding("utf-8");
	int seq = Integer.parseInt(request.getParameter("seq"));
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	MemberDto dto = new MemberDto(seq,name,id,email,phone);
	MemberDao dao = MemberDao.getInstance();
	boolean isSuccess = dao.update(dto);
	if(isSuccess){

%>
	<script>
		alert('수정성공');
		location.href="view.jsp?seq=<%=seq%>";
	</script>
<%}else{%>
	<script>
		alert('수정실패');
		history.back(-1);
	</script>
<%}%>