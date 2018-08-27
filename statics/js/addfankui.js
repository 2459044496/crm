var addbtn = null;
var info=null;
$(function() {
	addbtn = $("#addbtn");
	info=$("#info");
	
	$('#resume-form').bind("submit",function(){
		var abc=info.val();
		if(abc==null || abc==""){
			alert("请输入反馈信息");
			
			return false;
		}else{	
			alert("反馈成功，谢谢您的反馈！");
			return true;
		}
	});
});