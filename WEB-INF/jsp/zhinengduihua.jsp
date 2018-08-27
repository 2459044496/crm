<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="page-heading">
	<h3>智能对话</h3>
	<ul class="breadcrumb pull-left">
		<li>CRM</li>
		<li>智能对话</li>
		<li class="active">开心娱乐</li>
	</ul>

</div>
<div class="wrapper">
	<div class="row">
		<div class="col-sm-12">
			<textarea rows="5" cols="10" class="form-control"
				style="color:blue;font-size:18px" id="myme" readonly="readonly">我:</textarea>
			<textarea rows="7" cols="10" class="form-control" readonly="readonly"
				style="color:green;font-size:18px" id="xiaoc">小C:</textarea>
		</div>
		<div class="col-sm-8" style="margin-top: 20px">
			<input type="text" class="form-control" id="wbka"
				placeholder="请输入对话内容" />
		</div>
		<div class="col-sm-2" style="margin-top: 20px">
			<input type="submit" class="btn btn-primary" value="发送" id="fasong" />
		</div>
	</div>

</div>

<!-- 公共尾部 -->
<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/common.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery_002.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/zhinengduihua.js"></script>