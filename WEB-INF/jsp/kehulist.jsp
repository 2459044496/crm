<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<!-- 公用部分结束 -->
<div class="page-heading">
	<h3>客户管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>客户管理</li>
		<li class="active">客户</li>
	</ul>
	<div class="pull-right">
		<a href="${pageContext.request.contextPath}/sys/kehu/addkehu"
			class="btn btn-success">+客户</a>
	</div>
</div>

<!-- 又分割 -->
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading">
					客户 / 总人数：${totalCount}<span class="tools pull-right"> <a
						href="javascript:;" class="fa fa-chevron-down"></a> </span>
				</header>

				<div class="panel-body">
					<section id="unseen">
						<form class="navbar-form"
							action="${pageContext.request.contextPath}/sys/kehu/list"
							name="frm" method="post">
							<div class="form-group">
								<span style="color:#7093db;font-weight: bold;font-size:16px">起始时间</span>
								<input type="date" class="form-control" name="start"
									style="margin-left:10px;margin-right:30px;text-align: center;"
									value="${start}"> <span
									style="color:#7093db;font-weight: bold;font-size:16px">结束时间</span>
								<input type="date" class="form-control" name="end"
									style="margin-left:10px;margin-right: 40px" value="${end}">
								<span style="color:#7093db;font-weight: bold;font-size:16px">客户姓名</span><input
									type="text" class="form-control" name="mhmz"
									placeholder="支持模糊搜索"
									style="margin-left:20px;margin-right:20px;text-align: center;"
									value="${mhmz}" /> <span
									style="color:#7093db;font-weight: bold;font-size:16px">客户手机号</span><input
									type="text" class="form-control" name="shouji"
									placeholder="支持模糊搜索"
									style="margin-left:20px;margin-right:20px;text-align: center;"
									value="${shouji}" /> <span
									style="color:#7093db;font-weight: bold;font-size:16px">跳转页</span>
								<input type="text" name="pageIndex" class="form-control"
									placeholder="请输入跳转页"
									style="width:50px;margin-left:10px;margin-right:10px;text-align: center;"
									value="${currentPageNo}" />
							</div>
							<button type="submit" class="btn btn-primary">搜索</button>
						</form>
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th>客户名称</th>
									<th>客户电话</th>
									<th>客户地址</th>
									<th>客户性别</th>
									<th>所属员工</th>
									<th>添加日期</th>
									<th>是否合作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ls" items="${list}" varStatus="status">
									<tr>
										<td>${ls.khname}</td>
										<td>${ls.khphone}</td>
										<td>${ls.khdz}</td>
										<c:if test="${ls.sex == 0}">
											<td>女</td>
										</c:if>
										<c:if test="${ls.sex == 1}">
											<td>男</td>
										</c:if>
										<td>${ls.user.uname}</td>
										<td><fmt:formatDate value="${ls.createD}"
												pattern="yyyy-MM-dd" />
										</td>
										<c:if test="${ls.sfhz == 0}">
											<td style="color:red;">未合作</td>
											<td><div class="btn-group">
													<button type="button"
														class="btn btn-danger dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														操作<span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a
															href="${pageContext.request.contextPath}/sys/kehu/qr?khid=${ls.khid}"
															class="js-project-single" data-id="234766999123660800"
															data-status="2">确认</a></li>
														<li><a
															href="${pageContext.request.contextPath}/sys/kehu/xg?khid=${ls.khid}"
															class="js-project-single" data-id="234766999123660800"
															data-status="2">修改</a></li>
														<li><a
															href="${pageContext.request.contextPath}/sys/kehu/sc?khid=${ls.khid}"
															class="js-project-single" data-id="234766999123660800"
															data-status="1">删除</a></li>
													</ul>
												</div></td>
										</c:if>
										<c:if test="${ls.sfhz == 1}">
											<td>已合作</td>
											<td><div class="btn-group">
													<button type="button" class="btn btn-info dropdown-toggle"
														data-toggle="dropdown" aria-haspopup="true"
														aria-expanded="false">
														操作<span class="caret"></span>
													</button>
													<ul class="dropdown-menu">
														<li><a
															href="${pageContext.request.contextPath}/sys/kehu/sc?scid=${ls.khid}"
															class="js-project-single" data-id="234766999123660800"
															data-status="1">删除</a></li>
													</ul>
												</div></td>
										</c:if>

									</tr>
								</c:forEach>
								<tr>
									<td colspan="8"><ul class="pagination pagination-lg">
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
<script>
	function frmSubmit(frm, index) {
		frm.pageIndex.value = index;
		frm.submit();
	}
</script>
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>
