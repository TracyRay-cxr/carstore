// JavaScript Document
function Delete(id)
{
	if(confirm("确定要删除吗？")) {
		location.href = "ProductServlet?op=delete&productid=" + id;
	}
}

function delUser(id)
{
	if(confirm("确定要删除吗？")) {
		location.href = "UserServlet?op=delete&userid=" + id;
	}
}

//用户添加页面-表单状态
var userFormState=true;
/**
 * 用户名是否存在验证
 * @returns {boolean}
 */
function checkloginname() {
	var v=$("#loginname").val();
	/**
	 * 用户名是否为空
	 */
	if(v=='')
	{
		$("#loginnametips").html("用户名不能为空");
		userFormState=false;
	}
	else if(v.length<3)
	{
		$("#loginnametips").html("用户名长度不能小于3位");
		userFormState=false;
	}else {
		$.ajax({
			url: 'UserServlet?op=checkloginname&loginname=' + v,
			dataType: 'json',
			type: 'post',
			success: function (data) {
				if (data.state == 'ERROR') {
					$("#loginnametips").html(v + " 已经被注册 ");
					userFormState = false;
				} else {
					$("#loginnametips").html('');
					userFormState = true;
				}
			}
		})
	}
	return userFormState;
}

/**
 * 姓名验证
 * @param username
 */
function checkUsername(username) {
	var v=$("#username").val();
	if(v=='')
	{
		$("#usernametips").html("姓名不能为空");
		userFormState=false;
	}else
	{
		userFormState=true;
		$("#usernametips").html("");
	}
	return userFormState;
}

function checkpassword(pwd) {
	var v=$("#password").val();
	if(v=='')
	{
		$("#passwordtips").html("密码不能为空");
		userFormState=false;
	}else if(v.length<6)
	{
		$("#passwordtips").html("密码长度不能小于6位");
		userFormState=false;
	}else
	{
		userFormState=true;
		$("#passwordtips").html("");
	}
	return userFormState;
}
function checkbirthday() {
	var v=$("#birthday").val();
	if(v=='')
	{
		$("#birthdaytips").html("出生日期不能为空");
		userFormState=false;
	}else
	{
		userFormState=true;
		$("#birthdaytips").html("");
	}
	return userFormState;
}


function validateUserForm() {
	if(checkloginname()&&checkUsername()&&checkpassword()&&checkbirthday())
	{
		return  true;
	}else
	{
		//alert('表单验证失败，暂无法提交');
		return false;
	}       
}
