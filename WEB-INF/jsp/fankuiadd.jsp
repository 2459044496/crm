<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heardy.jsp"%>


<div class="wrapper">
	<div class="panel-body">
		<form class="form-horizontal adminex-form" id="resume-form"
			action="${pageContext.request.contextPath}/sys/fankui/add"
			method="post">
			<input name="uid" value="${uid}" type="hidden" >
			<textarea name="info" id="info" cols="50" rows="10"
				class="form-control" placeholder="请输入你的建议"></textarea>
			<div class="form-group">
				<label class="col-lg-2 col-sm-2 control-label"></label>
				<div class="col-lg-10">		
					 <input
						type="submit" id="addbtn" class="btn btn-primary"
						style="float:right;display:block;margin-top:20px" value="提交保存" />
				</div>
			</div>
		</form>
	</div>
</div>



<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/common.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery_002.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/addfankui.js"></script>
