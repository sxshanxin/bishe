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
	function checkgname(){
		if($("#gname").val()!=""&&$("#gname").val()!=null){
			return true;
		}else{
			$("#msg001").html("物品名不能为空");
			return false;
		}
	}
	function checkgthing(){
		if($("#gthing").val()!=""&&$("#gthing").val()!=null){
			return true;
		}else{
			$("#msg003").html("物品描述不能为空");
			return false;
		}
	}
	function checkgprice(){
		if($("#gprice").val()!=""&&$("#gprice").val()!=null){
			if(/^[0-9]*$/.test($("#gprice").val())){
				return true
			}
			$("#msg002").html("请输入正确的物品底价");
			return false;
		}else{
			$("#msg002").html("物品底价不能为空");
			return false;
		}
	}
	function checkgimg(){
		if($("#gimg").val()!=""&&$("#gimg").val()!=null){
			return true;
		}else{
			$("#msg004").html("物品图片不能为空");
			return false;
		}
	}
	function check(){
		if(checkgname()&&checkgthing()&&checkgprice()&&checkgimg()){
			$("#addgood").attr("action","<%=path %>/addGood.do");
			return true;
		}else{
			$("#addgood").attr("action","javascript:void(0)");
			return false;
		}
	}
	$(function(){
		$("#gname").blur(function(){
			checkgname();
		});
		$("#gname").focus(function(){
			$("#msg001").html("");
		});
		$("#gthing").blur(function(){
			checkgthing();
		});
		$("#gthing").focus(function(){
			$("#msg003").html("");
		});
		$("#gprice").blur(function(){
			checkgprice();
		});
		$("#gprice").focus(function(){
			$("#msg002").html("");
		});
		$("#gimg").blur(function(){
			checkgimg();
		});
		$("#gimg").focus(function(){
			$("#msg004").html("");
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
       <th>后台 &gt;&gt; 物品添加</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="3">添加拍卖物品</th>
	</tr>
	<tr>
		<td colspan="3"><p>"<span class="f_cB" >*</span>"号为必填项目</p></td>
	</tr>
	<form id="addgood"  method="post"  style="font-size: 16px" enctype="multipart/form-data">
   <tr>
  <td align="right" width="33%">&nbsp;&nbsp;物&nbsp; 品 &nbsp;名 ：<span class="f_cB">*</span></td>
	  <td width="33%"><input type="text" name="gname" id="gname"></td>
	  <td width="33%"><span id="msg001"></span><br /><br /></td>
  </tr>
  <tr>
	  <td align="right"> &nbsp;&nbsp;物 品 底 价 ：<span class="f_cB">*</span></td>
	  <td ><input type="text" name="gprice" id="gprice"></td>
	  <td><span id="msg002"></span><br /><br /></td>
  </tr>
  <tr>
  <td align="right">物品拍卖时间：<span class="f_cB">*</span></td>
  <td ><select name="gtime">
				<option value="2018-06-02 19:30:00">2018-06-02 19:00:00		
				<option value="2018-06-03 19:00:00">2018-06-03 19:00:00			
				<option value="2018-06-04 19:30:00">2018-06-04 19:00:00			
				<option value="2018-06-05 19:00:00">2018-06-05 19:00:00			
			</select><br /><br /></td>
  </tr>
   <tr>
  <td align="right"> &nbsp;&nbsp;物 品 描 述 ：<span class="f_cB">*</span></td>
  <td ><input type="text" name="gthing" id="gthing"></td>
  <td><span id="msg003"></span><br /><br /></td>
  </tr>
    <tr>
  <td align="right">上传物品图片：<span class="f_cB">*</span></td>
  <td ><input type="file" name="gimg" id="gimg"></td>
  <td><span id="msg004"></span><br /><br /></td>
  </tr>
  
      <tr>
  <td align="right">&nbsp; 物 品 状 态 ：<span class="f_cB">*</span></td>
  <td ><select name="gstate">
				<option value="禁止拍卖">禁止拍卖
			</select><br /><br /></td>
  </tr>
   <tr>
		<td colspan="3" align="center"><input type="submit" value="添加"><br /><br /></td>
	</tr>
  </form>
  <tr>
    <td colspan="3" align="center"><br /><br /><br /><br /><br /><br /></td>  
  </tr>
 </table>
  </body>
</html>
