<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>后台管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="Alan" name="Author" />
<meta content="MSHTML 6.00.6000.16890" name="GENERATOR" />
<link rel="stylesheet" href="images/private.css" type="text/css"></link>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	function checkpwd1(){
		var user1 = $("#pwd1").val();
		var user2 = '${user.upsw}';
		if (user1 == user2) {
		$("#img1").html("<img src='images/ok.png' />");
			return true;
		}else{
		$("#img1").html("<img src='images/no.png' />");
			return false;
		};
	}
	function checkpwd2(){
		var user = $("#pwd2").val();
		if (user.length >= 6 && user.length <= 12) {
			$("#img2").html("<img src='images/ok.png' />");
			return true;
			}else{
		$("#img2").html("<img src='images/no.png' />");
			return false;
		};
	}
	function checkpwd3(){
		var user = $("#pwd2").val();
		var pwd = $("#pwd3").val();
		if (user.length >= 6 && user.length <= 12 && user == pwd) {
			$("#img3").html("<img src='images/ok.png' />");
			return true;
		}else{
			$("#img3").html("<img src='images/no.png' />");
			return false;
		};
	}
	function check(){
		if(checkpwd3()&&checkpwd2()&&checkpwd1()){
			$("#change").attr("action","<%=path%>/changepsw.do");
		}else{
			$("#change").attr("action","javascript:void(0)");
		}
	}
	$(function(){
		$("#pwd1").blur(function(){
			checkpwd1();
		});
		$("#pwd1").focus(function(){
			$("#img1").html("");
		});
		$("#pwd2").blur(function(){
			checkpwd2();
		});
		$("#pwd2").focus(function(){
			$("#img2").html("");
		});
		$("#pwd3").blur(function(){
			checkpwd3();
		});
		$("#pwd3").focus(function(){
			$("#img3").html("");
		}); 
		$(":submit").focus(function(){
			check();
		});
	});
</script>
</head>
<body>
	<table class="navi" cellspacing="1" align="center" border="0">
  <tbody>
    <tr>
       <th>后台 &gt;&gt; 修改密码</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="2">修改密码</th>
		<th ><a href="<%=path%>/common/user/uright.jsp"><button>取消</button></a></th>
	</tr>
	 <tr>
  <td align="right" width="33%">用户：</td>
	  <td width="33%">${user.uname}</td>
	  <td width="33%"><br /><br /></td>
  </tr>
  	 <tr>
  <td align="right" width="33%">用户真实姓名：</td>
	  <td width="33%">${user.urealname}</td>
	  <td width="33%"><br /><br /></td>
  </tr>
  	 <tr>
  <td align="right" width="33%">注意：</td>
	  <td width="33%">密码请设置为6~12位字母，数字。</td>
	  <td width="33%"><br /><br /></td>
  </tr>
   <tr>
   <td align="right" width="33%">输入旧密码 ： </td>
   <td width="33%"><input type="password" id="pwd1" /> </td>
   <td width="33%"><span class="f_cB" id="img1"><br /><br /></td>
  </tr>
  <tr>
  <div class="bbD">
  
  <td align="right">输入新密码 ：</td>
  <td ><input type="password"  id="pwd2" /> </td>
  <td><span class="f_cB" id="img2"><br /><br /></td>
  </div>
  </tr>
  <form method="post" id="change" target="_parent">
    <tr>
  <td align="right">再次确认密码:</td>
  <td ><input name="npsw" type="password"  id="pwd3" /> </td>
  <td><span class="f_cB" id="img3"><br /><br /></td>
  </tr>
  
   <tr>
		<td colspan="3"><input type="submit" class="btn_ok btn_yes" value="提交" /><br /><br /></td>
	</tr>
  </form>
  <tr>
    <td colspan="3" align="center"><br /><br /><br /><br /><br /><br /></td>  
  </tr>
 </table>
</body>
</html>