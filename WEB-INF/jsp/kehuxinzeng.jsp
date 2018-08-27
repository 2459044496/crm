<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>客户管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>客户管理</li>
		<li class="active">新增客户</li>
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
						action="${pageContext.request.contextPath}/sys/kehu/doadd"
						method="post">
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>客户姓名</label>
							<div class="col-sm-10">
								<input name="khname" type="text" class="form-control" id="khname"
									placeholder="请输入客户名字">
							</div>
						</div>
						<div class="form-group" id="kdh">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>客户电话</label>
							<div class="col-sm-10">
								<input name="khphone" class="form-control" placeholder="请输入手机号"
									type="text" id="khphone" pattern=".{11,}" maxlength="11"><font color="red"></font>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>客户性别</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input name="sex" value="1"
									checked="checked" type="radio"> 男 </label> <label
									class="radio-inline"> <input name="sex" value="0"
									type="radio"> 女 </label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>所属员工</label>
							<div class="col-sm-10">
								<select name="khss" class="form-control">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${list}" varStatus="status">
										<option value="${ls.uid}">${ls.uname}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>部门经理</label>
							<div class="col-sm-10">
								<select name="ssjl" class="form-control">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${list2}" varStatus="status">
										<option value="${ls.uid}">${ls.uname}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>客户地址</label>
							<div class="col-sm-10">
								<input name="khdz" class="form-control" placeholder="请输入客户地址"
									type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<input type="submit" class="btn btn-primary" value="提交保存" id="addbtn" />
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
<script src="${pageContext.request.contextPath }/statics/js/kehuadd.js"></script>
