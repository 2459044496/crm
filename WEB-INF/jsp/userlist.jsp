<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>员工管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>员工管理</li>
		<li class="active">员工</li>
	</ul>
	<div class="pull-right">
		<a href="${pageContext.request.contextPath}/sys/user/djtj"
			class="btn btn-success">+员工</a>
	</div>
</div>


<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<div class="col-sm-12">
				<section class="panel">
					<header class="panel-heading">
						员工 / 总人数：${totalCount}<span class="tools pull-right"> <a
							href="javascript:;" class="fa fa-chevron-down"></a> </span>
					</header>
					<div class="panel-body">
						<section id="unseen">
							<form class="navbar-form"
								action="${pageContext.request.contextPath}/sys/user/list"
								name="frm" method="post">
								<div class="form-group">
									<span style="color:#7093db;font-weight: bold;font-size:16px">员工姓名</span><input
										type="text" class="form-control" name="mhmz"
										placeholder="支持模糊搜索"
										style="margin-left:20px;margin-right:20px;text-align: center;"
										value="${mhmz}" /> <span
										style="color:#7093db;font-weight: bold;font-size:16px">跳转页</span><input
										type="text" class="form-control" name="pageIndex"
										placeholder="请输入跳转页"
										style="margin-left:20px;margin-right:20px;text-align: center;"
										value="${currentPageNo}" /> <select name="bmid"
										class="form-control"
										style="margin-left:20px;margin-right:20px">
										<option value="">请选择</option>
										<c:forEach var="ls" items="${lbms}" varStatus="status">
											<c:if test="${ls.bmid == bmid}">
												<option value="${ls.bmid}" selected="selected">${ls.bmname}</option>
											</c:if>
											<c:if test="${ls.bmid != bmid}">
												<option value="${ls.bmid}">${ls.bmname}</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
								<button type="submit" class="btn btn-primary">搜索</button>
							</form>
							<table class="table table-bordered table-striped table-condensed">
								<thead>
									<tr>
										<th>用户名</th>
										<th>账号</th>
										<th>密码</th>
										<th>手机号</th>
										<th>性别</th>
										<th>角色</th>
										<th>所在部门</th>
										<th>添加日期</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ls" items="${list}" varStatus="status">
										<tr>
											<td>${ls.uname}</td>
											<td>${ls.ucode}</td>
											<td>${ls.upwd}</td>
											<td>${ls.uphone}</td>
											<c:if test="${ls.sex == 0}">
												<td>女</td>
											</c:if>
											<c:if test="${ls.sex == 1}">
												<td>男</td>
											</c:if>
											<td>${ls.role.role_Name}</td>
											<td>${ls.bmen.bmname}</td>
											<td><fmt:formatDate value="${ls.createDate}"
													pattern="yyyy-MM-dd" /></td>

											<td><div class="btn-group">
													<button type="button" class="btn btn-info dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														操作<span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a
															href="${pageContext.request.contextPath}/sys/user/xg?urid=${ls.uid}"
															class="js-project-single" data-id="234766999123660800"
															data-status="1">修改</a>
														</li>
														<li><a
															href="${pageContext.request.contextPath}/sys/user/sc?uid=${ls.uid}&rid=${ls.urole}&bid=${ls.ubumen}"
															class="js-project-single" data-id="234766999123660800"
															data-status="1">删除</a>
														</li>
													</ul>
												</div>
											</td>
										</tr>
									</c:forEach>
									<tr>
										<td colspan="9"><ul class="pagination pagination-lg">
												<li><a href="javascript:void(0)"
													onclick="frmSubmit(document.forms[0],'${1}');">首页</a></li>
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
											</ul></td>
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
<!-- 公共尾部 -->
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>