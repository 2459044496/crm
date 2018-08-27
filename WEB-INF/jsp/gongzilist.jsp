<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>客户管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>工资管理</li>
		<li class="active">计算规则</li>
	</ul>
	<div class="pull-right">
		<a href="${pageContext.request.contextPath}/sys/gongzi/addgz"
			class="btn btn-success">+算法</a>
	</div>
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
								action="${pageContext.request.contextPath}/sys/ceshi/xianshi"
								name="frm" method="post" id="ribd">
								<div class="form-group">
									<span style="color:#7093db;font-weight: bold;font-size:16px">起始时间</span>
									<input type="date" class="form-control" name="start"
										style="margin-left:10px;margin-right:30px;text-align: center;"
										id="start"> <span
										style="color:#7093db;font-weight: bold;font-size:16px">结束时间</span>
									<input type="date" class="form-control" name="end"
										style="margin-left:10px;margin-right: 40px" id="end">
								</div>
								<button type="submit" class="btn btn-primary">搜索</button>
							</form>
							<table class="table table-bordered table-striped table-condensed">
								<thead>
									<tr>
										<th>序号</th>
										<th>底薪</th>
										<th>提成</th>
										<th>部门提成</th>
										<th>角色</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ls" items="${list}" varStatus="status">
										<tr>
											<td>${ls.xid}</td>
											<td>${ls.xjc}</td>
											<td>${ls.xkdj}</td>
											<c:if test="${ls.xygtc == 0}">
												<td>无</td>
											</c:if>
											<c:if test="${ls.xygtc != 0}">
												<td>${ls.xygtc}</td>
											</c:if>
											<td>${ls.role.role_Name}</td>
											<td><div class="btn-group">
													<button type="button" class="btn btn-info dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														操作<span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a
															href="${pageContext.request.contextPath}/sys/gz/list?xzid=${ls.xid}"
															class="js-project-single" data-id="234766999123660800"
															data-status="1">修改</a></li>
														<li><a
															href="${pageContext.request.contextPath}/sys/gz/dosc?xzid=${ls.xid}"
															class="js-project-single" data-id="234766999123660800"
															data-status="1">删除</a></li>
													</ul>
												</div></td>
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
<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/common.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery_002.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/gongzilist.js"></script>
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>