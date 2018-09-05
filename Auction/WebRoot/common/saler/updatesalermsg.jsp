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
		if(checkmtel()&&checkmmail()){
			$("#addstu").attr("action","<%=path%>/updateSaler.do");
			return true;
		}
			$("#addstu").attr("action","javascript:void(0)");
			return false;
	}
	$(function(){
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
<body>
	<table class="navi" cellspacing="1" align="center" border="0">
  <tbody>
    <tr>
       <th>后台 &gt;&gt; 修改个人信息</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="2">修改个人信息</th>
		<th ><a href="<%=path%>/salermsg.do"><button>返回</button></a></th>
	</tr>
	<form id="addstu"  method="post" style="font-size: 16px">
   <tr>
  <td align="right" width="33%">商家真实姓名：</td>
	  <td width="33%">${user.srealname}</td>
	  <td width="33%"><br /><br /></td>
  </tr>
  <tr>
	  <td align="right">商家账号：</td>
	  <td >${user.sname}</td>
	  <td><br /><br /></td>
  </tr>
  <tr>
  <td align="right">商家身份证号码：</td>
  <td >${user.scode}</td>
  <td><br /><br /></td>
  </tr>
  <form id="addstu"  method="post" style="font-size: 16px">
   <tr>
  <td align="right">商家电话：<span class="f_cB">*</span></td>
  <td ><input id="mtel" type="text" name="mtel"></td>
  <td><span class="f_cB" id="msg16"></span><br /><br /></td>
  </tr>
    <tr>
  <td align="right">商家邮箱：<span class="f_cB">*</span></td>
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
