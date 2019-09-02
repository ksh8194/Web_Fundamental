<%@ page pageEncoding="UTF-8"%>
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

						<form class="form-horizontal" role="form" name="f" method="post" action="save.jsp">
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="no">부서번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="no" id="no" placeholder="부서번호를 입력해 주세요">
									<div class="invalid-feedback">Please choose a username.</div>
								</div>
								
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="dname">부서이름</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name" id="name" placeholder="부서이름을 입력해 주세요">
								</div>
								<div class="invalid-feedback">Please choose a username.</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="loc">부서위치</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="loc" id="loc" placeholder="부서위치 입력해 주세요">
								</div>
								<div class="invalid-feedback">Please choose a username.</div>
							</div>
							
						</form>

						<div class="text-right">
							<a href="" id="saveDept" class="btn btn-outline-primary">등록</a>
							<a href="list.jsp" class="btn btn-outline-success">리스트</a>
						</div>
						<script>
							$(function(){
								$("#saveDept").on("click",function(event){
									event.preventDefault();
									//유효성 검사
									let no = $("#no").val();
									if(no==""){
										alert("부서번호를 입력해주세요..");
										$("#no").focus();
										return;
									}
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