<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>OPMS管理系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="author" content="lock">
<meta name="keywords" content="OPMS,管理系统">
<meta name="description"
	content="OPMS管理系统,织蝶-企业应用系统为您的企业保驾护航;网址:www.milu365.cn,QQ讨论群：660307579">
<link
	href="${pageContext.request.contextPath }/statics/css/normalize.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/statics/css/demo.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/statics/css/component.css"
	rel="stylesheet">

</head>

<body>
	<%-- <input type="text" id="cc" value="${error}" style="display:none"> --%>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<h3>欢迎你</h3>
					<form action="${pageContext.request.contextPath}/user/dologin"
						method="post" id="denglut">
						<div class="input_outer">
							<span class="u_user"></span> <input name="ucode" class="text"
								style="color: #FFFFFF !important" type="text"
								placeholder="请输入账户" id="ucode">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input name="upwd" class="text"
								style="color: #FFFFFF !important; position:absolute; z-index:100;"
								value="" type="password" placeholder="请输入密码" id="uwp">
						</div>
						<div class="input_outer">
							<span class="us_uer"></span> <input type="submit" class="text"
								style="color: #FFFFFF !important;text-align:center" value="登录">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script
		src="${pageContext.request.contextPath }/statics/js/TweenLite.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/EasePack.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/demo-1.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/denglu.js"></script>
	<!-- <script>
		$(function() {
			var bl = $("#cc");
			if (bl.val() == null || bl.val() == "") {
				alert(bl.val());
			}

		});
	</script> -->
</body>
</html>
