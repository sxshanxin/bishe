<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
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
<link rel="stylesheet" href="../../images/private.css" type="text/css"></link>
	<script type="text/javascript" src="../../js/jquery-1.9.1.min.js"></script>
  	<script type="text/javascript">
  			function checkrname(){
				if($("#mrealname").val()!=""&&$("#mrealname").val()!=null){
					if(!/[\u4e00-\u9fa5]$/.test($("#mrealname").val())){
						$("#msg13").html("姓名必须为汉字");
						return false
					}else{
					return true;
					}
				}else{
					$("#msg13").html("姓名不能为空");
					return false;
				}
	}
		function checkmname(){
		var mname = $("#mname").val();
		if($("#mname").val()!=""&&$("#mname").val()!=null){
			$.get("<%=path%>/testMname.do",{mname:mname},function(date){
				if(date!="dui"){
					return true;
				}else{
					$("#msg14").html("此管理员账号已存在");
					return false;
				}
			});
		}else{
			$("#msg14").html("管理员账号不能为空");
			return false;
		}
	}
	function checkmpsw(){
		if($("#mpsw").val()!=""&&$("#mpsw").val()!=null){
			return true;
		}else{
			$("#msg15").html("管理员密码不能为空");
			return false;
		}
	}
	function checkmtel(){
				if($("#mtel").val()!=""&&$("#mtel").val()!=null){
					if(!/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/.test($("#mtel").val())){
						$("#msg16").html("电话格式不正确");
						return false
					}else{
					return true;
					}
				}else{
					$("#msg16").html("电话不能为空");
					return false;
				}
	}
	function checkmmail(){
				if($("#mmail").val()!=""&&$("#mmail").val()!=null){
					if(!/^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test($("#mmail").val())){
						$("#msg17").html("邮箱格式不正确");
						return false
					}else{
					return true;
					}
				}else{
					$("#msg17").html("邮箱不能为空");
					return false;
				}
	}
	function check(){
	
		if(checkrname()&&checkmpsw()&&checkmtel()&&checkmmail()){
		
			$("#addstu").attr("action","<%=path%>/addManager.do");
			return true;
		}
			$("#addstu").attr("action","javascript:void(0)");
			return false;
	}
	
	$(function(){
		$("#mrealname").blur(function(){
			checkrname();
		});
		$("#mrealname").focus(function(){
			$("#msg13").html("");
		});
		$("#mname").blur(function(){
			checkmname();
		});
		$("#mname").focus(function(){
			$("#msg14").html("");
		});
		$("#mpsw").blur(function(){
			checkmpsw();
		});
		$("#mpsw").focus(function(){
			$("#msg15").html("");
		});
		$("#mtel").blur(function(){
			checkmtel();
		});
		$("#mtel").focus(function(){
			$("#msg16").html("");
		});
		$("#mmail").blur(function(){
			checkmmail();
		});
		$("#mmail").focus(function(){
			$("#msg17").html("");
		});
		 $(":submit").focus(function(){
			check();
		});
	})
	
  	</script>
  </head>
  <body>
<table class="navi" cellspacing="1" align="center" border="0">
  <tbody>
    <tr>
       <th>后台 &gt;&gt; 管理员添加</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="3">添加管理员</th>
	</tr>
	<tr>
		<td colspan="3" align="center"><p>"<span class="f_cB" >*</span>"号为必填项目</p></td>
	</tr>
	<form id="addstu"  method="post" style="font-size: 16px">
   <tr>
  <td align="right" width="33%">管理员用户名：<span class="f_cB">*</span></td>
	  <td width="33%"><input id="mname" type="text" name="mname"></td>
	  <td width="33%"><span class="f_cB" id="msg14"></span><br /><br /></td>
  </tr>
  <tr>
	  <td align="right">管理员密码：<span class="f_cB">*</span></td>
	  <td ><input id="mpsw" type="text" name="mpsw"></td>
	  <td><span class="f_cB" id="msg15"></span><br /><br /></td>
  </tr>
  <tr>
  <td align="right">管理员姓名：<span class="f_cB">*</span></td>
  <td ><input id="mrealname" type="text" name="mrealname"></td>
  <td><span class="f_cB" id="msg13"></span><br /><br /></td>
  </tr>
   <tr>
  <td align="right">管理员电话：<span class="f_cB">*</span></td>
  <td ><input id="mtel" type="text" name="mtel"></td>
  <td><span class="f_cB" id="msg16"></span><br /><br /></td>
  </tr>
    <tr>
  <td align="right">管理员邮箱：<span class="f_cB">*</span></td>
  <td ><input id="mmail" type="text" name="mmail"></td>
  <td><span class="f_cB"  id="msg17"></span><br /><br /></td>
  </tr>
  
   <tr>
		<td colspan="3" align="center"><input id="tijiao" type="submit" value="添加"><br /><br /></td>
	</tr>
  </form>
  <tr>
    <td colspan="3" align="center"><br /><br /><br /><br /><br /><br /></td>  
  </tr>
 </table>
</body>
</html>
