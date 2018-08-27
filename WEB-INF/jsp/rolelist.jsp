<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>角色管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM
		</li>
		<li>角色管理
		</li>
		<li class="active">角色列表</li>
	</ul>
	<div class="pull-right">
		<a href="${pageContext.request.contextPath}/sys/rl/xzrole"
			class="btn btn-success">+角色</a>
	</div>
</div>
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<div class="col-sm-12">
				<section class="panel">
					<header class="panel-heading">
						角色<span class="tools pull-right"> <a
							href="javascript:;" class="fa fa-chevron-down"></a> </span>
					</header>
					<div class="panel-body">
						<section id="unseen">
							<table class="table table-bordered table-striped table-condensed">
								<thead>
									<tr>
										<th>角色序号</th>
										<th>角色名称</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ls" items="${list}" varStatus="status">
										<tr>
											<td>${ls.id}</td>
											<td>${ls.role_Name}</td>
											<td><div class="btn-group">
													<button type="button" class="btn btn-info dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														操作<span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a href="${pageContext.request.contextPath}/sys/js/list?rid=${ls.id}" class="js-project-single"
															data-id="234766999123660800" data-status="1">修改</a>
														</li>
														<li><a href="${pageContext.request.contextPath}/sys/js/scjs?rid=${ls.id}" class="js-project-single"
															data-id="234766999123660800" data-status="1">删除</a>
														</li>
													</ul>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</section>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>

<!-- 公共尾部 -->
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>