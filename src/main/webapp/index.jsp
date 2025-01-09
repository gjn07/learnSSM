<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HRMagnager</title>
<style>
body {
	position: relative;
	height: 100%;
	background: #F2F4F7;
	border-top: 1px solid #F2F4F7;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.login_box {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, 25%);
	width: 900px;
	height: 546px;
	overflow: hidden;
	box-shadow: 0 0 20px 0 rgba(175, 187, 204, 0.15);
	background: #ffffff;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 16px;
	-moz-border-radius: 16px;
	border-radius: 16px;
	position: relative;
}

input {
	width: 100%;
	height: 48px;
	vertical-align: top;
	background: #FFFFFF;
	border: 1px solid #d4d6d9;
	outline: none;
	font-size: 14px;
	color: #181E33;
	-webkit-border-radius: 24px;
	border-radius: 24px;
	padding: 0 24px 0 54px;
	box-sizing: border-box;
}

.btn2 {
	width: 100%;
	float: right;
	margin-top: 10%;
	background-color: rgb(20, 87, 244);
	border: 1px solid rgb(20, 87, 244);
	padding: 12px 20px;
	border-radius: 7px;
	transition: .3s;
	color: #fff;
}

.btn2:hover {
	border: 1px solid rgb(20, 87, 244);
	background-color: transparent;
	color: rgb(20, 87, 244);
}

.btn2:focus {
	box-shadow: 0px 0px 0px 5px rgba(20, 87, 244, 0.37), 0px 0px 0px 10px
		rgba(20, 87, 244, 0.38);
	outline: none;
}
</style>
</head>
<body>
	<div class="login_box">
		<center style="font-size: 40px; margin-top: 10%">企业人事管理系统</center>
		<div>
			<img src="image/icon/logo.jpg"
				style="float: left; margin-top: 5%; margin-left: 15%;">
			<form action="${pageContext.request.contextPath }/login"
				method="post" style="float: left; margin-top: 7%; margin-left: 5%;">
				<table>
					<tr>
						<td><img src="image/icon/account.png"
							style="width: 16px; text-align: right"></td>
						<td><input type="text" name="account" placeholder="账号"
							required></td>
					</tr>
					<tr>
						<td><br></td>
					<tr>
						<td><img src="image/icon/password.png"
							style="width: 16px; text-align: right"></td>
						<td><input type="password" name="password" placeholder="密码"
							required></td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								<button class="btn2">登录</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>