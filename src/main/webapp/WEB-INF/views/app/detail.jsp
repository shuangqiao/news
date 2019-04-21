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
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" href="/css/app/amazeui.min.css">
	<link rel="stylesheet" href="/css/app/wap.css">
	<title>${article.title}</title>
</head>
<body style="background:#ececec">
<div class="pet_mian" >
	<div class="pet_head">
		<header data-am-widget="header"
				class="am-header am-header-default pet_head_block">
			<%--<div class="am-header-left am-header-nav ">
				<a href="${pageContext.request.contextPath}/" class="iconfont pet_head_jt_ico">首页</a>
			</div>--%>
        <%--    <div class="am-header-right am-header-nav">
                <a href="${pageContext.request.contextPath}/" class="iconfont pet_head_gd_ico" style="margin-top: 7px; ">返回首页</a>
            </div>--%>
			<h1 class="am-header-title pet_article_user">
				<span class="pet_article_user_ico"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" class=""></span>
				<span class="pet_article_user_name">情感夜话 - ${article.title}</span>
			</h1>
		</header>
	</div>
</div>

	<div class="pet_content">
		<div class="pet_content_block">
			<article data-am-widget="paragraph" class="am-paragraph am-paragraph-default pet_content_article" data-am-paragraph="{ tableScrollable: true, pureview: true }">
				<h1 class="pet_article_title">${article.title}</h1>
				<div class="pet_article_user_time">发表于：<fmt:formatDate pattern="yyyy-MM-dd" value="${article.createdTime }"></fmt:formatDate> &nbsp;&nbsp; 浏览（${article.hits}）</div>
				<%--广告位--%><img src="${pageContext.request.contextPath}/${article.picture}">
				<p class=paragraph-default-p>&nbsp;&nbsp;&nbsp;&nbsp;${article.words}</p>
			</article>
			<hr>
			<ul class="like_share_block">
				<li>分享到</li>
				<li><a class="link_share_button" href="###"><i class="iconfont share_ico_wx"><img style="width: 30px;" src="${pageContext.request.contextPath}/images/wx.png" /></i>微信</a></li>
				<li><a class="link_share_button" href="###"><i class="iconfont share_ico_pyq"><img style="width: 30px;" src="${pageContext.request.contextPath}/images/pyq.png" /></i>朋友圈</a></li>
			</ul>
				<table style="width: 95%;">
					<tr style="width: 100%;">
						<td style="width: 30%;text-align: center;"></td>
						<td style="width: 65%;">
							<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare"><a class="bds_tsina"></a><a class="bds_qzone"></a><a class="bds_tqq"></a><a class="bds_renren"></a><span class="bds_more"></span><a class="shareCount"></a></div>
							<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script>
							<script type="text/javascript" id="bdshell_js"></script>
							<script type="text/javascript">
                                document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
							</script>
						</td>
					</tr>
				</table>
			<hr>
		<%--广告位--%>
		<div class="pet_article_like">
			<div class="pet_article_like_title">猜你喜欢</div>
			<div class="pet_content_main pet_article_like_delete">
				<div data-am-widget="list_news" class="am-list-news am-list-news-default am-no-layout">
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
										<div class="pet_list_tag ${list.class_name}"><a target="_blank" href="${pageContext.request.contextPath}/list/${list.categoryId}/1.html">${list.categoryName}</a></div>
									</div>
								</div>
								<div class=" am-u-sm-8 am-list-main pet_list_one_nr">
									<h3 class="am-list-item-hd pet_list_one_bt"><a href="${pageContext.request.contextPath}/detail/${list.id}.html" class="">${list.title}</a></h3>
									<div class="am-list-item-text pet_list_one_text">${list.words}...</div>
								</div>
								<div class="am-u-sm-4 am-list-thumb">
									<a href="${pageContext.request.contextPath}/detail/${list.id}.html" class="">
										<img src="${pageContext.request.contextPath}/${list.picture}" class="pet_list_one_img" alt=""/>
									</a>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="pet_article_footer_info">Copyright(c)2015 Amaze UI All Rights Reserved</div>
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
        $('.pet_article_like li:last-child').css('border','none');
        function auto_resize(){
            $('.pet_list_one_nr').height($('.pet_list_one_img').height());
            // alert($('.pet_list_one_nr').height());
        }
        $('.pet_article_user').on('click',function(){
            if($('.pet_article_user_info_tab').hasClass('pet_article_user_info_tab_show')){
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_show').addClass('pet_article_user_info_tab_cloes');
            }else{
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_cloes').addClass('pet_article_user_info_tab_show');
            }
        });

        $('.pet_head_gd_ico').on('click',function(){
            $('.pet_more_list').addClass('pet_more_list_show');
        });
        $('.pet_more_close').on('click',function(){
            $('.pet_more_list').removeClass('pet_more_list_show');
        });
    });

</script>
</body>
</html>
