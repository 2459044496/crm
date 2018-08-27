<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>CRM管理系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="author" content="lock">
<meta name="keywords" content="CRM,管理系统">
<meta name="description"
	content="CRM管理系统">
<link rel="shortcut icon"
	href="http://opms.demo.milu365.cn/static/img/favicon.ico"
	type="image/png">
<link href="${pageContext.request.contextPath }/statics/css/clndr.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/statics/css/style-responsive.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/statics/css/jquery-ui-1.10.3.css"
	rel="stylesheet">

<script src="${pageContext.request.contextPath}/js/hm.js"></script>
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?750463144f16fe69eb3ac11bea1c4436";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
</head>
<body class="sticky-header">
	<section>
	<div class="left-side sticky-left-side" style="overflow: hidden;"
		tabindex="5000">

		<div class="logo">
			<a href="#"><img
				src="${pageContext.request.contextPath }/statics/img/logo-left.png"
				alt="CRM管理系统"> </a>
		</div>
		<div class="logo-icon text-center">
			<a href="#"><img
				src="${pageContext.request.contextPath }/statics/img/logo_icon.png"
				style="width:40px;" alt="CRM管理系统"> </a>
		</div>

		<div class="left-side-inner">
			<div class="visible-xs hidden-sm hidden-md hidden-lg">
				<div class="media logged-user">
					<img alt="libai"
						src="${pageContext.request.contextPath }/statics/img/zg.jpg"
						class="media-object">
					<div class="media-body">
						<h4>
							<a
								href="#">${userSession.uname}</a>
						</h4>
						<span>CRM系统</span>
					</div>
				</div>
				<h5 class="left-nav-title">控制台</h5>
				<ul class="nav nav-pills nav-stacked custom-nav">
					<li><a href="${pageContext.request.contextPath }/sys/xgma?uid=${userSession.uid}"><i
							class="fa fa-user"></i> <span>修改密码</span> </a></li>
					<li><a href="${pageContext.request.contextPath}"><i
							class="fa fa-sign-out"></i> <span>退出</span> </a></li>
				</ul>
			</div>

			<ul class="nav nav-pills nav-stacked custom-nav js-left-nav">
				<li><a href="${pageContext.request.contextPath}/sys/my/show"><i
						class="fa fa-home"></i> <span>我的主页</span> </a>
				</li>
				<li><a href="${pageContext.request.contextPath}/sys/user/list"><i
						class="fa fa-book"></i> <span>员工管理</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/sys/kehu/list"><i
						class="fa fa-tasks"></i> <span>客户管理</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/sys/xlzx/list"><i
						class="fa fa-user"></i> <span>售后资讯</span> </a></li>
				<li><a href="${pageContext.request.contextPath}/liaotian"><i
						class="fa fa-user"></i> <span>智能娱乐</span> </a></li>
			</ul>

		</div>
	</div>
	<div class="main-content">
		<div class="header-section">
			<a class="toggle-btn"><i class="fa fa-bars"></i> </a>
			<div class="menu-right">
				<ul class="notification-menu">
					<li><a href="#"
						class="btn btn-default dropdown-toggle info-number"
						data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> </a>

						<div class="dropdown-menu dropdown-menu-head pull-right">
							<h5 class="title">你有 0 最新信息</h5>
							<ul class="dropdown-list normal-list">

								<li class="text-center">目前还没有最新消息</li>

								<li class="new"><a
									href="http://opms.demo.milu365.cn/message/manage">查看更多</a></li>
							</ul>
						</div>
					</li>

					<li><a href="javascript:;"
						class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							<img
							src="${pageContext.request.contextPath }/statics/img/zg.jpg"
							alt="libai"> ${userSession.uname} <span class="caret"></span> </a>
						<ul class="dropdown-menu dropdown-menu-usermenu pull-right">
							<li><a
								href="${pageContext.request.contextPath}/sys/my/show"><i
									class="fa fa-user"></i> 个人主页</a></li>
							<li><a href="${pageContext.request.contextPath }/sys/xgma?uid=${userSession.uid}"><i
									class="fa fa-cog"></i> 修改密码</a>
							</li>
							
							<li><a href="${pageContext.request.contextPath }"><i
									class="fa fa-sign-out"></i> 退出</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>