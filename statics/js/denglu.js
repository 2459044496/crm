var denglut = null;
var ucode = null;
var uwp = null;
$(function() {
	denglut = $("#denglut");
	ucode = $("#ucode");
	uwp = $("#uwp");
	
	denglut.submit(function(){
		
		var sn = ucode.val();
		var en = uwp.val();
		if(sn == null || sn == ""){
			alert("请输入账号");
			return false;
		}
		
		if(en == null || en == ""){
			alert("请输入密码");
			return false;
		}
		return true;
		
	});

});
