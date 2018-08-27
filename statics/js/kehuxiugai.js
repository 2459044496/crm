var khphone = null;
var addbtn = null;
$(function() {
	addbtn = $("#addbtn");
	khphone = $("#khphone");
	var ysjh = khphone.val();
	khphone.bind("blur", function() {
		$.ajax({
			type : "get",//请求类型
			url:"http://localhost:8080/Crm/kehu/yzphone.html",//请求的url
			data:{khphone:khphone.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data) {//data：返回数据（json对象）
				if(ysjh == khphone.val()){
					validateTip(khphone.next(), {"color" : "green"});
				}else{
					if (data.yzjg == "isnull") {//输入为空，错误提示
						$("#kdh").removeClass('has-success').addClass('has-error');
						validateTip(khphone.next(), {"color" : "red"}, " 请输入手机号", false);
						addbtn.attr("disabled", true);
					}else if(khphone.length != 11){
						$("#kdh").removeClass('has-success').addClass('has-error');
						validateTip(khphone.next(), {"color" : "red"}, " 手机号长度不够11", false);
						addbtn.attr("disabled", true);	
					} else if (data.yzjg == "iscz") {//账号已经存在，错误提示
						$("#kdh").removeClass('has-success').addClass('has-error');
						validateTip(khphone.next(), {"color" : "red"}, " 该客户已经被添加", false);
						addbtn.attr("disabled", true);
					} else if(data.yzjg == "isbcz"){
						$("#kdh").removeClass('has-error').addClass('has-success');
						validateTip(khphone.next(), {"color" : "green"});
						addbtn.attr("disabled", false);
					}
				}

			},
			error : function(data) {//当访问时候，404，500 等非200的错误状态码
				validateTip(khphone.next(), {
					"color" : "red"
				}, " 您访问的页面不存在", false);
			}
		});

	});

	$('#resume-form').validate({
		ignore:'',		    
		rules : {
			khname:{required:true},
			khss:{required:true},
			ssjl:{required:true},
			khdz:{required:true},

		},
		messages : {
			khname:{required:'请填写客户名'},
			khss:{required:'请选择所属员工'},
			ssjl:{required:'请选择部门经理'},
			khdz:{required:'请填写客户地址'},
		}
	});

	//单击提交按钮弹出对话框
	$("#addbtn").bind("click",function(){
		if(confirm("是否确认提交数据")){
			$("#resume-form").submit();
		}
	});

});
