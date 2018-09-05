<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="images/private.css" type="text/css"></link></head>
<body>
<table class="navi" cellspacing="1" align="center" border="0">
  <tbody>
    <tr>
       <th>后台 &gt;&gt;用户列表</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="10">用户列表</th>
	</tr>
							<tr>
							<td width="66px" class="tdColor tdC">序号</td>
							<td width="105px" class="tdColor">姓名</td>
							<td width="100px" class="tdColor">用户名</td>
							<td width="100px" class="tdColor">密码</td>
							<td width="100px" class="tdColor">性别</td>
							<td width="100px" class="tdColor">出生年月</td>
							<td width="100px" class="tdColor">资金</td>
							<td width="100px" class="tdColor">电话</td>
							<td width="100px" class="tdColor">状态</td>
							<td width="100px" class="tdColor">操作</td>
						</tr>
						<%int i=0; %>
				<c:forEach items="${users}" var="u" >
						<%i++; %>
						<tr height="40px">
							<td><%=i %></td>
							<td>${u.urealname}</td>
							<td>${u.uname}</td>
							<td>${u.upsw}</td>
							<td>${u.usex}</td>
							<td>${u.ubirthday}</td>
							<td>${u.umoney}</td>
							<td>${u.utel}</td>
							<td>${u.ustate}</td>
							<td>
							<c:if test="${u.ustate=='激活'}">
								<a href="<%=path%>/dongjie.do?uid=${u.uid}" onclick="return confirm('确定冻结该用户？')">冻结</a>
							</c:if>
							<c:if test="${u.ustate=='冻结'}">
								<a href="<%=path%>/jihuo.do?uid=${u.uid}" onclick="return confirm('确定激活该用户？')">激活</a>
							</c:if>
								 
							</td>
						</tr>
					</c:forEach>
        </tbody>
 </table>
</body>
</html>
