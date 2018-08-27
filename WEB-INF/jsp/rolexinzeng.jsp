<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>角色管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>角色管理</li>
		<li class="active">新增角色</li>
	</ul>
</div>


<div class="wrapper">
	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading"> </header>
				<div class="panel-body">
					<form class="form-horizontal adminex-form" id="resume-form"
						novalidate="novalidate" method="post"
						action="${pageContext.request.contextPath}/sys/role/doadd">
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>角色名称</label>
							<div class="col-sm-10">
								<input name="role_Name" type="text" id="role_Name"
									class="form-control"> <font color="red"></font>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<input type="submit" class="btn btn-primary" value="提交保存"
									id="addbtn" />
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
</div>
<div id="ui-datepicker-div"
	class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>

<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/common.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery_002.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/bmadd.js"></script>



