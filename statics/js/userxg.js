
$(function() {
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
	//单击提交按钮弹出对话框
	$("#addbtn").bind("click",function(){
		if(confirm("是否确认提交数据")){
			$("#resume-form").submit();
		}
	});

});
