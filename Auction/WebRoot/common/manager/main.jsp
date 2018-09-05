<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HTML><HEAD><TITLE>网站管理系统 后台 后台frame框架模板 thinkCSS</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<SCRIPT language=JavaScript>
  window.self.focus();
</SCRIPT>
<frameset rows="80,*" cols="*" frameborder="no" border="0" framespacing="0" >
<frame src="common/manager/mtop.jsp" scrolling="No" noresize="noresize"  />
<frameset border=0 frameSpacing=0 frameBorder=0 cols=160,*>
<frame name="menu"  src="common/manager/mleft.jsp" scrolling=yes>
<frame name="main"  src="common/manager/mright.jsp" scrolling=yes>

<NOFRAMES></NOFRAMES>

</frameset></frameset>
</HTML>