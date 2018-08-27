<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>员工管理</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>员工管理</li>
		<li class="active">新增员工</li>
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
						action="${pageContext.request.contextPath}/sys/user/doadd">
						<div class="form-group" id="ceshizhanghao">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>员工账号</label>
							<div class="col-sm-8">
								<input name="ucode" type="text" id="ucode" value=""
									class="form-control" placeholder="请输入员工账号"> <font
									color="red"></font>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>员工姓名</label>
							<div class="col-sm-8">
								<input name="uname" type="text" class="form-control" value=""
									placeholder="请输入员工姓名">
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>密码</label>
							<div class="col-sm-8">
								<input name="upwd" type="text" class="form-control"
									placeholder="请输入密码">
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="form-group" id="ygdhzg">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>员工电话</label>
							<div class="col-sm-8">
								<input name="uphone" class="form-control" placeholder="请输入手机号"
									type="text" id="dianhua" pattern=".{11,}" maxlength="11"> <font color="red"></font>
							</div>
							<div class="col-sm-2"></div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>员工身份</label>
							<div class="col-sm-8">
								<select name="urole" class="form-control" id="urole">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${listr}" varStatus="status">
										<c:if test="${ls.id >= 4}">
											<option value="${ls.id}">${ls.role_Name}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
							<div class="col-sm-2"></div>
						</div>
						<!-- 当选择员工的身份的时候显示全部部门 -->
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>员工部门</label>
							<div class="col-sm-8">
								<select name="ubumen" class="form-control" id="qbbm">
									<option value="">请选择</option>
									<c:forEach var="ls" items="${lbqb}" varStatus="status">
										<option value="${ls.bmid}">${ls.bmname}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-sm-2"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>员工性别</label>
							<div class="col-sm-10">
								<label class="radio-inline"> <input name="sex" value="1"
									checked="checked" type="radio"> 男 </label> <label
									class="radio-inline"> <input name="sex" value="0"
									type="radio"> 女 </label>
							</div>
						</div>

						<div class="form-group" style="display:none">
							<label class="col-sm-2 col-sm-2 control-label"><span>*</span>薪资编号</label>
							<div class="col-sm-8">
								<input name="xzid" type="text" class="form-control" value=""
									id="xzid">
							</div>
							<div class="col-sm-2"></div>
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
<script src="${pageContext.request.contextPath }/statics/js/useradd.js"></script>


