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
       <th>后台 &gt;&gt;管理员列表</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="7">管理员列表</th>
	</tr>
	<tr>
							<td width="66px" class="tdColor tdC">序号</td>
							<td width="205px" class="tdColor">管理员用户名</td>
							<td width="200px" class="tdColor">管理员密码</td>
							<td width="200px" class="tdColor">管理员真实姓名</td>
							<td width="270px" class="tdColor">管理员电话</td>
							<td width="330px" class="tdColor">管理员邮箱</td>
							<td width="45px" class="tdColor">操作</td>
						</tr>
						<%int i=0; %>
				<c:forEach items="${managers}" var="m" >
						<%i++; %>
						<tr height="40px">
							<td><%=i %></td>
							<td>${m.mname}</td>
							<td>${m.mpsw}</td>
							<td>${m.mrealname}</td>
							<td>${m.mtel}</td>
							<td>${m.mmail}</td>
							<td>
							<c:if test="${m.mid!=1}">
							<a href="<%=path%>/deleteManager.do?sid=${m.mid}" onclick="return confirm('确定删除管理员？')">删除</a></td>
							</c:if>
						</tr>
					</c:forEach>
        </tbody>
 </table>
</body>
</html>
