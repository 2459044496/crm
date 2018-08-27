<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>


<div class="wrapper">
	<div class="panel-body">
		<textarea name="info" id="info" cols="50" rows="10"
			class="form-control">${nrs}</textarea>
	</div>
</div>
<!-- 公共尾部 -->
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>
