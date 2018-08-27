<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>客户管理</h3>
	<ul class="breadcrumb pull-left">
		<li><a href="/user/show/1461312703628858832">OPMS</a></li>
		<li><a href="/project/manage">简历管理</a></li>
		<li class="active">新增简历</li>
	</ul>
</div>


<div class="wrapper">
	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading"> </header>
				<div class="panel-body">
					<form class="form-horizontal adminex-form" id="resume-form"
						novalidate="novalidate"
						action="${pageContext.request.contextPath}/sys/jianli/doadd"
						method="post">
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>姓名</label>
							<div class="col-sm-10">
								<input name="mname" type="text" class="form-control"
									placeholder="请输入名字">
							</div>
						</div>
						<div class="form-group" id="shoujihao">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>电话</label>
							<div class="col-sm-10">
								<input name="mphone" class="form-control" placeholder="请输入手机号"
									id="mphone" type="text" pattern=".{11,}" maxlength="11"> <font color="red"></font>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>个人简介</label>
							<div class="col-sm-10">
								<input name="mzwms" class="form-control" placeholder="请输入个人简介"
									type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<input name="id" id="resumeid" value="0" type="hidden">
								<input type="submit" id="add" class="btn btn-primary"
									value="提交保存" />
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
<script src="${pageContext.request.contextPath }/statics/js/jianli.js"></script>
