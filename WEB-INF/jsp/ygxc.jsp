<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>

<div class="wrapper">
	<div class="row">
		<div class="col-lg-12">
			<section class="panel">
				<header class="panel-heading">
					精彩相片
					<div class="pull-right">
						<a href="${pageContext.request.contextPath}/sys/ygxc/a"
							class="btn btn-success">+上传相片</a>
					</div>
				</header>

				<%-- 
  <c:forEach items="${list}" var="Scimg" >
            <tr>
                <th>${Scimg.id }</th>
                <th><c:if test="${Scimg.pic !=null}">
                
                
                    <img id="images" alt="" src="/image/${Scimg.pic}">
                </c:if> </th>          
            </tr>
        </c:forEach> --%>



				<div class="panel-body">
					<div id="gallery" class="media-gal">

						<c:forEach items="${list}" var="Scimg">
							<tr>
								<th><c:if test="${Scimg.pic !=null}">
										<div class="images item ">
											<img src="/image/${Scimg.pic}" alt="216438_wx"> </img>
											<p>
												<a href="/image/${Scimg.pic}">点击查看</a>
											</p>
											<p>
												张总
												<fmt:formatDate value="${Scimg.date}" pattern="yyyy-MM-dd" />
												上传
											</p>
											<p>
												<a
													href="${pageContext.request.contextPath}/sys/del?id=${Scimg.id}"
													class="js-album-delete" data-id="239447873140297728"
													title="删除"><i class="fa fa-trash-o"></i> </a>
											</p>


										</div>
									</c:if>
								</th>
							</tr>
						</c:forEach>
					</div>
					<div class="clearfix"></div>
				</div>
			</section>
		</div>
	</div>
</div>
<!-- 公共尾部 -->
<%@include file="/WEB-INF/jsp/comm/footer.jsp"%>