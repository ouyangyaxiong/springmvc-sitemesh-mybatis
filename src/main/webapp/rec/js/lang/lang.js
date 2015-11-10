$(function(){
	/**
	 * 删除语种
	 */
	$("tbody").on("click",".deleteItem",function(){
		var oriObj = $(this);
		var defaultcolor = oriObj.parent().parent().css("backgroundColor");
		$(this).parent().parent().css("backgroundColor","#d9534f")
		showConfirmDialog(null,this,function(flag){
			if(flag){
				$.ajax({
					url:ctx + "/mgr/lang/delete",
					data:{"id":oriObj.attr("id")},
					type:"POST",
					dataType:"JSON",
					success:function(data){
						if(data == 1){
							oriObj.parent().parent().remove();
							showResult("suc");
						}else{
							showResult("fail");
						}
					}
				});
			}else{
				oriObj.parent().parent().css("backgroundColor",defaultcolor);
			}
		});
	});
	
	/**
	 * 添加语种
	 */
	$(".savebtn").click(function(){
		var lang = $(".lang").val();
		if(lang){
			$.ajax({
				url:ctx + "/mgr/lang/save",
				data:{"lang":lang},
				type:"POST",
				dataType:"JSON",
				success:function(data){
					if(data.id){
						$("tbody").append("<tr><td>"+data.lang+"</td><td><a type='button' class='btn btn-xs btn-danger deleteItem' id='"+data.id+"'>删除</a></td></tr>");
						$(".lang").val("");
						showResult("suc");
					}else{
						showResult("fail");
					}
				}
			});
		}
		else{
			showResult("语种不能为空");
		}
	});
})