<%@page import="kr.co.kic.dev1.dto.EmpDto"%>
<%@page import="kr.co.kic.dev1.dao.EmpDao"%>
<%@ page pageEncoding="UTF-8"%>
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
						<h5 class="card-title">사원</h5>

						<form class="form-horizontal" role="form" name="f" method="post" action="save.jsp">
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="empno">사원번호</label>
								<div class="col-sm-10">
									<input type="number" class="form-control" name="empno" value="" id="empno"  placeholder="사원번호를  입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="name">사원이름</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name" value="" id="name" placeholder="사원이름을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="job">직책</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="job" value="" id="job" placeholder="직책을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="mgr">상사</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="mgr" value="" id="mgr" placeholder="상사를 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="mgr">월급</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="sal" value="" id="mgr" placeholder="월급을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="mgr">커미션</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="comm" value="" id="mgr" placeholder="커미션을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="deptno">부서번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="deptno" value="" id="deptno" placeholder="부서번호를 입력해 주세요">
								</div>
							</div>
							
						</form>

						<div class="text-right">
							<a href="" id="saveEmp" class="btn btn-outline-primary">사원등록</a>
							<a href="list.jsp" class="btn btn-outline-success">리스트</a>
						</div>
						<script>
							$(function(){
								$("#saveEmp").on('click',function(event){
									event.preventDefault();
									//유효성 검사
									f.action = "save.jsp";
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





