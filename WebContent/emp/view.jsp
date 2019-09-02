<%@page import="kr.co.kic.dev1.dto.EmpDto"%>
<%@page import="kr.co.kic.dev1.dao.EmpDao"%>
<%@ page pageEncoding="UTF-8"%>
<%
	String tempNo = request.getParameter("no");
	int no = 0;
	try{
		no = Integer.parseInt(tempNo);
	}catch(NumberFormatException e){
		no = 0;
	}
	EmpDao dao = EmpDao.getInstance();
	EmpDto dto = dao.select(no);
	
	if(dto != null){
		no = dto.getNo();
		String name = dto.getName();
		String job = dto.getJob();
		int mgr = dto.getMgr();
		String hiredate = dto.getHiredate();
		float sal = dto.getSal();
		float comm = dto.getComm();
		int deptNo = dto.getDeptNo();
%>
<%@ include file="../inc/header.jsp" %>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb justify-content-end">
			<li class="breadcrumb-item"><a href="/">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Emp</li>
		</ol>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">사원정</h5>

						<form class="form-horizontal" role="form" name="f" method="post" action="">
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="empno">사원번호</label>
								<div class="col-sm-10">
									<input type="number" class="form-control" value="<%=no %>"  readonly placeholder="사원번호를  입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="name">사원이름</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name" value="<%=name %>" id="name" placeholder="사원이름을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="job">직책</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="job" value="<%=job %>" id="job" placeholder="직책을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="mgr">상사</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="mgr" value="<%=mgr %>" id="mgr" placeholder="상사를 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="mgr">월급</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="sal" value="<%=sal %>" id="mgr" placeholder="월급을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="mgr">커미션</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="comm" value="<%=comm %>" id="mgr" placeholder="커미션을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="mgr">부서번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="deptno" value="<%=deptNo %>" id="deptno" placeholder="부서번호를 입력해 주세요">
								</div>
							</div>
							<input type="hidden" name="empno" id="empno" value="<%=no%>"/>
						</form>

						<div class="text-right">
							<a href="" id="modifyEmp" class="btn btn-outline-primary">수정</a>
							<a href="" id="deleteEmp" class="btn btn-outline-danger">삭제</a>
							<a href="list.jsp" class="btn btn-outline-success">리스트</a>
						</div>
						<script>
							$(function(){
								$("#modifyEmp").on('click',function(event){
									event.preventDefault();
									//유효성 검사
									f.action = "modify.jsp";
									f.submit();
								});
								$("#deleteEmp").on('click',function(event){
									event.preventDefault();
									//유효성 검사 필요 없음.
									f.action = "delete.jsp"
									f.submit();
								});
							});
						
							
						</script>
					</div>
				</div>
			</div>

		</div>
	</div>
	<%@ include file="../inc/footer.jsp"%>
<%}else{%>
<script>
	alert("없는글입니다.");
	history.back(-1);
</script>
<%} %>




