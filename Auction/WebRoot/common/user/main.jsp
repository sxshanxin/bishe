﻿<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
</head>
<frameset rows="100,*" cols="*" scrolling="No" framespacing="0"frameborder="no" border="0"> 
	<frame src="common/user/utop.jsp"name="headmenu" id="mainFrame" title="mainFrame">
	</frame>
	<frameset rows="100*" cols="220,*" scrolling="No"framespacing="0" frameborder="no" border="0"> 
		<frame src="common/user/uleft.jsp" name="leftmenu" id="mainFrame" title="mainFrame"></frame>
		<frame src="common/user/uright.jsp" name="main" scrolling="yes" noresize="noresize"id="rightFrame" title="rightFrame"></frame>
	</frameset>
</frameset>
</html>