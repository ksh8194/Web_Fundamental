<%@page import="kr.co.kic.dev1.dto.EmpDto"%>
<%@page import="kr.co.kic.dev1.dao.EmpDao"%>
<%@ page pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	
	int no = Integer.parseInt(request.getParameter("empno"));
	String name = request.getParameter("name");
	String job = request.getParameter("job");
	int mgr = Integer.parseInt(request.getParameter("mgr"));
	float sal = Float.parseFloat(request.getParameter("sal"));
	float comm = Float.parseFloat(request.getParameter("comm"));
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	
	EmpDao dao = EmpDao.getInstance();
	EmpDto dto = new EmpDto(no,name,job,mgr,null,sal,comm,deptno);
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
	
	
	
