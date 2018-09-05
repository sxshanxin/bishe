<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>left</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../../images/private.css" type="text/css" rel="stylesheet" />
<script language="JavaScript" type="text/javascript">
<!--
function menu_tree(meval)
{
  var left_n=eval(meval);
  if (left_n.style.display=="none"){ eval(meval+".style.display='';"); }
  else
  { eval(meval+".style.display='none';"); }
}
-->
</script>
</head>
<body>
<center>
<table class="menu" cellspacing="0">
		<tbody>
			<tr>
				<th onclick="javascript:menu_tree('left_1');" align="middle">≡ 系统首页 ≡</th>
			</tr>
			<tr id="left_1">
				<td>
					<table width="100%">
						<tbody>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="sright.jsp" target="main"> 系统首页</a></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<table class="menu" cellspacing="0">
		<tbody>
			<tr>
				<th onclick="javascript:menu_tree('left_2');" align="middle">≡ 个人信息管理 ≡</th>
			</tr>
			<tr id="left_2">
				<td>
					<table width="100%">
						<tbody>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path%>/salermsg.do" target="main">查看个人信息</a></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<table class="menu" cellspacing="0" style="margin-top:2px">
		<tbody>
			<tr>
				<th onclick="javascript:menu_tree('left_9');" align="middle">≡商品管理 ≡</th>
			</tr>
			<tr id="left_9">
				<td>
					<table width="100%">
						<tbody>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path%>/findMyGoods.do" target="main">查看商品</a></td>
							</tr>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path%>/common/saler/addGood.jsp" target="main">添加商品</a></td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</center>
</body>
</html>
