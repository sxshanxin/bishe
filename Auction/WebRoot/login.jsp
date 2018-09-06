<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>
<script language="javascript">
	function checkName(){
		if($(":text").val()!=""&&$(":text").val()!=null){
			if(!/^[a-z0-9_-]{3,16}$/.test($(":text").val())){
				$("#msg").html("用户名必须为3-16位字母数字下划线");
				return false;
			}else{
				$("#msg").html("");
				return true;
			}
		}else{
			$("#msg").html("用户名不能为空");
			return false;
		}
	}
	function checkPsw(){
		if($(":password").val()!=""&&$(":password").val()!=null){
			$("#msg1").html("");
			return true;
		}else{
			$("#msg1").html("密码不sssssssssssss能为空");
			return false;
		}
	}
	function check(){
		if(checkName()&&checkPsw()){
			return true;
		}else{
			return false;
		}
	}
	$(function(){
		$(":text").blur(function(){
			checkName();
		});
		$(":text").focus(function(){
			checkName();
		});
		$(":password").blur(function(){
			checkPsw();
		});
	})
</script> 
</head>
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  
<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    </ul>    
    </div>
    <div class="loginbody">
    <span class="systemlogo" style="font-size: 30px; text-align: center;">欢迎</span> 
    <div class="loginbox" style="margin: auto;">
   	<form method="post" action="<%=path %>/dologin.do" id="myform" onsubmit="return check()">
	    <input name="name" type="text" style="margin-top: 30px;margin-left: 86px;" class="loginuser" value="admin" onclick="JavaScript:this.value=''"/>
	    <div id="msg" style="width: width:299px; height:30px; text-align: center; color: red;"></div>
	    <input name="psw" type="password" style="margin-left: 86px;" class="loginpwd" value="密码" onclick="JavaScript:this.value=''"/><br />
	    <div id="msg1" style="width: width:299px; height:30px; text-align: center; color: red;"></div>
	    <select name="identity" style="width:299px; height:46px; margin-left: 86px; background-color: ECF5FA;">
	    	<option value="0">--请选择身份--
	    	<option value="1">管理员
	    	<option value="2">拍卖商家
	    	<option value="3">拍卖用户
	    </select>
	    <div id="msg1" style="width: width:299px; height:30px; text-align: center;"></div>
	    <input type="submit" style="margin-left: 181px;" class="loginbtn" value="登录" />
    </form>
    </div>
    </div>
    <div class="loginbm">@学习使用@</div>
</body>
</html>
