<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="wrapper">
	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading"> 修改密码 </header>
				<div class="panel-body">
					<form class="form-horizontal adminex-form" id="userprofilepwd-form"
						novalidate="novalidate"
						action="${pageContext.request.contextPath}/sys/doxgmm" method="post">
						<div class="form-group" style="display:none">
							<div class="col-sm-10">
								<input class="form-control" type="text"
									value="${userSession.upwd}" id="ymm"> <input
									class="form-control" name="uid" type="text" value="${uid}"
									id="ymm">
							</div>
						</div>
						<div class="form-group" id="jmm">
							<label class="col-sm-2 col-sm-2 control-label">旧密码</label>
							<div class="col-sm-10">
								<input class="form-control" placeholder="请填旧密码" type="password"
									id="yzmm"><font color="red"></font>
							</div>
						</div>
						<div class="form-group" id="xmm">
							<label class="col-sm-2 col-sm-2 control-label">新密码</label>
							<div class="col-sm-10">
								<input name="newpwd" id="newpwd" class="form-control"
									placeholder="请填写新密码" type="password"><font color="red"></font>
							</div>
						</div>
						<div class="form-group" id="qxmm">
							<label class="col-sm-2 col-sm-2 control-label">确认密码</label>
							<div class="col-sm-10">
								<input class="form-control" placeholder="请填写确认" type="password"
									id="confpwd"><font color="red"></font>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<button type="submit" class="btn btn-primary" id="addbtn">提
									交</button>
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
</div>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/common.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery_002.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/umimaxiugai.js"></script>
