var ribd = null;
var start = null;
var end = null;
$(function() {
	ribd = $("#ribd");
	start = $("#start");
	end = $("#end");
	
	ribd.submit(function(){
		var sn = start.val();
		var en = end.val();
		if(sn == null || sn == ""){
			alert("请选择开始日期");
			return false;
		}
		if(en == null || en == ""){
			alert("请选择结束日期");
			return false;
		}
		if(sn > en){
			alert("开始日期不能大于截止日期");
			return false;
		}
		
		return true;
		
	});

});
