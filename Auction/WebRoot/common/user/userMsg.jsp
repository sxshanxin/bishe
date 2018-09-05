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
<link rel="stylesheet" href="images/private.css" type="text/css"></link>
</head>
<body>
<table class="navi" cellspacing="1" align="center" border="0">
  <tbody>
    <tr>
       <th>后台 &gt;&gt; 个人信息</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="2">个人信息</th>
	</tr>
     	  <tr>
  <td width="16%" align="right">用户真实姓名：：&nbsp;</td>
  <td width="76%"><font color="#FF0000"><strong>
    	</p></strong></font>${user.urealname}</td>
  </tr>
       	  <tr>
  <td align="right">用户账号：&nbsp;</td>
  <td> ${user.uname}</td>
  </tr>
  	  <tr>
  <td width="16%" align="right">用户电话：&nbsp;</td>
  <td width="76%">${user.utel}</td>
  </tr>
  <tr>
  <td width="16%" align="right">用户性别：&nbsp;</td>
  <td width="76%">${user.usex}</td>
  </tr>
   <tr>
  <td width="16%" align="right">出生年月：&nbsp;</td>
  <td width="76%">${user.ubirthday}</td>
  </tr>
    <tr>
  <td width="16%" align="right">用户电话：&nbsp;</td>
  <td width="76%">${user.utel}</td>
  </tr>
   <tr>
  <td width="16%" align="right">用户状态：&nbsp;</td>
  <td width="76%">${user.ustate}</td>
  </tr>
   <tr>
  <td width="16%" align="right">用户资金：&nbsp;</td>
  <td width="76%">${user.umoney}</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><br /><br /><br /><br /><br /><br /><br /><br /><br /></td>  
  </tr>
 </table>
</body>
</html>