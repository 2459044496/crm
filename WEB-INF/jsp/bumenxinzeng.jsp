<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>部门管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>部门管理</li>
		<li class="active">新增部门</li>
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
						action="${pageContext.request.contextPath}/sys/bumen/doadd">
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>部门名称</label>
							<div class="col-sm-10">
								<input name="bmname" type="text" id="bmname"
									class="form-control" placeholder="请输入部门名称"> <font color="red"></font>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>部门等级</label>
							<div class="col-sm-10">
								<select name="bmdj" class="form-control" id="bmdj">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${lr}" varStatus="status">
										<option value="${ls.id}">${ls.role_Name}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>部门负责人</label>
							<div class="col-sm-10" >
								<select name="ygmz" class="form-control" id="zgyg">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${ls}" varStatus="status">
										<option value="${ls.uid}">${ls.uname}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-sm-10" id="dcyg" style="display:none">
								<select name="zygmz" class="form-control">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${ls}" varStatus="status">
										<c:if test="${ls.urole == 4}">
											<option value="${ls.uid}">${ls.uname}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>

						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>部门经理</label>
							<div class="col-sm-10" style="display:none" id="srkxs">
								<input name="bmjl1" type="text" class="form-control" id="wbkfz"
									value="" readonly="readonly"> <font color="red"></font>
							</div>
							<div class="col-sm-10" id="xlkxs">
								<select name="bmjl" class="form-control">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${ljl}" varStatus="status">
										<option value="${ls.uname}">${ls.uname}</option>
									</c:forEach>
								</select>
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



