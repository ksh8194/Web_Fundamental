<%@ page pageEncoding="UTF-8"%>
<%@ page import="kr.co.kic.dev1.dto.EmpDto"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="kr.co.kic.dev1.dao.EmpDao"%>
<%@ include file="../inc/header.jsp" %>
<%
	EmpDao dao = EmpDao.getInstance();
	ArrayList<EmpDto> list = dao.select(0, 100);
%>
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
						<div class="table-responsive-md">
							<table class="table table-hover">
								<colgroup>
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
									<col width="25%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">사원번호</th>
										<th scope="col">이름</th>
										<th scope="col">직책</th>
										<th scope="col">사수</th>
										<th scope="col">부서번호</th>
										<th scope="col">입사날짜</th>
									</tr>
								</thead>
								<tbody>
									<%
									if(list.size() != 0){
										for(int i=0;i<list.size();i++){
											EmpDto dto = list.get(i);
											int no = dto.getNo();
											String name = dto.getName();
											String job = dto.getJob();
											int mgr = dto.getMgr();
											String hiredate = dto.getHiredate();
											int deptno = dto.getDeptNo();
									%>
									<tr>
										<th scope="row"><%=no  %></th>
										<td><a href="view.jsp?no=<%=no%>"><%=name %></a></td>
										<td><%=job %></td>
										<td><%=mgr %></td>
										<td><a href="../dept/view.jsp?no=<%=deptno%>"><%=deptno %></a></td>
										<td><%=hiredate %></td>
									</tr>
									<%
										}
									}else{ 
									%>
									<tr>
										<td class="text-center" colspan="6" scope="row">사원정보가 없습니다.</td>
									</tr>
									<%} %>
								</tbody>
							</table>

							<nav aria-label="Page navigation example">
								<ul class="pagination pagination-lg justify-content-center">
									<li class="page-item disabled">
										<a class="page-link" href="#" tabindex="-1">&laquo;</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item"><a class="page-link" href="#">6</a></li>
									<li class="page-item"><a class="page-link" href="#">7</a></li>
									<li class="page-item"><a class="page-link" href="#">8</a></li>
									<li class="page-item"><a class="page-link" href="#">9</a></li>
									<li class="page-item"><a class="page-link" href="#">10</a></li>
									<li class="page-item">
										<a class="page-link" href="#">&raquo;</a>
									</li>
								</ul>
							</nav>

							<div class="text-right">
								<a href="write.jsp" class="btn btn-outline-primary">사원등록</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<%@ include file="../inc/footer.jsp"%>