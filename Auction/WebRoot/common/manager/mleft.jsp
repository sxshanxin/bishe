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
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="mright.jsp" target="main"> 系统首页</a></td>
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
				<th onclick="javascript:menu_tree('left_2');" align="middle">≡ 拍卖商家管理 ≡</th>
			</tr>
			<tr id="left_2">
				<td>
					<table width="100%">
						<tbody>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path %>/showSalers.do" target="main">商家管理</a></td>
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
				<th onclick="javascript:menu_tree('left_9');" align="middle">≡ 会员管理 ≡</th>
			</tr>
			<tr id="left_9">
				<td>
					<table width="100%">
						<tbody>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path %>/findUsers.do" target="main">查看会员</a></td>
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
				<th onclick="javascript:menu_tree('left_8');" align="middle">≡ 物品管理 ≡</th>
			</tr>
			<tr id="left_8">
				<td>
					<table width="100%">
						<tbody>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path %>/findGoods.do" target="main" >查看商品</a></td>
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
				<th onclick="javascript:menu_tree('left_10');" align="middle">≡ 其它信息管理≡</th>
			</tr>
			<tr id="left_10">
				<td>
					<table width="100%">
						<tbody>
						<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path %>/common/manager/addManager.jsp" target="main">添加管理员</a></td>
							</tr>
							<tr>
								<td><img src="../../images/menu.gif" align="absmiddle" border="0" />&nbsp;<a href="<%=path %>/managerList.do" target="main" >管理员列表</a></td>
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
