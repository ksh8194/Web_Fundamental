<%@page import="kr.co.kic.dev1.dto.DeptDto"%>
<%@page import="kr.co.kic.dev1.dao.DeptDao"%>
<%@ page pageEncoding="UTF-8"%>
<%
	String tempNo = request.getParameter("no");
	int no = 0;
	try{
		no = Integer.parseInt(tempNo);
	}catch(NumberFormatException e){
		no = 0;
	}
	DeptDao dao = DeptDao.getInstance();
	DeptDto dto = dao.select(no);
	
	if(dto != null){
		no = dto.getNo();
		String name = dto.getName();
		String loc = dto.getLoc();
		
%>
<%@ include file="../inc/header.jsp" %>

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb justify-content-end">
			<li class="breadcrumb-item"><a href="/">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Dept</li>
		</ol>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">부서</h5>

						<form class="form-horizontal" role="form" name="f" method="post" action="">
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="no">부서번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control"  value="<%=no %>" readonly placeholder="부서번호를 입력해 주세요">
									<div class="invalid-feedback">Please choose a username.</div>
								</div>
								
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="dname">부서이름</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name" id="name" value="<%=name %>" placeholder="부서이름을 입력해 주세요">
								</div>
								<div class="invalid-feedback">Please choose a username.</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="loc">부서위치</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="loc" id="loc" value="<%=loc %>" placeholder="부서위치 입력해 주세요">
								</div>
								<div class="invalid-feedback">Please choose a username.</div>
							</div>
							<input type="hidden" name="no" id="no" value="<%=no%>"/>
						</form>

						<div class="text-right">
							<a href="" id="modifyDept" class="btn btn-outline-primary">수정</a>
							<a href="" id="deleteDept" class="btn btn-outline-danger">삭제</a>
							<a href="list.jsp" class="btn btn-outline-success">리스트</a>
						</div>
						<script>
						$(function(){
							$("#modifyDept").on('click',function(event){
								event.preventDefault();
								//유효성 검사
								f.action = "modify.jsp";
								f.submit();
							});
							$("#deleteDept").on('click',function(event){
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
	alert("없는 부서 입니다.");
	history.back(-1);
</script>
<%} %>




