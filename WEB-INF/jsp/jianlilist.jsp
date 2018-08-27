<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>部门管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>简历管理</li>
		<li class="active">简历列表</li>
	</ul>
	<div class="pull-right">
		<a href="${pageContext.request.contextPath}/sys/jianli/cx"
			class="btn btn-success">+简历</a>
	</div>
</div>
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading">
					简历 / 总数：${totalCount}<span class="tools pull-right"><a
						href="javascript:;" class="fa fa-chevron-down"></a> </span>
				</header>

				<div class="panel-body">
					<section id="unseen">
						<form class="navbar-form"
							action="${pageContext.request.contextPath}/sys/jianli/list"
							name="frm" method="post">
							<div class="form-group">
								<span style="color:#7093db;font-weight: bold;font-size:16px">姓名</span><input
									type="text" class="form-control" name="mhmz"
									placeholder="支持模糊搜索"
									style="margin-left:20px;margin-right:20px;text-align: center;" />

								<span style="color:#7093db;font-weight: bold;font-size:16px">跳转页</span><input
									type="text" class="form-control" name="pageIndex"
									placeholder="请输入跳转页"
									style="margin-left:20px;margin-right:20px;text-align: center;" />
							</div>
							<button type="submit" class="btn btn-primary">搜索</button>
						</form>
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th>名字</th>
									<th>电话</th>
									<th>日期</th>
									<th>个人简介</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="jl" items="${list}" varStatus="status">
									<tr>
										<td>${jl.mname}</td>
										<td>${jl.mphone}</td>
										<td><fmt:formatDate value="${jl.mdatetime}"
												pattern="yyyy-MM-dd" /></td>
										<td><a href="#noticeModal" data-toggle="modal"
											data-content="">查看</a>
										</td>
										<td><div class="btn-group">
												<button type="button" class="btn btn-info dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													操作<span class="caret"></span>
												</button>
												<ul class="dropdown-menu">
													<li><a
														href="${pageContext.request.contextPath}/sys/jianli/delete?mid=${jl.mid}"
														class="js-project-single" data-id="234766999123660800"
														data-status="1">删除</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
									<div aria-hidden="true" aria-labelledby="noticeModalLabel"
										role="dialog" tabindex="-1" id="noticeModal"
										class="modal fade" style="display: none;">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">×</button>
													<h4 class="modal-title">个人简介</h4>
												</div>
												<div class="modal-body">

													<p id="notice-box">${jl.mzwms}</p>

												</div>
												<div class="modal-footer">
													<button data-dismiss="modal" class="btn btn-primary"
														type="button">关闭</button>
												</div>
											</div>
										</div>
									</div>
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
	$(function() {
		$('#noticeModal').on('show.bs.modal', function(e) {
			$('#notice-box').html($(e.relatedTarget).attr('data-content'))
		});
	});
</script>
<!-- 公共尾部 -->
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>