<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>


<div class="wrapper">
	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading">
					上传相片
					<div class="pull-right">
						<a href="${pageContext.request.contextPath}/sys/ygxc"
							class="btn btn-success">欣赏相片</a>
					</div>
				</header>
				<div class="panel-body">

					<form action="${pageContext.request.contextPath}/sys/ygxc/add"
						method="post" enctype="multipart/form-data">
						<input type="text" style="display:none"> 图片：<input
							type="file" name="file"> <input type="submit" value="提交">
					</form>

					<%-- <form method="post"
						action="${pageContext.request.contextPath}/sys/ygxc/add"
						enctype="multipart/form-data" id="uploadMulti-form"
						novalidate="novalidate">
						<div class="wrapper text-center">
							<h2>请选择图片</h2>
							<div class="title">姓名</div>
									<div class="desk">${userSession.uname}</div>
						</div>
					</form> --%>
				</div>

				<!-- 			<form action="upload.action" method="post" enctype="multipart/form-data">  
    <label>书名：</label><input type="text" name="bookname"><br>  
    <label>价格：</label><input type="text" name="price"><br>
    <label>库存：</label><input type="text" name="stock"><br> 
    <label>上传封面：</label><input type="file" name="file"><br>  
    <input type="submit"> -->
				</form>
			</section>
		</div>
	</div>
</div>



<!-- 公共尾部 -->
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>