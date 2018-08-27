var mphone=null;
var shoujihao = null;
$(function() {
	mphone = $("#mphone");
	shoujihao = $("#shoujihao");
	add=$("#add");

	mphone.bind("blur", function() {
		$.ajax({
			type : "post",//请求类型
			url:"http://localhost:8080/Crm/jianli/yzphone.html",//请求的url
			data:{mphone:mphone.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data) {//data：返回数据（json对象）
				if (data.yzjg == "isnull") {//输入为空，错误提示
					shoujihao.removeClass('has-success').addClass('has-error');
					add.attr("disabled", true);
					validateTip(mphone.next(), {"color" : "red"}, " 请输入面试者电话！", false);
				}else if (data.yzjg == "iscz") {//账号已经存在，错误提示
					shoujihao.removeClass('has-success').addClass('has-error');
					add.attr("disabled", true);
					validateTip(mphone.next(), {"color" : "red"}, " 该面试电话已经被添加", false);
				} else if(data.yzjg == "isbcz"){
					shoujihao.removeClass('has-error').addClass('has-success');
					add.attr("disabled", false);
					validateTip(mphone.next(), {"color" : "green"});
				}

			},
			error : function(data) {//当访问时候，404，500 等非200的错误状态码
				validateTip(mphone.next(), {
					"color" : "red"
				}, " 您访问的页面不存在", false);
			}
		});

	});



	$('#resume-form').validate({
		ignore:'',		    
		rules : {
			mphone:{required:true}
		},
		messages : {	
			mphone:{required:'请填写电话'}
		}
	});

});