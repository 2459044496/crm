var yuan = null;
var sry = null;
var npwd = null;
var cpwd = null;
$(function() {
	yuan = $("#ymm");
	sry = $("#yzmm");
	npwd = $("#newpwd");
	cpwd = $("#confpwd");
	sry.bind("blur", function() {
		if(sry.val() == null || sry.val() == ""){
			$("#jmm").removeClass('has-success').addClass('has-error');
			validateTip(sry.next(), {"color" : "red"}, " 请输入旧密码！", false);
			$("#addbtn").attr('disabled',true);
		}
		if(sry.val() != yuan.val()){
			$("#jmm").removeClass('has-success').addClass('has-error');
			validateTip(sry.next(), {"color" : "red"}, " 旧密码输入错误", false);
			$("#addbtn").attr('disabled',true);
		}
		if(sry.val() == yuan.val()){
			$("#jmm").removeClass('has-error').addClass('has-success');
			validateTip(sry.next(), {"color" : "green"});
			$("#addbtn").attr('disabled',false);
		}
	});

	npwd.bind("blur", function() {
		if(npwd.val() == null || npwd.val() == ""){
			$("#xmm").removeClass('has-success').addClass('has-error');
			validateTip(npwd.next(), {"color" : "red"}, " 请输入新密码！", false);
			$("#addbtn").attr('disabled',true);
		}else if(npwd.val().length < 6 || npwd.val().length > 20 ){
			$("#xmm").removeClass('has-success').addClass('has-error');
			validateTip(npwd.next(), {"color" : "red"}, " 长度必须是6到20位之间", false);
			$("#addbtn").attr('disabled',true);
		}else if(npwd.val() == yuan.val()){
			$("#xmm").removeClass('has-success').addClass('has-error');
			validateTip(npwd.next(), {"color" : "red"}, " 新旧密码不能相同", false);
			$("#addbtn").attr('disabled',true);
		}else if(npwd.val().length > 6 || npwd.val().length < 20 ){
			$("#xmm").removeClass('has-error').addClass('has-success');
			validateTip(npwd.next(), {"color" : "green"});
			$("#addbtn").attr('disabled',false);
		}
	});

	cpwd.bind("blur", function() {
		if(npwd.val() != cpwd.val()){
			$("#qxmm").removeClass('has-success').addClass('has-error');
			validateTip(cpwd.next(), {"color" : "red"}, " 两次输入密码不符合", false);
			$("#addbtn").attr('disabled',true);
		}
		if(npwd.val() == cpwd.val()){
			$("#qxmm").removeClass('has-error').addClass('has-success');
			validateTip(cpwd.next(), {"color" : "green"});
			$("#addbtn").attr('disabled',false);
		}
	});


	$('#userprofilepwd-form').validate({
		ignore:'',		    
		rules : {
			sry:{required:true},
			npwd:{required:true},
			cpwd:{required:true},
		},
		messages : {
			sry:{required:'请填写旧密码'},
			npwd:{required:'请填写新密码'},
			cpwd:{required:'请确认填写'},

		}
	});

});
