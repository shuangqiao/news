<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/7
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="/css/pc/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/pc/nprogress.css">
    <link rel="stylesheet" type="text/css" href="/css/pc/style.css">
    <link rel="stylesheet" type="text/css" href="/css/pc/font-awesome.min.css">
    <link rel="apple-touch-icon-precomposed" href="/images/pc/icon.png">
    <link rel="shortcut icon" href="/images/pc/favicon.ico">
    <script type="text/javascript" src="/js/pc/tagcloud.js"></script>

    <style type="text/css">
        .fl{ float: left; }
        .fr{ float: right; }
        .wrapper{ width: 1200px; height: 300px; margin: 0 auto; }
        .wrapper p{ padding-top: 150px; line-height: 27px; color: #999; font-size: 14px; text-align: center;  }
        .tagcloud { position: relative; margin-top:-150px; }
        .tagcloud a{ position: absolute;  top: 0; left: 0;  display: block; padding: 11px 30px; color: #333; font-size: 16px; border: 1px solid #e6e7e8; border-radius: 18px; background-color: #f2f4f8; text-decoration: none; white-space: nowrap;
            -o-box-shadow: 6px 4px 8px 0 rgba(151,142,136,.34);
            -ms-box-shadow: 6px 4px 8px 0 rgba(151,142,136,.34);
            -moz-box-shadow: 6px 4px 8px 0 rgba(151,142,136,.34);
            -webkit-box-shadow: 6px 4px 8px 0 rgba(151,142,136,.34);
            box-shadow: 6px 4px 8px 0 rgba(151,142,136,.34);
            -ms-filter:"progid:DXImageTransform.Microsoft.Shadow(Strength=4,Direction=135, Color='#000000')";/*兼容ie7/8*/
            filter: progid:DXImageTransform.Microsoft.Shadow(color='#969696', Direction=125, Strength=9);
            /*strength是阴影大小，direction是阴影方位，单位为度，可以为负数，color是阴影颜色 （尽量使用数字）使用IE滤镜实现盒子阴影的盒子必须是行元素或以行元素显示（block或inline-block;）*/
        }
        .tagcloud a:hover{ color: #3385cf; }
    </style>
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
                情感故事 心灵港湾</div>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar" aria-expanded="false"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <h1 class="logo hvr-bounce-in"><a href="#" title="情感夜话"><img src="/images/pc/201610171329086541.png" alt="情感夜话"></a></h1>
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
                    <li><a data-cont="情感夜话" title="情感夜话" href="/">首页</a></li>
                    <li><a data-cont="女性健康" title="女性健康" href="/list/1/1">女性健康</a></li>
                    <li><a data-cont="男性健康" title="男性健康" href="/list/2/1">男性健康</a></li>
                    <li><a data-cont="两性关系" title="两性关系" href="/list/3/1">两性关系</a></li>
                    <li><a data-cont="健康生活" title="健康生活" href="/list/4/1" >健康生活</a></li>
                    <li><a data-cont="冷知识" title="冷知识" href="/list/5/1" >冷知识</a></li>
                    <li><a data-cont="青春期" title="青春期" href="/list/6/1" >青春期</a></li>
                    <li><a data-cont="历史上的今天" title="历史上的今天" href="/list/7/1" >历史上的今天</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<section class="container">
    <div class="content-wrap">
        <div class="content">
            <div id="focusslide" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#focusslide" data-slide-to="0" class="active"></li>
                    <li data-target="#focusslide" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <a href="#" target="_blank" title="木庄网络博客源码" >
                            <img src="/images/pc/201610181557196870.jpg" alt="木庄网络博客源码" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href="#" target="_blank" title="专业网站建设" >
                            <img src="/images/pc/201610241227558789.jpg" alt="专业网站建设" class="img-responsive"></a>
                    </div>
                </div>
                <a class="left carousel-control" href="#focusslide" role="button" data-slide="prev" rel="nofollow"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">上一个</span> </a> <a class="right carousel-control" href="#focusslide" role="button" data-slide="next" rel="nofollow"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">下一个</span> </a> </div>
            <article class="excerpt-minic excerpt-minic-index">
                <h2><span class="red">【推荐】</span><a target="_blank" href="#" title="用DTcms做一个独立博客网站（响应式模板）" >用DTcms做一个独立博客网站（响应式模板）</a>
                </h2>
                <p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
            </article>
            <div class="title">
                <h3>最新发布</h3>
                <div class="more">
                    <a href="#" title="欢迎您" >情感夜话，情感与心灵的港湾</a>
                </div>
            </div>
            <c:forEach items="${RANGE_LIST}" var="list" varStatus="vs">
            <article class="excerpt excerpt-1" style="">
                <a class="focus" href="#" title="${list.title}" target="_blank" ><img class="thumb" data-original="/images/pc/201610181739277776.jpg" src="/images/pc/201610181739277776.jpg" alt="${list.title}"  style="display: inline;"></a>
                <header><a class="cat" href="#" title="MZ-NetBlog主题" >${list.categoryName}<i></i></a>
                    <h2><a href="#" title="${list.title}" target="_blank" >${list.title}</a>
                    </h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> ${list.createdTime}</time>
                    <span class="views"><i class="glyphicon glyphicon-eye-open"></i> ${list.hits}</span> <a class="comment" href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i> 4</a>
                </p>
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
    <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
    <aside class="sidebar">
        <div class="fixed">
            <div class="widget widget-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >统计信息</a></li>
                    <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" >联系站长</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane contact active" id="notice">
                        <div class="tagcloud fl">
                    <c:forEach items="${KEY_WORDS}" var="list" varStatus="vs">
                            <a href="#">${list.word}</a>
                    </c:forEach>
                        </div>
                        <%--<h2>日志总数:
                            888篇
                        </h2>
                        <h2>网站运行:
                            <span id="sitetime">88天 </span></h2>--%>
                    </div>
                    <div role="tabpanel" class="tab-pane contact" id="contact">
                        <table>
                            <tr>
                                <td>公众号</td>
                                <td>小程序</td>
                            </tr>
                            <tr>
                                <td><img src=""/></td>
                                <td><img src=""/></td>
                            </tr>
                        </table>
                       <%-- <h2>QQ:
                            <a href="" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title=""  data-original-title="QQ:"></a>
                        </h2>
                        <h2>Email:
                            <a href="#" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title=""  data-original-title="#"></a></h2>--%>
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
            <h3>精彩推荐</h3>
            <ul>
            <c:forEach items="${RANGE_LIST}" var="list" varStatus="vs">
                <li><a title="${list.title}" href="//detail/${list.id}" ><span class="thumbnail">
				<img class="thumb" data-original="/${list.picture}" src="/images/pc/201610181739277776.jpg"
                     alt="${list.title}"
                     style="display: block;">
			</span><span class="text">${list.title}</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				<fmt:formatDate pattern="yyyy-MM-dd" value="${list.createdTime }"></fmt:formatDate>
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>${list.hits}</span></a></li>
            </c:forEach>
            </ul>
        </div>
        <div class="widget widget_sentence">
            <a href="#" target="_blank" rel="nofollow" title="专业网站建设" >
                <img style="width: 100%" src="/images/pc//201610241224221511.jpg" alt="专业网站建设" ></a>
        </div>
        <div class="widget widget_sentence">
            <a href="#" target="_blank" rel="nofollow" title="MZ-NetBlog主题" >
                <img style="width: 100%" src="/images/pc/ad.jpg" alt="MZ-NetBlog主题" ></a>
        </div>
        <div class="widget widget_sentence">
            <h3>友情链接</h3>
            <div class="widget-sentence-link">
                <a href="#" title="网站建设" target="_blank" >网站建设</a>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </aside>
</section>
<footer class="footer">
    <div class="container">
        <p>Copyright © 2016-2019 .鄂ICP备15020852号-1</p>
    </div>
    <div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="/js/pc/bootstrap.min.js"></script>
<script src="/js/pc/jquery.ias.js"></script>
<script src="/js/pc/scripts.js"></script>

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

