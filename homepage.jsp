<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>尚尚签后台管理系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<script type="text/javascript" src="./js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		show("huiyuan");
		$(".menu").click(function() {
			var str = $(this).attr("data");
			show(str);
		});
	});
	function show(str) {
		$(".menu2").each(function() {
			if ($(this).attr("id") == str) {
				$(this).css('display', 'block');
			} else {
				$(this).css('display', 'none');
			}
		});
	}
</script>
<style type="text/css">
* {
	list-style: none;
	margin: 0;
	padding: 0;
}

html {
	height: 100%;
	overflow: hidden;
}

body {
	height: 100%;
}

.top, .left, .right, .bottom {
	position: absolute;
}

.top {
	height: 15%;
	left: 10px;
	top: 10px;
	right: 10px;
}

.left {
	width: 200px;
	left: 10px;
	top: 90px;
	bottom: 70px;
}

.left li {
	padding-top: 20PX
}

.left ul {
	text-align: left;
	margin-left: 20px
}

.right {
	left: 220px;
	right: 10px;
	top: 100px;
	bottom: 80px;
	height: 80%
}

.bottom {
	height: 5%;
	left: 10px;
	right: 10px;
	bottom: 10px;
	width: 100%;
}
</style>
</head>
<body>
	<div class="top">
		<table width="100%">
			<tr>
				<td colspan="3"><span style="font-size: 40px">logo</span></td>
				<td><a href="<%=basePath%>">退出</a></td>
			</tr>
			<tr>
				<td colspan="4"><hr></td>
			</tr>
			<tr>
				<!-- <td><a href="javascript:void(0)" class="menu" data="kefu">客服管理</a></td> -->
				<td><a href="javascript:void(0)" class="menu" data="huiyuan">会员管理</a></td>
				<td><a href="document.do?method=toDocList" target="main" class="menu" data="wendang">文档管理</a></td>
<!-- 				<td><a href="javascript:void(0)" class="menu" data="zhanghu">账户管理</a></td>
 -->				<td><a href="javascript:void(0)" class="menu" data="jiankong">在线监控</a></td>
				<td><a href="javascript:void(0)" class="menu" data="xitong">系统管理</a></td>
			</tr>
		</table>
	</div>
	<div class="left">
		<!-- <ul id="kefu" style="padding-top: 30px;" class="menu2">
			<li><a href="user.do?method=toShowAllPage" target="main">会员信息管理</a></li>
			<li><a href="signDetil.do?method=toList" target="main">签名业务管理</a></li>
			<li><a href="" target="main" >个人认证</a></li>
			<li><a href="member.do?method=toShowAllPage" target="main" >企业认证</a></li>

		</ul> -->
		
		
		<ul id="huiyuan" style="padding-top: 30px;" class="menu2">
			<li><a href="member.do?method=toList" target="main" >会员信息管理</a></li>
			<li><a href="signDetil.do?method=toList" target="main">签名业务管理</a></li>
			<!-- <li><a href="" target="main" >会员计费管理</a></li> -->
			<!-- <li><a href="" target="main" >个人认证</a></li>
			<li><a href="" target="main" >企业认证</a></li> -->
		</ul>
		
		
		<ul id="wendang" style="padding-top: 30px;" class="menu2">
		</ul>
		
		<ul id="zhanghu" style="padding-top: 30px;" class="menu2">
		</ul>
		
		<ul id="jiankong" style="padding-top: 30px;" class="menu2">
			<li>门户信息汇总<br>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="member.do?method=memberCollect" target="main">会员汇总</a><br>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="signaturedetail.do?method=signatureCollect" target="main">签署业务</a>
			</li>
			<li><a href="warncontrol.do?method=listWarnControl" target="main">告警监控</a></li>
			<li><a href="systemsetting.do?method=toSetting" target="main" >监控设定</a></li>
		</ul>

		<ul id="xitong" style="padding-top: 30px;" class="menu2">
			<li><a href="<%=path%>/account.do?method=selaccount" target="main" >员工管理</a></li>
			<li><a href="org.do?method=toList" target="main">机构管理</a></li>
			<li><a href="role.do?method=toList" target="main">角色管理</a></li>
			<li>数据字典管理<br>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="area.do?method=toList&flag=0"target="main" >地区管理</a><br>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<%=path%>/sign.do?method=selSignaturetype"target="main" >签名框管理</a>
			</li>
			<li><a href="competence.do?method=toManager" target="main" >权限管理</a></li>
		</ul>
	</div>
	
	
	<div class="right">
		<iframe name="main" width="100%" height="100%" src="view/welcome.jsp"></iframe>
	</div>
	
	
<div class="bottom" style="text-align: center">
<jsp:include page="foot.jsp"></jsp:include>
</div>
</body>
</html>
