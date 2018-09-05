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
       <th>后台 &gt;&gt;商家列表</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
 	<tr>
		<th colspan="8">商家列表</th>
	</tr>
    	<tr>
				<td width="66px" class="tdColor tdC">序号</td>
				<td width="205px" class="tdColor">商家用户名</td>
				<td width="200px" class="tdColor">商家密码</td>
				<td width="200px" class="tdColor">商家真实姓名</td>
				<td width="270px" class="tdColor">商家电话</td>
				<td width="200px" class="tdColor">商家邮箱</td>
				<td width="200px" class="tdColor">商家状态</td>
				<td width="175px" class="tdColor">操作</td>
		</tr>
        	<%int i=0; %>
        <c:forEach items="${salers}" var="s" varStatus="is">
			<tr>
				<%i++; %>
				<td><%=i %></td>
							<td>${s.sname}</td>
							<td>${s.spsw}</td>
							<td>${s.srealname}</td>
							<td>${s.stel}</td>
							<td>${s.smail}</td>
							<td>${s.sstate}</td>
							<td>
								<c:if test="${s.sstate=='禁止拍卖'}">
									<a href="<%=path%>/jihuosaler.do?1=1&sid=${s.sid}" 
onclick="return confirm('确定允许该商家拍卖？')" >允许</a>
								</c:if>
								<c:if test="${s.sstate=='允许拍卖'}">
									<a href="<%=path%>/delSaler.do?1=1&sid=${s.sid}" 
onclick="return confirm('确定禁止该商家拍卖？')">禁止</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
 </table>
</body>
</html>
