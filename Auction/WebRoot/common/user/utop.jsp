<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>头部</title>
   <LINK href="../../images/private.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="../../js/jquery-1.9.1.min.js"></script></head>
<body>
<div class="hds">
	<div class="lefs"><div class="logos">
			<img src="../../images/logo.gif" />
	</div>
<div class="tlts"><strong>欢迎使用后台管理系统 <br /> 欢迎您回来!</a></strong></div></div>
<div class="menu_top" target="_parent"><ul>
<li><script type="text/javascript">
    		var d=new Date();
    		var month=d.getMonth()+1;
    		var str="";
    		switch(d.getDay()){
    			case 0: str="星期日";
    			break;
    			case 1: str="星期一";
    			break;
    			case 2: str="星期二";
    			break;
    			case 3: str="星期三";
    			break;
    			case 4: str="星期四";
    			break;
    			case 5: str="星期五";
    			break;
    			case 6: str="星期六";
    			break;
    		}
    		document.write(d.getFullYear()+"-"+month+"-"+d.getDate()+"&nbsp;"+str);
    	</script>
<li><a onclick="return confirm('提示：您确定要退出系统吗？')" href="<%=path %>/logout.do"  target="_parent">退出后台</a></li>
</ul></div>
</div>
</body>
</html>