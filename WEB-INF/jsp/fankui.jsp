<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>反馈管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>反馈管理</li>
		<li class="active">反馈列表</li>
	</ul>
</div>
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<section class="panel">
				<header class="panel-heading">
					反馈 / 总数：${totalCount}<span class="tools pull-right"><a
						href="javascript:;" class="fa fa-chevron-down"></a> </span>
				</header>
				<div class="panel-body">
					<section id="unseen">
						<form class="navbar-form"
							action="${pageContext.request.contextPath}/sys/jianli/list"
							name="frm" method="post">
							<input type="text" class="form-control" name="pageIndex"
								placeholder="请输入跳转页"
								style="margin-left:20px;margin-right:20px;text-align: center;display:none"
								value="${currentPageNo}" />
						</form>
						<table class="table table-bordered table-striped table-condensed">
							<thead>
								<tr>
									<th>员工姓名</th>
									<th>反馈时间</th>
									<th>反馈内容</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="jl" items="${list}" varStatus="status">
									<tr>
										<td>${jl.user.uname}</td>
										<td><fmt:formatDate value="${jl.createDate}"
												pattern="yyyy-MM-dd" />
										</td>
										<td>${jl.info}</td>
										<td><div class="btn-group">
												<button type="button" class="btn btn-info dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													操作<span class="caret"></span>
												</button>
												<ul class="dropdown-menu">
													<li><a href="${pageContext.request.contextPath}/sys/fankan?nrs=${jl.info}"
														class="js-project-single" data-id="234766999123660800"
														data-status="1">内容查看</a></li>
													<li><a href="${pageContext.request.contextPath}/sys/sccz?fid=${jl.id}"
														class="js-project-single" data-id="234766999123660800"
														data-status="1">删除</a></li>
												</ul>
											</div></td>
									</tr>
								</c:forEach>
								<tr>

									<td colspan="5">
										<ul class="pagination pagination-lg">
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
<!-- 分页	 -->
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

