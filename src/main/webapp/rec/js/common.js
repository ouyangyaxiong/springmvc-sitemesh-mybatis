var ctx = '';

$(function() {
	// 保存请求上下文
	ctx = $("#ctx").val();
})

/**
 * 信息提示框
 * @param type,值为suc为成功提示，值为fail为失败提示，或者直接传入自定义想要显示的信息
 */
function showResult(type) {
	var msgType = "";
	var msgContent = "";
	if (type == "suc") {
		msgType = "success";
		msgContent = "操作成功";
	} else if (type == "fail") {
		msgType = "danger";
		msgContent = "操作失败";
	} else {
		msgType = "info";
		msgContent = type;
	}
	var content = $("<div class='alert alert-" + msgType
			+ " popUpWin' role='alert'>" + msgContent + "</div>");
	$("body").append(content);
	setTimeout(function() {
		content.fadeOut(250, function() {
			content.remove();
		});
	}, 1250);

}

/**
 * 公共确认对话框
 * 
 * @param title
 *            自定义标题
 * @param srcObj
 *            触发事件的元素
 * @param callback
 *            回调函数
 */
function showConfirmDialog(title, srcObj, callback) {
	var targetTitle = '你确定吗?';
	if (title) {
		targetTitle = title;
	}

	var location = getElementOffset(srcObj);
	var dialog = "<div class='panel panel-primary confirmDialog' style='position:fixed;width:160px;height:90px;top:"
			+ (location.top - 60)
			+ "px;left:"
			+ (location.left - 170)
			+ "px;'>"
			+ "<div class='panel-body'>"
			+ "<h5 class='panel-title'>"
			+ targetTitle
			+ "</h5>"
			+ "<button type='button' class='btn btn-danger confirm' style='margin: 5px'>确定</button>"
			+ "<button type='button' class='btn btn-primary cancel' style='margin: 5px'>取消</button>"
			+ "</div>" + "</div>";
	$("body").append(dialog);
	$(".confirmDialog").on("click", ".confirm", function() {
		$(".confirmDialog").remove();
		callback(true);
	});
	$(".confirmDialog").on("click", ".cancel", function() {
		$(".confirmDialog").remove();
		callback(false);
	});
}

/**
 * 获取元素坐标
 */
function getElementOffset(e) {
	var t = e.offsetTop;
	var l = e.offsetLeft;
	var w = e.offsetWidth;
	var h = e.offsetHeight - 1;
	while (e = e.offsetParent) {
		t += e.offsetTop;
		l += e.offsetLeft;
	}
	return {
		top : t,
		left : l,
		width : w,
		height : h
	}
}