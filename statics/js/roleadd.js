
$(function() {
	$('#resume-form').validate({
		ignore:'',		    
		rules : {
			role_Name:{required:true},
			khss:{required:true},
			ssjl:{required:true},
			khdz:{required:true},
			
		},
		messages : {
			role_Name:{required:'请填写角色名'},
		}
	});
});
