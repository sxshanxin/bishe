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
       <th>后台 &gt;&gt;物品列表</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="6">物品列表</th>
	</tr>
    	<tr>
							<td width="66px" class="tdColor tdC">序号</td>
							<td width="175px" class="tdColor">商品名称</td>
							<td width="175px" class="tdColor">商品拍卖时间</td>
							<td width="175px" class="tdColor">商品价格</td>
							<td width="270px" class="tdColor">商品状态</td>
							<td width="125px" class="tdColor">操作</td>
						</tr>
						<%int i=0; %>
				<c:forEach items="${goods}" var="g" >
						<%i++; %>
						<tr height="40px">
							<td><%=i %></td>
							<td>${g.gname}</td>
							<td>${g.gdata}</td>
							<td>${g.gprice}</td>
							<td>${g.gstate}</td>
							
							<td><a href="<%=path%>/findbygid2.do?gid=${g.gid}">查看物品</a>
							<c:if test="${g.gstate=='禁止拍卖'}">
							    <a href="<%=path%>/delGood.do?gid=${g.gid}" onclick="return confirm('是否允许物品被拍卖？')">允许拍卖</a>
							</c:if>
							<c:if test="${g.gstate=='允许拍卖'}">
								<a href="<%=path%>/delGood2.do?gid=${g.gid}" onclick="return confirm('是否允许物品被拍卖？')">禁止拍卖</a>
							</c:if>
							</td>
						</tr>
					</c:forEach>
        </tbody>
 </table>
</body>
</html>