$(function() {

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
			}
	});

$("#activitiesid").blur(
		function() {
			$("#activitiesid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#activitiesid").after("<span id='activitiesid_msg' style='color: red'>活动不能为空</span>");
			}
	});

$("#addtime").blur(
		function() {
			$("#addtime_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#addtime").after("<span id='addtime_msg' style='color: red'>报名日期不能为空</span>");
			}
	});

$("#status").blur(
		function() {
			$("#status_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#status").after("<span id='status_msg' style='color: red'>状态不能为空</span>");
			}
	});







$('#sub').click(function(){
var usersid = $("#usersid").val();
var activitiesid = $("#activitiesid").val();
var addtime = $("#addtime").val();
var status = $("#status").val();
$("#usersid_msg").empty();
$("#activitiesid_msg").empty();
$("#addtime_msg").empty();
$("#status_msg").empty();
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
	return false;
}
if (activitiesid == "" || activitiesid == null) {
	$("#activitiesid").after("<span id='activitiesid_msg' style='color: red'>活动不能为空</span>");
	return false;
}
if (addtime == "" || addtime == null) {
	$("#addtime").after("<span id='addtime_msg' style='color: red'>报名日期不能为空</span>");
	return false;
}
if (status == "" || status == null) {
	$("#status").after("<span id='status_msg' style='color: red'>状态不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#usersid_msg").empty();
$("#activitiesid_msg").empty();
$("#addtime_msg").empty();
$("#status_msg").empty();
});

});
