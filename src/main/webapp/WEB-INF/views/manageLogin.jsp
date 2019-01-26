<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>桥帮主后台管理系统</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/manage/amazeui.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/manage/app.css">
</head>
<body>
<div class="am-g myapp-login">
	<div class="myapp-login-bg">
		 <div class="myapp-login-logo">
		 	<i class="am-icon-stumbleupon"></i>
		 </div>
		 <div class="am-u-sm-10 myapp-login-form">
		 	<form class="am-form">
			  <fieldset>
		
			    <div class="am-form-group">

			      <input type="username" class="username" id="doc-ipt-email-1"  placeholder="请输入用户名">
			    </div>

			    <div class="am-form-group">
			     
			      <input type="password" class="password" id="doc-ipt-pwd-1"  placeholder="请输入密码">
			    </div>
			    <p><button onclick="toLogin()" class="am-btn am-btn-default">Login</button></p>
			    <div class="login-text">
			    	Forgot Password?
			    </div>
			  </fieldset>
			</form>
		 </div>
	</div>
</div>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="js/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
<script>
function toLogin(){
    var password = $(".password").val();
    var username = $(".username").val();
    if(username==''||username==null){
        $(".username").html("username为空！");
    }else{
    $.ajax({
        type : 'POST',
        url : '${pageContext.request.contextPath}/manage/checkPasswd',
        data : {
        	username : username,
            password : password,
        },
        success : function(data) {
            if(data=='1'){
                window.location.href = '${getPageHost}/gustBook/list/1';
            }else{
           $("#gustWarning").html("留言为空！");
            }
        },
        error : function() {
            console.log("错了");
        }
    })
    }
}
</script>
</body>
</html>