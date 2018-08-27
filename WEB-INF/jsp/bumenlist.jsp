<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>部门管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>部门管理</li>
		<li class="active">部门列表</li>
	</ul>
	<div class="pull-right">
		<a href="${pageContext.request.contextPath}/sys/bumen/addbm"
			class="btn btn-success">+部门</a>
	</div>
</div>
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading">
					部门 / 总数：${totalCount}<span class="tools pull-right"><a
						href="javascript:;" class="fa fa-chevron-down"></a> </span>
				</header>

				<div class="panel-body">
					<section id="unseen">
						<form class="navbar-form"
							action="${pageContext.request.contextPath}/sys/bumen/list" name="frm"
							method="post">
							<div class="form-group">
								<span style="color:#7093db;font-weight: bold;font-size:16px">部门名称</span><input
									type="text" class="form-control" name="mhmz"
									placeholder="支持模糊搜索"
									style="margin-left:20px;margin-right:20px;text-align: center;" value="${mhmz}"/>

								<span style="color:#7093db;font-weight: bold;font-size:16px">跳转页</span><input
									type="text" class="form-control" name="pageIndex"
									placeholder="请输入跳转页"
									style="margin-left:20px;margin-right:20px;text-align: center;" value="${currentPageNo}"/>
							</div>
							<button type="submit" class="btn btn-primary">搜索</button>
						</form>
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th>部门名称</th>
									<th>部门等级</th>
									<th>部门负责人</th>
									<th>部门经理</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ls" items="${list}" varStatus="status">
									
										<tr>
											<td>${ls.bmname}</td>
											<td>${ls.role.role_Name}</td>
											<td>${ls.user.uname}</td>
											<td>${ls.bmjl}</td>
											<td><div class="btn-group">
													<button type="button" class="btn btn-info dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														操作<span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a href="${pageContext.request.contextPath}/sys/bumen/dele?bid=${ls.bmid}&rid=${ls.bmdj}" class="js-project-single"
															data-id="234766999123660800" data-status="1">删除</a>
														</li>
													</ul>
												</div>
											</td>
										</tr>
								</c:forEach>
								<tr>
									<td colspan="5"><ul class="pagination pagination-lg">
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
<!-- 分页	 -->
<script>
		function frmSubmit(frm, index) {
			frm.pageIndex.value = index;
			frm.submit();
		}
	</script>
<!-- 公共尾部 -->
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>