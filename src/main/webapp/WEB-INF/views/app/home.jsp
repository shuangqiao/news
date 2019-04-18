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
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="/css/app/amazeui.min.css">
    <link rel="stylesheet" href="/css/app/wap.css">
    <title>首页</title>
</head>
<body>
<div data-am-widget="gotop" class="am-gotop am-gotop-fixed">
    <a href="#top" title="">
        <img class="am-gotop-icon-custom" src="${pageContext.request.contextPath}/images/app/goTop.png" />
    </a>
</div>

<div class="pet_mian" id="top">
    <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{"directionNav":false}' >
        <ul class="am-slides">
        <c:forEach items="${RAND_LIST}" var="list" varStatus="vs">
            <li>
                <img src="${pageContext.request.contextPath}/${list.picture}" />
                <div class="pet_slider_font">
                    <span class="pet_slider_emoji"> (╭￣3￣)╭♡   </span>
                    <span>${list.title}</span>
                </div>
                <div class="pet_slider_shadow"></div>
            </li>
        </c:forEach>
        </ul>
    </div>


    <div class="pet_circle_nav">
        <ul class="pet_circle_nav_list">
            <li><a href="${pageContext.request.contextPath}/list/1/1.html" class="iconfont pet_nav_xinxianshi ">情
            </a><span>情感故事</span></li>
            <li><a href="${pageContext.request.contextPath}/list/3/1.html" class="iconfont pet_nav_zhangzhishi ">亲</a><span>亲密关系</span></li>
            <li><a href="${pageContext.request.contextPath}/list/6/1.html" class="iconfont pet_nav_kantuya ">青</a><span>青春期</span></li>
            <li><a href="${pageContext.request.contextPath}/list/4/1.html" class="iconfont pet_nav_mengzhuanti ">冷</a><span>冷知识</span></li>
            <li><a href="${pageContext.request.contextPath}/list/5/1.html" class="iconfont pet_nav_meirong ">健</a><span>健康生活</span></li>
            <li><a href="${pageContext.request.contextPath}/list/7/1.html" class="iconfont pet_nav_yiyuan ">史</a><span>历史上的今天</span></li>
            <li><a href="" class="iconfont pet_nav_dianpu ">论</a><span>讨论</span></li>
            <li><a href="javascript:;" class="iconfont pet_nav_gengduo ">MORE</a><span>更多</span></li>
        </ul>
    </div>
    <div class="pet_content_main">
        <div data-am-widget="list_news" class="am-list-news am-list-news-default" >
            <div class="am-list-news-bd">
                <ul class="am-list">
                    <!--缩略图在标题右边-->
                    <c:forEach items="${RANGE_LIST}" var="list" varStatus="vs">
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_l">
                                <div class="pet_list_one_info_ico"><img src="${pageContext.request.contextPath}/${list.headImg}" alt=""></div>
                                <div class="pet_list_one_info_name">${list.author} </div>
                            </div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag ${list.class_name}">${list.categoryName}</div>
                            </div>
                        </div>
                        <div class="am-u-sm-8 am-list-main pet_list_one_nr">
                            <h3 class="am-list-item-hd pet_list_one_bt"><a
                                    href="${pageContext.request.contextPath}/detail/${list.id}.html"
                                    class="">${list.title}</a></h3>
                            <div class="am-list-item-text pet_list_one_text">${list.words}…</div>
                        </div>
                        <div class="am-u-sm-4 am-list-thumb">
                            <a href="${pageContext.request.contextPath}/detail/${list.id}.html" class="">
                                <img src="${pageContext.request.contextPath}/${list.picture}"
                                     class="pet_list_one_img" />
                            </a>
                        </div>
                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div class="pet_article_dowload pet_dowload_more_top_off">
        <div class="pet_article_dowload_title">关于Amaze UI</div>
        <div class="pet_article_dowload_content pet_dowload_more_top_bg"><div class="pet_article_dowload_triangle pet_dowload_more_top_san"></div>
            <div class="pet_article_dowload_ico"><img src="img/footdon.png" alt=""></div>
            <div class="pet_article_dowload_content_font">
                Amaze UI 以移动优先（Mobile first）为理念，从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。 </div>
            <div class="pet_article_dowload_all">
                <a href="###" class="pet_article_dowload_Az am-icon-apple"> App store</a>
                <a href="###" class="pet_article_dowload_Pg am-icon-android"> Android</a>
            </div>
        </div>
        <div class="pet_article_footer_info">Copyright(c)2015 Amaze UI All Rights Reserved.模板收集自 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> -  More Templates  <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></div>
    </div>
</div>

<script src="/js/app/jquery.min.js"></script>
<script src="/js/app/amazeui.min.js"></script>
<script>
    $(function(){

        // 动态计算新闻列表文字样式
        auto_resize();
        $(window).resize(function() {
            auto_resize();
        });
        $('.am-list-thumb img').load(function(){
            auto_resize();
        });

        $('.am-list > li:last-child').css('border','none');
        function auto_resize(){
            $('.pet_list_one_nr').height($('.pet_list_one_img').height());

        }
        $('.pet_nav_gengduo').on('click',function(){
            $('.pet_more_list').addClass('pet_more_list_show');
        });
        $('.pet_more_close').on('click',function(){
            $('.pet_more_list').removeClass('pet_more_list_show');
        });
    });

</script>
</body>
</html>
