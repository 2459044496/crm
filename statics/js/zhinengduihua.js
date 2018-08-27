var myme = null;
var xiaoc = null;
var wbka = null;
var fasong = null;

$(function() {
	myme = $("#myme");
	xiaoc = $("#xiaoc");
	wbka = $("#wbka");
	fasong = $("#fasong");
	fasong.bind("click",function(){
		myme.html('我：');
		xiaoc.html('小C：');
		var wbknr = wbka.val();
		wbka.val('');
		myme.html(myme.text()+wbknr);
		$.ajax({
			type:"POST",//请求类型
			url:"http://www.tuling123.com/openapi/api?key=d96d68ab788b4ad1ac0589d0a5abaa7b&info="+wbknr,//请求的url
			data:{},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）
				xiaoc.html(xiaoc.text()+data.text);
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				alert('cuwu');
			}
		});
	});


});
