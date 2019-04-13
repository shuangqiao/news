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
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>show</title>
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
<body class="user-select single">
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
					<li><a data-cont="情感故事" title="女性健康" href="${pageContext.request.contextPath}/list/1/1">情感故事</a></li>
					<li><a data-cont="亲密关系" title="亲密关系" href="${pageContext.request.contextPath}/list/3/1">亲密关系</a></li>
					<li><a data-cont="青春期" title="青春期" href="${pageContext.request.contextPath}/list/6/1" >青春期</a></li>
					<li><a data-cont="健康生活" title="健康生活" href="${pageContext.request.contextPath}/list/4/1" >健康生活</a></li>
					<li><a data-cont="冷知识" title="冷知识" href="${pageContext.request.contextPath}/list/5/1" >冷知识</a></li>
					<li><a data-cont="历史上的今天" title="历史上的今天" href="${pageContext.request.contextPath}/list/7/1" >历史上的今天</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<section class="container">
	<div class="content-wrap">
		<div class="content">
			<header class="article-header">
				<h1 class="article-title"><a href="#" title="${article.title}" >${article.title}</a></h1>
				<div class="article-meta"> <span class="item article-meta-time">
	  <time class="time" data-toggle="tooltip" data-placement="bottom" title=""><i class="glyphicon glyphicon-time"></i> <fmt:formatDate pattern="yyyy-MM-dd" value="${article.createdTime }"></fmt:formatDate></time>
	  </span> <span class="item article-meta-source" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="来源：木庄网络博客"><i class="glyphicon glyphicon-globe"></i> 木庄网络博客</span> <span class="item article-meta-category" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="MZ-NetBlog主题"><i class="glyphicon glyphicon-list"></i> <a href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题</a></span> <span class="item article-meta-views" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="浏览量：219"><i class="glyphicon glyphicon-eye-open"></i> 219</span> <span class="item article-meta-comment" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="评论量"><i class="glyphicon glyphicon-comment"></i> 4</span> </div>
			</header>
			<article class="article-content">
				<p><img data-original="/images/pc/201610181557196870.jpg" src="/images/pc/201610181557196870.jpg" alt="" /></p>
				<p>${article.words}</p>
				<%--<pre class="prettyprint lang-cs">代码示例：
	public static double JieCheng(int number)
	{
		if (number == 0)
		{
			return 0;
		}

		//初始值必须设置为1
		double result = 1; 

		for (int i = number; i &gt;= 1; i--)
		{
			result = result*i;
		}
		return result;
	}</pre>--%>
				<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_tieba" data-cmd="tieba" title="分享到百度贴吧"></a><a href="#" class="bds_sqq" data-cmd="sqq" title="分享到QQ好友"></a></div>

				<script>                  window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": false, "bdPic": "", "bdStyle": "1", "bdSize": "32" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api//js/pc/share.js?v=0.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
			</article>
			<div class="article-tags">标签：<a href="#list/2/" rel="tag" >DTcms博客</a><a href="#list/3/" rel="tag" >木庄网络博客</a><a href="#list/4/" rel="tag" >独立博客</a><a href="#list/5/" rel="tag" >修复优化</a>
			</div>
			<div class="relates">
				<div class="title">
					<h3>相关推荐</h3>
				</div>
				<ul>
				<c:forEach items="${RAND_LIST}" var="rand" varStatus="vs">
					<li>
						<a href="${pageContext.request.contextPath}/detail/${rand.id}/.html" title="${rand.title}" target="_blank">${rand.title}</a>
					</li>
				</c:forEach>
				</ul>
			</div>
			<div class="title" id="comment">
				<h3>评论</h3>
			</div>
			<div id="respond">
				<form id="comment-form" name="comment-form" action="" method="POST">
					<div class="comment">
						<input name=""  class="form-control" size="22" placeholder="您的昵称（必填）" maxlength="15" autocomplete="off" tabindex="1" type="text">
						<input name="" class="form-control" size="22" placeholder="您的网址或邮箱（非必填）" maxlength="58" autocomplete="off" tabindex="2" type="text">
						<div class="comment-box">
							<textarea placeholder="您的评论或留言（必填）" name="comment-textarea" id="comment-textarea" cols="100%" rows="3" tabindex="3"></textarea>
							<div class="comment-ctrl">
								<div class="comment-prompt" style="display: none;"> <i class="fa fa-spin fa-circle-o-notch"></i> <span class="comment-prompt-text">评论正在提交中...请稍后</span> </div>
								<div class="comment-success" style="display: none;"> <i class="fa fa-check"></i> <span class="comment-prompt-text">评论提交成功...</span> </div>
								<button type="submit" name="comment-submit" id="comment-submit" tabindex="4">评论</button>
							</div>
						</div>
					</div>
				</form>

			</div>
			<div id="postcomments">
				<ol id="comment_list" class="commentlist">
					<li class="comment-content"><span class="comment-f">#2</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">木庄网络博客</a><span class="time">(2016/10/28 11:41:03)</span><br>不错的网站主题，看着相当舒服</p></div></li>
					<li class="comment-content"><span class="comment-f">#1</span><div class="comment-main"><p><a class="address" href="#" rel="nofollow" target="_blank">木庄网络博客</a><span class="time">(2016/10/14 21:02:39)</span><br>博客做得好漂亮哦！</p></div></li></ol>
			</div>
		</div>
	</div>
	<aside class="sidebar">
		<div class="fixed">
			<div class="widget widget-tabs">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" draggable="false">统计信息</a></li>
					<li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" draggable="false">联系站长</a></li>
				</ul>
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane contact active" id="notice">
						<div class="tagcloud fl">
							<c:forEach items="${KEY_WORDS}" var="list" varStatus="vs">
								<a href="#">${list.word}</a>
							</c:forEach>
						</div>
					<%--	<h2>日志总数:
							888篇
						</h2>
						<h2>网站运行:
							<span id="sitetime">88天 </span></h2>--%>
					</div>
					<div role="tabpanel" class="tab-pane contact" id="contact">
						<h2>QQ:
							<a href="" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title="" draggable="false" data-original-title="QQ:577211782">577211782</a>
						</h2>
						<h2>Email:
							<a href="mailto:577211782@qq.com" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title="" draggable="false" data-original-title="Email:577211782@qq.com">577211782@qq.com</a></h2>
					</div>
				</div>
			</div>
			<div class="widget widget_search">
				<form class="navbar-form" action="/Search" method="post">
					<div class="input-group">
						<input type="text" name="keyword" class="form-control" size="35" placeholder="请输入关键字" maxlength="15" autocomplete="off">
						<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
				</form>
			</div>
		</div>
		<div class="widget widget_hot">
			<h3>最新评论文章</h3>
			<ul>
				<c:forEach items="${RANGE_LIST}" var="list" varStatus="vs">
					<li>
						<a title="${list.title}" href="${pageContext.request.contextPath}/detail/${list.id}/.html" target="_blank">
						<span class="thumbnail">
							<img class="thumb" data-original="${list.picture}" src="${list.picture}" alt="${list.title}" style="display: block;">
						</span>
						<span class="text">${list.title}</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
								<fmt:formatDate pattern="yyyy-MM-dd" value="${article.createdTime }"></fmt:formatDate>
						</span>
						<span class="muted"><i class="glyphicon glyphicon-eye-open"></i>${list.hits}</span>
						</a>
					</li>
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
		<p>Copyright © 2016-2019 .鄂ICP备15020852号-1<a href="http://www.cssmoban.com/" target="_blank" title="情感夜话">情感夜话
		</a> </p>
	</div>
	<div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="/js/pc/bootstrap.min.js"></script>
<script src="/js/pc/jquery.ias.js"></script>
<script src="/js/pc/scripts.js"></script>
<script type="text/javascript" src="/js/pc/tagcloud.js"></script>
<script type="text/javascript">
    /*3D标签云*/
    tagcloud({
        selector: ".tagcloud",  //元素选择器
        fontsize: 16,       //基本字体大小, 单位px
        radius: 100,         //滚动半径, 单位px
        mspeed: "normal",   //滚动最大速度, 取值: slow, normal(默认), fast
        ispeed: "normal",   //滚动初速度, 取值: slow, normal(默认), fast
        direction: 135,     //初始滚动方向, 取值角度(顺时针360): 0对应top, 90对应left, 135对应right-bottom(默认)...
        keep: false          //鼠标移出组件后是否继续随鼠标滚动, 取值: false, true(默认) 对应 减速至初速度滚动, 随鼠标滚动
    });
</script>
</body>
</html>

