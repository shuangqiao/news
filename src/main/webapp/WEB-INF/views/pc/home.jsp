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
    <title>欢迎来到 - 情感夜话</title>
    <meta name="keywords" content="情感，夜话，青春，两性">
    <meta name="description" content="情感夜话">
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
    <script src="/js/pc/html5shiv.min.js" type="text/javascript"></script>
    <script src="/js/pc/respond.min.js" type="text/javascript"></script>
    <script src="/js/pc/selectivizr-min.js" type="text/javascript"></script>
    <script src="/js/pc/bootstrap.min.js"></script>
    <script src="/js/pc/jquery.ias.js"></script>
    <script src="/js/pc/scripts.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script>window.location.href='upgrade-browser.html';</script>
    <![endif]-->
</head>
<body class="user-select" style="background-color: pink">
<header class="header">
    <nav class="navbar navbar-default" id="navbar" style="background-color: pink">
        <div class="container">
            <div class="header-topbar hidden-xs link-border">
                <%--<ul class="site-nav topmenu">
                    <li><a href="#" >标签云</a></li>
                    <li><a href="#" rel="nofollow" >读者墙</a></li>
                    <li><a href="#" title="RSS订阅" >
                        <i class="fa fa-rss">
                        </i> RSS订阅
                    </a></li>
                </ul>--%>
                情感故事 心灵港湾</div>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar" aria-expanded="false"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <h1 class="logo hvr-bounce-in"><a href="#" title="情感夜话"><%--<img src="/images/pc/201610171329086541.png" alt="情感夜话">--%></a></h1>
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
                    <li><a data-cont="情感夜话" target="_blank" title="情感夜话" href="${pageContext.request.contextPath}/">首页</a></li>
                    <li><a data-cont="情感故事" target="_blank" title="女性健康" href="${pageContext.request.contextPath}/list/1/1.html">情感故事</a></li>
                    <li><a data-cont="青春期" target="_blank" title="亲密关系" href="${pageContext.request.contextPath}/list/2/1.html">青春期</a></li>
                    <li><a data-cont="天下奇闻" target="_blank" title="青春期" href="${pageContext.request.contextPath}/list/3/1.html" >天下奇闻</a></li>
                    <li><a data-cont="冷知识" target="_blank" title="冷知识" href="${pageContext.request.contextPath}/list/4/1.html" >冷知识</a></li>
                    <li><a data-cont="历史上的今天" target="_blank" title="历史上的今天" href="${pageContext.request.contextPath}/list/5/1.html" >历史上的今天</a></li>
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
                            <img src="${pageContext.request.contextPath}/images/pc/m1.jpg" alt="木庄网络博客源码" class="img-responsive"></a>
                    </div>
                    <div class="item">
                        <a href="#" target="_blank" title="专业网站建设" >
                            <img src="${pageContext.request.contextPath}/images/pc/m2.jpg" alt="专业网站建设" class="img-responsive"></a>
                    </div>

                </div>
                <a class="left carousel-control" href="#focusslide" role="button" data-slide="prev" rel="nofollow">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">上一个</span> </a>
                <a class="right carousel-control" href="#focusslide" role="button" data-slide="next" rel="nofollow">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">下一个</span> </a>
            </div>
            <article class="excerpt-minic excerpt-minic-index">
                <h2><span class="red">【每日推荐】</span><a target="_blank" href="${pageContext.request.contextPath}/detail
                /${DAILY_RECOMMEND.id}.html" title="${DAILY_RECOMMEND.title}" >${DAILY_RECOMMEND.title}</a>
                </h2>
                <p class="note">${DAILY_RECOMMEND.words}</p>
            </article>
            <div class="title">
                <h3>最新发布</h3>
                <div class="more">
                    <%--<a href="#" title="欢迎您" >情感夜话，情感与心灵的港湾</a>--%>
                        <marquee direction=left  scrollamount=4  onmouseover="this.stop();" onmouseout="this.start();" width=80% height=100>
                            <c:forEach items="${RANGE_LIST}" var="list" varStatus="vs">
                                <a href="${pageContext.request.contextPath}/detail/${list.uuid}.html"
                                   title="${list.title}" target="_blank" >${list.title}</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            </c:forEach>
                        </marquee>
                </div>
            </div>
            <c:forEach items="${RANGE_LIST}" var="list" varStatus="vs">
            <article class="excerpt excerpt-1" style="">
                <a class="focus" href="${pageContext.request.contextPath}/detail/${list.uuid}.html"
                   title="${list.title}"
                   target="_blank" ><img class="thumb" data-original="${pageContext.request.contextPath}/
                   ${list.picture}" src="${pageContext.request.contextPath}/${list.picture}"
                                         onerror="javascript:this.src='images/logoError.jpg';" alt="${list.title}"
                                         style="display: inline;"></a>
                <header><a class="cat" target="_blank"
                           href="${pageContext.request.contextPath}/detail/${list.uuid}.html" title="${list.title}"
                >${list.categoryName}<i></i></a>
                    <h2><a href="${pageContext.request.contextPath}/detail/${list.uuid}.html" title="${list.title}"
                           target="_blank" >${list.title}</a>
                    </h2>
                </header>
                <p class="meta">
                    <time class="time"><i class="glyphicon glyphicon-time"></i> <fmt:formatDate pattern="yyyy-MM-dd" value="${list.createdTime }"></fmt:formatDate></time>
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
                    <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >热词搜索</a></li>
                    <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" >新媒体</a></li>
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
                <li><a title="${list.title}" href="${pageContext.request.contextPath}/detail/${list.uuid}.html" ><span
                        class="thumbnail">
				<img class="thumb" data-original="${pageContext.request.contextPath}/${list.picture}"
                     src="${pageContext.request.contextPath}/${list.picture}" onerror="javascript:this.src='images/logoError.jpg';"
                     alt="${list.title}"
                     style="display: block;">
			</span><span class="text">${list.title}</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				<fmt:formatDate pattern="yyyy-MM-dd" value="${list.createdTime }"></fmt:formatDate>
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>${list.hits}</span></a></li>
            </c:forEach>
            </ul>
        </div>
        <%--<div class="widget widget_sentence">
            <a href="#" target="_blank" rel="nofollow" title="专业网站建设" >
                <img style="width: 100%" src="/images/pc//201610241224221511.jpg" alt="专业网站建设" ></a>
        </div>
        <div class="widget widget_sentence">
            <a href="#" target="_blank" rel="nofollow" title="MZ-NetBlog主题" >
                <img style="width: 100%" src="/images/pc/ad.jpg" alt="MZ-NetBlog主题" ></a>
        </div>--%>
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

