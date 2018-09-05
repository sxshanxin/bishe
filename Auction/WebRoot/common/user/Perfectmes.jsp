<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script type="text/javascript" src="../../js/jquery-1.9.1.min.js"></script>
  	<script type="text/javascript">
	function checkmtel(){
				if($("#utel").val()!=""&&$("#utel").val()!=null){
					if(!/^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/.test($("#utel").val())){
						$("#msg16").html("电话格式不正确");
						return false
					}else{
					return true;
					}
				}else{
					$("#msg16").html("电话不能为空");
					return false;
				}
	}
		function checkdate(){
				if($("#date").val()!=""&&$("#date").val()!=null){
					if(!/((((19|20)\d{2})-(0?(1|[3-9])|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/.test($("#date").val())){
						$("#msg17").html("日期错误");
						return false
					}else{
					return true;
					}
				}else{
					$("#msg17").html("日期不能为空");
					return false;
				}
	}
	function check(){
		if(checkmtel()&&checkdate()){
			$("#addstu").attr("action","<%=path%>/updateuser.do");
			return true;
		}
			$("#addstu").attr("action","javascript:void(0)");
			return false
	}
	$(function(){
		$("#utel").blur(function(){
			checkmtel();
		});
		$("#utel").focus(function(){
			$("#msg16").html("");
		});
		$("#date").blur(function(){
			checkdate();
		});
		$("#date").focus(function(){
			$("#msg17").html("");
		});
		$(":submit").focus(function(){
			check();
		});
	})
	
  	</script>
  </head>
  <body>
	<table class="navi" cellspacing="1" align="center" border="0">
  <tbody>
    <tr>
       <th>后台 &gt;&gt; 个人信息完善</th>
	</tr>
 </tbody>
</table>
	<br />
 <table border="0" cellspacing="1" align="center" class="form">
	<tr>
		<th colspan="2">完善信息</th>
		<th ><a href="<%=path%>/userMsg1.do"><button>返回</button></a></th>
	</tr>
	<tr>
		<td colspan="3"><p>"<span class="f_cB" >*</span>"号为必填项目</p></td>
	</tr>
	<form id="addstu"  method="post" style="font-size: 16px">
   <tr>
  <td align="right" width="33%">性别：<span class="f_cB">*</span></td>
	  <td width="33%"><c:choose>
            <c:when test="${user.usex=='男'}">
                <input type="radio" name="usex" value="男" checked="checked" 

id="nan">男
          		
                <input type="radio" name="usex" value="女" id="nv">女
              
            </c:when>
            <c:otherwise>
                <input type="radio" name="usex" value="男"  id="nan">男
      
                <input type="radio" name="usex" value="女" checked="checked" 

id="nv">女
                
            </c:otherwise>
            </c:choose><br /><br /></td>
            <td><br /><br /></td>
  </tr>
  
  <td align="right">用户电话：<span class="f_cB">*</span></td>
  <td ><input id="utel" type="text" name="utel"></td>
  <td><span class="f_cB" id="msg16"></span><br /><br /></td>
  </tr>
    <tr>
  <td align="right">出生日期：<span class="f_cB">*</span></td>
  <td ><input id="date" type="text" name="date"></td>
  <td><span class="f_cB" id="msg17"></span><br /><br /></td>
  </tr>
  
   <tr>
		<td colspan="3"><input id="tijiao" type="submit" value="添加"><br /><br /></td>
	</tr>
  </form>
  <tr>
    <td colspan="3" align="center"><br /><br /><br /><br /><br /><br /></td>  
  </tr>
 </table>
  </body>
</html>
