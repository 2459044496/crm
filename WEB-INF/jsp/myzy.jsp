<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引用公用页面 -->
<%@include file="/WEB-INF/jsp/comm/heard.jsp"%>
<div class="wrapper">
	<div class="row">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-body">
							<div class="profile-pic text-center">
								<img alt=""
									src="${pageContext.request.contextPath }/statics/img/5b41faa955a4c1acdb6d7e6c116bce2f-cropper.jpg">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-body">
							<ul class="p-info">
								<li>
									<div class="title">账号</div>
									<div class="desk">${userSession.ucode}</div></li>
								<li>
									<div class="title">姓名</div>
									<div class="desk">${userSession.uname}</div></li>

								<li>
									<div class="title">性别</div> <c:if
										test="${userSession.sex == 0}">
										<div class="desk">女</div>
									</c:if> <c:if test="${userSession.sex == 1}">
										<div class="desk">男</div>
									</c:if></li>
								<li>
									<div class="title">电话</div>
									<div class="desk">${userSession.uphone}</div></li>

								<li>
									<div class="title">职称</div>
									<div class="desk">${userSession.role.role_Name}</div></li>
								<li>
									<div class="title">部门</div>
									<div class="desk">${userSession.bmen.bmname}</div></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="panel">
						<div class="panel-body">
							<div class="calendar-block ">
								<div class="cal1">
									<div class="clndr">
										<div class="clndr-controls">
											<div class="clndr-control-button">
												<span class="clndr-previous-button"><i
													class="fa fa-chevron-left"></i> </span>
											</div>
											<div class="month">
												<span>July</span> 2018
											</div>
											<div class="clndr-control-button leftalign">
												<span class="clndr-next-button"><i
													class="fa fa-chevron-right"></i> </span>
											</div>
										</div>
										<table class="clndr-table" cellspacing="0" cellpadding="0"
											border="0">
											<thead>
												<tr class="header-days">
													<td class="header-day">S</td>
													<td class="header-day">M</td>
													<td class="header-day">T</td>
													<td class="header-day">W</td>
													<td class="header-day">T</td>
													<td class="header-day">F</td>
													<td class="header-day">S</td>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="day past calendar-day-2018-07-01"><div
															class="day-contents">1</div>
													</td>
													<td class="day past calendar-day-2018-07-02"><div
															class="day-contents">2</div>
													</td>
													<td class="day past calendar-day-2018-07-03"><div
															class="day-contents">3</div>
													</td>
													<td class="day past calendar-day-2018-07-04"><div
															class="day-contents">4</div>
													</td>
													<td class="day past calendar-day-2018-07-05"><div
															class="day-contents">5</div>
													</td>
													<td class="day past calendar-day-2018-07-06"><div
															class="day-contents">6</div>
													</td>
													<td class="day past calendar-day-2018-07-07"><div
															class="day-contents">7</div>
													</td>
												</tr>
												<tr>
													<td class="day past calendar-day-2018-07-08"><div
															class="day-contents">8</div>
													</td>
													<td class="day past calendar-day-2018-07-09"><div
															class="day-contents">9</div>
													</td>
													<td class="day past event calendar-day-2018-07-10"><div
															class="day-contents">10</div>
													</td>
													<td class="day past event calendar-day-2018-07-11"><div
															class="day-contents">11</div>
													</td>
													<td class="day past event calendar-day-2018-07-12"><div
															class="day-contents">12</div>
													</td>
													<td class="day past event calendar-day-2018-07-13"><div
															class="day-contents">13</div>
													</td>
													<td class="day past event calendar-day-2018-07-14"><div
															class="day-contents">14</div>
													</td>
												</tr>
												<tr>
													<td class="day past calendar-day-2018-07-15"><div
															class="day-contents">15</div>
													</td>
													<td class="day past calendar-day-2018-07-16"><div
															class="day-contents">16</div>
													</td>
													<td class="day past calendar-day-2018-07-17"><div
															class="day-contents">17</div>
													</td>
													<td class="day past calendar-day-2018-07-18"><div
															class="day-contents">18</div>
													</td>
													<td class="day past calendar-day-2018-07-19"><div
															class="day-contents">19</div>
													</td>
													<td class="day past calendar-day-2018-07-20"><div
															class="day-contents">20</div>
													</td>
													<td class="day past event calendar-day-2018-07-21"><div
															class="day-contents">21</div>
													</td>
												</tr>
												<tr>
													<td class="day past event calendar-day-2018-07-22"><div
															class="day-contents">22</div>
													</td>
													<td class="day past event calendar-day-2018-07-23"><div
															class="day-contents">23</div>
													</td>
													<td class="day past calendar-day-2018-07-24"><div
															class="day-contents">24</div>
													</td>
													<td class="day today calendar-day-2018-07-25"><div
															class="day-contents">25</div>
													</td>
													<td class="day calendar-day-2018-07-26"><div
															class="day-contents">26</div>
													</td>
													<td class="day calendar-day-2018-07-27"><div
															class="day-contents">27</div>
													</td>
													<td class="day calendar-day-2018-07-28"><div
															class="day-contents">28</div>
													</td>
												</tr>
												<tr>
													<td class="day calendar-day-2018-07-29"><div
															class="day-contents">29</div>
													</td>
													<td class="day calendar-day-2018-07-30"><div
															class="day-contents">30</div>
													</td>
													<td class="day calendar-day-2018-07-31"><div
															class="day-contents">31</div>
													</td>
													<td
														class="day adjacent-month next-month calendar-day-2018-08-01"><div
															class="day-contents">1</div>
													</td>
													<td
														class="day adjacent-month next-month calendar-day-2018-08-02"><div
															class="day-contents">2</div>
													</td>
													<td
														class="day adjacent-month next-month calendar-day-2018-08-03"><div
															class="day-contents">3</div>
													</td>
													<td
														class="day adjacent-month next-month calendar-day-2018-08-04"><div
															class="day-contents">4</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-12">
					<div class="panel">
						<header class="panel-heading">
							相册 <span class="pull-right"> <a
								href="${pageContext.request.contextPath}/sys/ygxc">更多</a> </span>
						</header>
						<div class="panel-body">
							<div id="gallery" class="media-gal">
								<div class="images item ">
									<a href="${pageContext.request.contextPath}/statics/img/img113.jpg"
										title="调皮"> <img
										src="${pageContext.request.contextPath}/statics/img/img113.jpg"
										alt="调皮"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/img113.jpg">点击查看</a>
									</p>

								</div>




								<div class="images item ">
									<a href="http://opms.demo.milu365.cn/album/239103520039505920"
										title="调皮"> <img
										src="${pageContext.request.contextPath}/statics/img/img111.png"
										alt="调皮"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/img111.png">点击查看</a>
									</p>

								</div>



								<div class="images item ">
									<a href="http://opms.demo.milu365.cn/album/239103520039505920"
										title="调皮"> <img
										src="${pageContext.request.contextPath}/statics/img/img112.jpg"
										alt="调皮"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/img112.jpg">点击查看</a>
									</p>

								</div>


								<div class="images item ">
									<a href="" title="216438_wx"> <img
										src="${pageContext.request.contextPath}/statics/img/imglove.jpg"
										alt="216438_wx"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/imglove.jpg">点击查看</a>
									</p>

								</div>
								<div class="images item ">
									<a href="${pageContext.request.contextPath}/statics/img/pic3.jpg"
										title="121648"> <img
										src="${pageContext.request.contextPath}/statics/img/pic3.jpg"
										alt="121648"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/pic3.jpg">点击查看</a>
									</p>
								</div>
								<div class="images item ">
									<a
										href="${pageContext.request.contextPath}/statics/img/pic4.jpg"
										title="demo6"> <img
										src="${pageContext.request.contextPath}/statics/img/pic4.jpg"
										alt="demo6"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/pic4.jpg">点击查看</a>
									</p>
								</div>
								<div class="images item ">
									<a
										href="${pageContext.request.contextPath}/statics/img/pic5.jpg"
										title="调皮"> <img
										src="${pageContext.request.contextPath}/statics/img/pic5.jpg"
										alt="调皮"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/pic5.jpg">点击查看</a>
									</p>

								</div>



								<div class="images item ">
									<a
										href="${pageContext.request.contextPath}/statics/img/pic6.jpg"
										title="调皮"> <img
										src="${pageContext.request.contextPath}/statics/img/pic6.jpg"
										alt="调皮"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/pic6.jpg">点击查看</a>
									</p>

								</div>

								<div class="images item ">
									<a
										href="${pageContext.request.contextPath}/statics/img/pic7.jpg"
										title="调皮"> <img
										src="${pageContext.request.contextPath}/statics/img/pic7.jpg"
										alt="调皮"> </a>
									<p>
										<a
											href="${pageContext.request.contextPath}/statics/img/pic7.jpg">点击查看</a>
									</p>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div aria-hidden="true" aria-labelledby="noticeModalLabel" role="dialog"
	tabindex="-1" id="noticeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title">公告详情</h4>
			</div>
			<div class="modal-body">
				<p id="notice-box"></p>
			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-primary" type="button">关闭</button>
			</div>
		</div>
	</div>
</div>


<script
	src="${pageContext.request.contextPath}/statics/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/jquery_002.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/scripts.js"></script>
<div id="ascrail2000" class="nicescroll-rails"
	style="width: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
	<div
		style="position: relative; top: 0px; float: right; width: 6px; height: 146px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2000-hr" class="nicescroll-rails"
	style="height: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
	<div
		style="position: relative; top: 0px; height: 6px; width: 629px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001" class="nicescroll-rails"
	style="width: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; left: 137px; height: 728px; display: none; opacity: 0;">
	<div
		style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001-hr" class="nicescroll-rails"
	style="height: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; top: 725px; left: 0px; position: fixed; cursor: default; display: none; opacity: 0;">
	<div
		style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px; left: 0px;"></div>
</div>
<script
	src="${pageContext.request.contextPath}/statics/js/jquery_003.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/opms.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/clndr.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/evnt.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/moment-2.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/underscore-min.js"></script>
<script>
$(function(){
	$('#noticeModal').on('show.bs.modal', function (e) {
		$('#notice-box').html($(e.relatedTarget).attr('data-content'))
	});	
});
</script>
</body>
</html>