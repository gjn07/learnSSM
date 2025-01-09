<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业人事管理系统</title>
<style>
.btn2 {
	font-size: 40px;
	width: 100%;
	float: right;
	margin-top: 2%;
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
	<div style="width: 100%; height: 100%;">
		<div
			style="overflow: hidden; height: 125px; background-color: #c1e2f9">
			<h2 style="margin-left: 30px; color: #007dbe; float: left;">企业人事管理系统</h2>
			<div style="float: right">
				<p style="float: right"></p>
				<span style="float: left; font-size: 30px">当前用户：管理员${sessionScope.username}</span>
				<a href=${pageContext.request.contextPath}>&nbsp;&nbsp;&nbsp;注销</a>
			</div>
		</div>
		<form action="${pageContext.request.contextPath }/insert">
			number:<input type="text" name="number" value="5"> 
			password:<input type="text" name="password" value="123456"> 
			role_id:<input type="text" name="role_id" value="5"> 
			phone:<input type="text" name="phone" value="123456789"> 
			createdate:<input type="text" name="createdate" value="2024-06-04 14:33:33">
			username:<input type="text" name="username" value="abc">
			remark:<input type="text" name="remark" value="abc">
			<button class="btn2">增</button>
		</form>
		<form action="${pageContext.request.contextPath }/delete">
			number:<input type="text" name="number" value="5">
			<button class="btn2">删</button>
		</form>
		<form action="${pageContext.request.contextPath }/update">
			number:<input type="text" name="number" value="5">
			username:<input type="text" name="username" value="gjn">
			<button class="btn2">改</button>
		</form>
		<form action="${pageContext.request.contextPath }/query">
			<button class="btn2">查</button>
		</form>
		<p>${message}
	</div>
</html>