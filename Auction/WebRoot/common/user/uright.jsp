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
</head>
<body>
<table class="navi" cellspacing="1" align="center" border="0">
  <tbody>
    <tr>
       <th>后台 &gt;&gt; 系统后台首页</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="2">系统首页</th>
	</tr>
     	  <tr>
  <td width="16%" align="right">欢迎：&nbsp;</td>
  <td width="76%">亲爱的<font color="#FF0000"><strong>${user.urealname}</strong></font>，欢迎您回到您的网站管理后台！（点击）左边-管理对应网站信息！</td>
  </tr>
       	  <tr>
  <td align="right">管理：&nbsp;</td>
  <td> 你可以通过此后台对系统进行管理。</td>
  </tr>
  	  <tr>
  <td width="16%" align="right">疑问：&nbsp;</td>
  <td width="76%">如果有什么疑问请致电：${user.utel}</td>
  </tr>
  <tr>
  <td width="16%" align="right">服务：&nbsp;</td>
  <td width="76%">暂无</td>
  </tr>
  <tr>
    <td colspan="3" align="center"><br /><br /><br /><br /><br /><br /><br /><br /><br /></td>  
  </tr>
 </table>
</body>
</html>