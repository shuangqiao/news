<%--
  Created by IntelliJ IDEA.
  User: shuangqiao
  Date: 2017/2/23
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!doctype html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>list</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link rel="stylesheet" type="text/css" href="/css/pc/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/css/pc/nprogress.css">
	<link rel="stylesheet" type="text/css" href="/css/pc/style.css">
	<link rel="stylesheet" type="text/css" href="/css/pc/font-awesome.min.css">
	<link rel="apple-touch-icon-precomposed" href="/images/pc/icon.png">
	<link rel="shortcut icon" href="/images/pc/favicon.ico">
	<script src="/js/pc/jquery-2.1.4.min.js"></script>
	<script src="/js/pc/nprogress.js"></script>
	<script src="/js/pc/jquery.lazyload.min.js"></script>
	<!--[if gte IE 9]>
	<script src="/js/pc/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="/js/pc/html5shiv.min.js" type="text/javascript"></script>
	<script src="/js/pc/respond.min.js" type="text/javascript"></script>
	<script src="/js/pc/selectivizr-min.js" type="text/javascript"></script>
	<![endif]-->
	<!--[if lt IE 9]>
	<script>window.location.href='upgrade-browser.html';</script>
	<![endif]-->
</head>
<body class="user-select">
<header class="header">
	<nav class="navbar navbar-default" id="navbar">
		<div class="container">
			<div class="header-topbar hidden-xs link-border">
				<ul class="site-nav topmenu">
					<li><a href="#" >标签云</a></li>
					<li><a href="#" rel="nofollow" >读者墙</a></li>
					<li><a href="#" title="RSS订阅" >
						<i class="fa fa-rss">
						</i> RSS订阅
					</a></li>
				</ul>
				勤记录 懂分享</div>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar" aria-expanded="false"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<h1 class="logo hvr-bounce-in"><a href="#" title="木庄网络博客"><img src="/images/pc/201610171329086541.png" alt="木庄网络博客"></a></h1>
			</div>
			<div class="collapse navbar-collapse" id="header-navbar">
				<form class="navbar-form visible-xs" action="/Search" method="post">
					<div class="input-group">
						<input type="text" name="keyword" class="form-control" placeholder="请输入关键字" maxlength="20" autocomplete="off">
						<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a data-cont="情感夜话" title="情感夜话" href="${pageContext.request.contextPath}/">首页</a></li>
					<li><a data-cont="情感故事" title="女性健康" href="${pageContext.request.contextPath}/list/1/1.html">情感故事</a></li>
					<li><a data-cont="亲密关系" title="亲密关系" href="${pageContext.request.contextPath}/list/3/1.html">亲密关系</a></li>
					<li><a data-cont="青春期" title="青春期" href="${pageContext.request.contextPath}/list/6/1.html" >青春期</a></li>
					<li><a data-cont="健康生活" title="健康生活" href="${pageContext.request.contextPath}/list/4/1.html" >健康生活</a></li>
					<li><a data-cont="冷知识" title="冷知识" href="${pageContext.request.contextPath}/list/5/1.html" >冷知识</a></li>
					<li><a data-cont="历史上的今天" title="历史上的今天" href="${pageContext.request.contextPath}/list/7/1.html" >历史上的今天</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<section class="container">
	<div class="content-wrap">
		<div class="content">
			<div class="title">
				<h3 style="line-height: 1.3">MZ-NetBlog主题</h3>
			</div>
			<c:forEach items="${pageInfo.list}" var="list" varStatus="vs">
			<article class="excerpt excerpt-1"><a class="focus" href="${pageContext.request.contextPath}/detail/${list.id}.html" title="${list.title}" target="_blank" ><img class="thumb" data-original="/images/pc/201610181739277776.jpg" src="${pageContext.request.contextPath}/${list.picture}" alt="${list.title}"  style="display: inline;"></a>
				<header><a class="cat" href="${pageContext.request.contextPath}/detail/${list.id}.html"  target="_blank"
						   title="${list.title}" >${list.title}<i></i></a>
					<h2><a href="${pageContext.request.contextPath}/detail/${list.id}.html" title="${list.title}" target="_blank" >${list.title}</a></h2>
				</header>
				<p class="meta">
					<time class="time"><i class="glyphicon glyphicon-time"></i> <fmt:formatDate pattern="yyyy-MM-dd" value="${list.createdTime }"></fmt:formatDate></time>
					<span class="views"><i class="glyphicon glyphicon-eye-open"></i> ${list.hits}</span> <a
						class="comment"
																								 href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i> 4</a></p>
				<p class="note">${list.words}</p>
			</article>
			</c:forEach>

			<nav class="pagination" style="display: none;">
				<ul>
					<li class="prev-page"></li>
					<li class="active"><span>1</span></li>
					<li><a href="?page=2">2</a></li>
					<li class="next-page"><a href="?page=2">下一页</a></li>
					<li><span>共 2 页</span></li>
				</ul>
			</nav>
		</div>
	</div>
	<aside class="sidebar">
		<div class="fixed">
			<div class="widget widget_search">
				<form class="navbar-form" action="/Search" method="post">
					<div class="input-group">
						<input type="text" name="keyword" class="form-control" size="35" placeholder="请输入关键字" maxlength="15" autocomplete="off">
						<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
				</form>
			</div>
			<div class="widget widget_sentence">
				<h3>标签云</h3>
				<div class="widget-sentence-content">
					<ul class="plinks ptags">
						<li><a href="#list/67/" title="移动统计" draggable="false">移动统计 <span class="badge">1</span></a></li>
						<li><a href="#list/256/" title="404" draggable="false">404 <span class="badge">1</span></a></li>
						<li><a href="#list/252/" title="VS2010" draggable="false">VS2010 <span class="badge">1</span></a></li>
						<li><a href="#list/162/" title="杀毒软件" draggable="false">杀毒软件 <span class="badge">1</span></a></li>
						<li><a href="#list/133/" title="html标签" draggable="false">html标签 <span class="badge">1</span></a></li>
						<li><a href="#list/49/" title="循环" draggable="false">循环 <span class="badge">2</span></a></li>
						<li><a href="#list/22/" title="百度统计" draggable="false">百度统计 <span class="badge">2</span></a></li>
						<li><a href="#list/132/" title="sql" draggable="false">sql <span class="badge">6</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="widget widget_hot">
			<h3>最新评论文章</h3>
			<ul>
			<c:forEach items="${RANGE_LIST}" var="list" varStatus="vs">
							<li><a title="${list.title}" href="${pageContext.request.contextPath}/detail/${list.id}" ><span class="thumbnail">
			<img class="thumb" data-original="/images/pc/201610181739277776.jpg"
				 src="${pageContext.request.contextPath}/${list.picture}" alt="${list.title}"  style="display: block;">
			</span><span class="text">${list.title}</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
			<fmt:formatDate pattern="yyyy-MM-dd" value="${list.createdTime }"></fmt:formatDate>
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			</c:forEach>
			</ul>
		</div>
		<div class="widget widget_sentence">

			<a href="#" target="_blank" rel="nofollow" title="MZ-NetBlog主题" >
				<img style="width: 100%" src="/images/pc/ad.jpg" alt="MZ-NetBlog主题" ></a>

		</div>
		<div class="widget widget_sentence">

			<a href="#" target="_blank" rel="nofollow" title="专业网站建设" >
				<img style="width: 100%" src="/images/pc/201610241224221511.jpg" alt="专业网站建设" ></a>

		</div>
	</aside>
</section>
<footer class="footer">
	<div class="container">
		<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </p>
	</div>
	<div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="/js/pc/bootstrap.min.js"></script>
<script src="/js/pc/jquery.ias.js"></script>
<script src="/js/pc/scripts.js"></script>
</body>
</html>

