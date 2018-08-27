var bmname = null;
var bmdj = null;
var zgyg = null;
var dcyg = null;
var srkxs = null;
var xlkxs = null;
var wbkfz = null;
var addbtn = null;
var bmjlmz = null;
$(function() {
	bmjlmz = $("#bmjlmz");
	bmname = $("#bmname");
	bmdj = $("#bmdj");
	zgyg = $("#zgyg");
	dcyg = $("#dcyg");
	srkxs = $("#srkxs");
	xlkxs = $("#xlkxs");
	wbkfz = $("#wbkfz");
	addbtn = $("#addbtn");

	bmdj.val("");
	zgyg.val("");
	bmdj.bind("blur", function(){
		if(bmdj.val() == 2){
			xlkxs.css('display','none');
			srkxs.css('display','block');
			wbkfz.val('');
			zgyg.bind("blur", function(){
				var obj = $("#zgyg option:selected");
				var mz = obj.text();
				wbkfz.val(mz);
			});
		}else if(bmdj.val() == 3){
			zgyg.css('display','none');
			dcyg.css('display','block');
			wbkfz.css('display','none');
			xlkxs.css('display','block');
			wbkfz.text('');
			alert(wbkfz);
		}
	});




	$('#resume-form').validate({
		ignore:'',		    
		rules : {
			bmname:{required:true},
		},
		messages : {
			bmname:{required:'请填写部门名称'},

		}
	});



});
