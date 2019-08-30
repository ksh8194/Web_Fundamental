<%@ page pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>

<body>
	
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb justify-content-end">
			<li class="breadcrumb-item"><a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Notice</li>
		</ol>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">공지사항</h5>

						<form class="form-horizontal" role="form" name="f" method="post" action="save.jsp">
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for=writer">작성자</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="writer" id="writer" placeholder="이름을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="title">제목</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-form-label col-sm-2" for="content">내용</label>
								<div class="col-sm-10">
									<textarea class="form-control" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
								</div>
							</div>

							<div class="form-group text-center">
								<button type="submit" id="join-submit" class="btn btn-primary">
									회원가입<i class="fa fa-check spaceLeft"></i>
								</button>
								<button type="submit" class="btn btn-warning">
									가입취소<i class="fa fa-times spaceLeft"></i>
								</button>
							</div>
						</form>

						<div class="text-right">
							<a href="http://www.naver.com" id="saveNotice" class="btn btn-outline-primary">등록</a>
							<a href="list.jsp" class="btn btn-outline-success">리스트</a>
						</div>
						<script>
							$(function(){
								$('#saveNotice').on("click",function(event){
									event.preventDefault();
									//유효성검사
									let writer = $("#writer").val();
									if(writer==''){
										alert("이름을 입력해주세요...")
										$("#writer").focus();
										return;
									}
									let title =$("#title").val();
									if(title==''){
										alert("제목을 입력해주세요..")
										$('#title').focus();
										return;
									}
									let content =$("#content").val();
									if(content==''){
										alert("내용을 입력해주세요..")
										$('#content').focus();
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
	<footer id="sticky-footer" class="py-4 bg-dark" style="color:white; margin-top: 1rem;">
		<div class="container text-center">
			<small>Copyright &copy; Your Website</small>
		</div>
	</footer>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
		</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
		</script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
		</script>
</body>

</html>