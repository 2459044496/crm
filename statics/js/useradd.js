var ucode = null;
var urole = null;
var qbbm = null;
var jlbm = null;
var zgbm = null;
var addbtn = null;
var xzid = null;
var ygdhzg = null;
var ceshizhanghao = null;
var dianhua = null;
$(function() {
	dianhua = $("#dianhua");
	ucode = $("#ucode");
	urole = $("#urole");
	qbbm = $("#qbbm");
	jlbm = $("#jlbm");
	zgbm = $("#zgbm");
	addbtn = $("#addbtn");
	ygdhzg = $("#ygdhzg");
	xzid = $("#xzid");
	ceshizhanghao = $("#ceshizhanghao");
	ucode.bind("blur", function() {
		//ajax后台验证--userCode是否已存在
		//user.do?method=ucexist&userCode=**
		$.ajax({
			type : "get",//请求类型
			url:"http://localhost:8080/Crm/user/yzname.html",//请求的url
			data:{ucode:ucode.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data) {//data：返回数据（json对象）
				if (data.yzjg == "isnull") {//输入为空，错误提示
					ceshizhanghao.removeClass('has-success').addClass('has-error');
					addbtn.attr("disabled", true);
					validateTip(ucode.next(), {"color" : "red"}, " 请输入用户账号！！", false);
				} else if (data.yzjg == "iscz") {//账号已经存在，错误提示
					ceshizhanghao.removeClass('has-success').addClass('has-error');
					addbtn.attr("disabled", true);//给提交按钮添加一个标签
					validateTip(ucode.next(), {"color" : "red"}, " 该账号已经被添加", false);
				} else if(data.yzjg == "isbcz"){
					ceshizhanghao.removeClass('has-error').addClass('has-success');
					validateTip(ucode.next(), {"color" : "green"}, " 该账号可以使用", true);
					addbtn.attr("disabled", false);
				}
			},
			error : function(data) {//当访问时候，404，500 等非200的错误状态码
				validateTip(ucode.next(), {
					"color" : "red"
				}, " 您访问的页面不存在", false);
			}
		});

	});

	urole.bind("blur",function(){
		if(urole.val() == 2){
			qbbm.css('display','none');
			jlbm.css('display','block');
			zgbm.css('display','none');
		}else if(urole.val() == 3){
			qbbm.css('display','none');
			jlbm.css('display','none');
			zgbm.css('display','block');
		}else if(urole.val() == 4){
			qbbm.css('display','block');
			jlbm.css('display','none');
			zgbm.css('display','none');
		}

		$.ajax({
			type : "get",//请求类型
			url:"http://localhost:8080/Crm/user/tjxz",//请求的url
			data:{urole:urole.val()},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data) {//data：返回数据（json对象
				if (data.yzjg == "isnull") {//输入为空，错误提示
					xzid.val("");
				}else{
					xzid.val(data.yzjg);
				}
			},
			error : function(data) {//当访问时候，404，500 等非200的错误状态码
				validateTip(ucode.next(), {
					"color" : "red"
				}, " 您访问的页面不存在", false);
			}
		});

	});

	$('#resume-form').validate({
		ignore:'',		    
		rules : {
			uname:{required:true},
			upwd:{required:true},
			uphone:{required:true},
			urole:{required:true},
			ubumen:{required:true}
		},
		messages : {
			uname:{required:'请填写员工姓名'},
			upwd:{required:'请填写密码'},
			uphone:{required:'请填写电话'},
			urole:{required:'请选择员工角色'},
			ubumen:{required:'请选择员工部门'}
		}
	});
});
