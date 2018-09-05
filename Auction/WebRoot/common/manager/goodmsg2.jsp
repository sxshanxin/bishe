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
       <th>后台 &gt;&gt; 物品信息</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="2">系统首页</th>
	</tr>
	<tr>
		<td colspan="2"><img src="<%=path%>/${good.gimg}"><br /></td>
	</tr>
     	  <tr>
  <td width="16%" align="right">物品名：&nbsp;</td>
  <td width="76%"><font color="#FF0000"><strong>
    	</p></strong></font>${good.gname}</td>
  </tr>
       	  <tr>
  <td align="right">底价：：&nbsp;</td>
  <td> ${good.gprice}</td>
  </tr>
  <tr>
  <td width="16%" align="right">最终成交：&nbsp;</td>
  <td width="76%"><c:if test="${good.gendprice==null}">未拍卖</c:if>
    			<c:if test="${good.gendprice!=null}">${good.gendprice}</td>
  </tr>
   <tr>
  <td width="16%" align="right">拍卖时间：&nbsp;</td>
  <td width="76%">${good.gdata}</td>
  </tr>
   <tr>
  <td width="16%" align="right">拍卖信息：&nbsp;</td>
  <td width="76%">${good.gthing}</td>
  </tr>
   <tr>
  <td width="16%" align="right">状态：&nbsp;</td>
  <td width="76%">${good.gstate}</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><br /><br /><br /><br /><br /><br /><br /><br /><br /></td>  
  </tr>
 </table>
</body>
</html>