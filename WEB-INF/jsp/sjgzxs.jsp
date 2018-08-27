<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>客户管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>工资管理</li>
		<li class="active">员工工资</li>
	</ul>
</div>
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<div class="col-sm-12">
				<section class="panel">
					<header class="panel-heading">
						薪资<span class="tools pull-right"> <a href="javascript:;"
							class="fa fa-chevron-down"></a> </span>
					</header>
					<div class="panel-body">
						<section id="unseen">
							<form class="navbar-form"
								action="${pageContext.request.contextPath}/sys/ceshi/xianshi?start=${start}&end=${end}"
								name="frm" method="post">
								<div class="form-group">
									<span style="color:#7093db;font-weight: bold;font-size:16px">员工姓名</span><input
										type="text" class="form-control" name="mhmz"
										placeholder="支持模糊搜索"
										style="margin-left:20px;margin-right:20px;text-align: center;"
										value="${mhmz}" /> <span
										style="color:#7093db;font-weight: bold;font-size:16px">跳转页</span>
									<input type="text" class="form-control" name="pageIndex"
										placeholder="请输入跳转页"
										style="margin-left:20px;margin-right:20px;text-align: center;"
										value="${currentPageNo}" /> <span
										style="color:#7093db;font-weight: bold;font-size:16px">按身份查询</span>
									<select name="jsid" class="form-control"
										style="margin-left:20px;margin-right:20px">
										<option value="">请选择</option>
										<c:forEach var="ls" items="${listr}" varStatus="status">
											<c:if test="${ls.id == jsid}">
												<option value="${ls.id}" selected="selected">${ls.role_Name}</option>
											</c:if>
											<c:if test="${ls.id != jsid}">
												<option value="${ls.id}">${ls.role_Name}</option>
											</c:if>
										</c:forEach>
									</select>

								</div>
								<button type="submit" class="btn btn-primary">搜索</button>
							</form>
							<table class="table table-bordered table-striped table-condensed">
								<thead>
									<tr>
										<th>员工姓名</th>
										<th>员工身份</th>
										<th>底薪</th>
										<th>客户提成</th>
										<th>部门提成</th>
										<th>个人业绩</th>
										<th>部门业绩</th>
										<th>当月总薪资</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ls" items="${list}" varStatus="status">
										<tr>
											<td>${ls.uname}</td>
											<td>${ls.role.role_Name}</td>
											<td>${ls.xizi.xjc}</td>
											<td>${ls.xizi.xkdj}</td>
											<td>${ls.xizi.xygtc}</td>
											<td>${ls.yeji}</td>
											<td>${ls.bmyj}</td>
											<td>${ls.money}</td>

										</tr>
									</c:forEach>
									<tr>
										<td colspan="9"><ul class="pagination pagination-lg">
												<li><a href="javascript:void(0)"
													onclick="frmSubmit(document.forms[0],'${1}');">首页</a>
												</li>
												<li><a href="javascript:void(0)"
													onclick="frmSubmit(document.forms[0],'${currentPageNo-1}');">上一页</a>
												</li>
												<li><a href="javascript:void(0)"
													onclick="frmSubmit(document.forms[0],'${currentPageNo+1}');">下一页</a>
												</li>
												<li><a href="javascript:void(0)"
													onclick="frmSubmit(document.forms[0],'${totalPageCount}');">末页</a>
												</li>
												<li style="line-height: 40px; height: 40px;">第${currentPageNo}页/共${totalPageCount}页</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
<!-- 分页	 -->
<script>
	function frmSubmit(frm, index) {
		frm.pageIndex.value = index;
		frm.submit();
	}
</script>
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>