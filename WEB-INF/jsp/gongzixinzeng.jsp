<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>工资管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>工资管理</li>
		<li class="active">新增算法</li>
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
						action="${pageContext.request.contextPath}/sys/gongzi/doadd">
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>底薪</label>
							<div class="col-sm-4">
								<input name="xjc" type="text" id="ucode"
									class="form-control" placeholder="请输入角色底薪"> <font color="red"></font>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>提成</label>
							<div class="col-sm-4">
								<input name="xkdj" type="text" class="form-control" placeholder="请输入角色提成金额">
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>部门提成</label>
							<div class="col-sm-4">
								<input name="xygtc" type="text" class="form-control" placeholder="请输入部门提成金额">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>角色序号</label>
							<div class="col-sm-4">
								<input name="rid" type="text" class="form-control"
									 placeholder="请输入要添加的角色序号">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<input name="id" id="resumeid" value="0" type="hidden">
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