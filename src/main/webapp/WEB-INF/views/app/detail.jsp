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
			<div class="am-header-left am-header-nav ">
				<a href="#left-link" class="iconfont pet_head_jt_ico">&#xe601;</a>
			</div>
			<h1 class="am-header-title pet_article_user">
				<div class="pet_article_user_info_tab">
					<div class="pet_article_user_info_tab_font">
						<div class="pet_article_user_info_tab_font_triangle"></div>
						<div class="pet_article_user_info_tab_font_center"><i>文章</i><span>16篇</span></div>
						<!--         <div class="pet_article_user_info_tab_font_center"><i>涂鸦</i><span>89张</span></div>
                                <div class="pet_article_user_info_tab_font_center_line"></div>
                                <div class="pet_article_user_info_tab_font_center"><a href="###">查看全部资料</a></div> -->
					</div>
				</div>
				<span class="pet_article_user_ico"><img src="${pageContext.request.contextPath}/images/logo.png" alt="" class=""></span>
				<span class="pet_article_user_name">情感夜话 - ${article.categoryName}</span>
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
				<p class=paragraph-default-p>${article.words}</p>
			</article>
			<ul class="like_share_block">
				<li>分享到</li>
				<li><a class="link_share_button" href="###"><i class="iconfont share_ico_wx"><img style="width: 26px;" src="${pageContext.request.contextPath}/images/wx.jpg" />微信</a></li>
				<li><a class="link_share_button" href="###"><i class="iconfont share_ico_pyq"><img style="width: 26px;" src="${pageContext.request.contextPath}/images/pyq.jpg" /></i>朋友圈</a></li>
			</ul>
			<%--广告位--%>
			<%--<div class="pet_article_dowload">
				<div class="pet_article_dowload_title">关于Amaze UI</div>
				<div class="pet_article_dowload_content"><div class="pet_article_dowload_triangle"></div>
					<div class="pet_article_dowload_ico"><img src="img/footdon.png" alt=""></div>
					<div class="pet_article_dowload_content_font">
						Amaze UI 以移动优先（Mobile first）为理念，从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。
					</div>
					<div class="pet_article_dowload_all">
						<a href="###" class="pet_article_dowload_Az am-icon-apple"> App store</a>
						<a href="###" class="pet_article_dowload_Pg am-icon-android"> Android</a>
					</div>
				</div>
			</div>--%>
		</div>
		<div class="pet_comment_list">
			<div class="pet_comment_list_wap"><div class="pet_comment_list_title">精彩评论</div>

				<div data-am-widget="tabs" class="am-tabs am-tabs-default pet_comment_list_tab" >
					<ul class="am-tabs-nav am-cf pet_comment_list_title_tab">
						<li class="am-active"><a href="[data-tab-panel-0]">人气</a></li>
						<li class=""><a href="[data-tab-panel-1]">最新</a></li>
						<li class=""><a href="[data-tab-panel-2]">最早</a></li>
					</ul>
					<div class="am-tabs-bd pet_pl_list">
						<div data-tab-panel-0 class="am-tab-panel am-active">
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a1.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">Amaze</div>
									<div class="pet_comment_list_block_r_text">那时候有多好，任雨打湿裙角。忍不住哼起，心爱的旋律。绿油油的树叶，自由地在说笑。燕子忙归巢，风铃在舞蹈。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">10分钟前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a2.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">一如既往</div>
									<div class="pet_comment_list_block_r_text"><span>@Drary</span>没有老友你的陪伴，日子真是漫长与你重逢之时，我会敞开心扉倾诉所有。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">15分钟前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a3.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">AllThe</div>
									<div class="pet_comment_list_block_r_text">表紙の裏に移らないよに あけた一枚目のページの裏に透けた文字めくろうとして 指がとまって</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">30分钟前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a4.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">Drary</div>
									<div class="pet_comment_list_block_r_text">无论历经怎样的艰难坎坷，总有你相伴陪我度过。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">1小时前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
						</div>
						<div data-tab-panel-1 class="am-tab-panel ">
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a2.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">一如既往</div>
									<div class="pet_comment_list_block_r_text"><span>@Drary</span>没有老友你的陪伴，日子真是漫长与你重逢之时，我会敞开心扉倾诉所有。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">15分钟前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a3.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">AllThe</div>
									<div class="pet_comment_list_block_r_text">表紙の裏に移らないよに あけた一枚目のページの裏に透けた文字めくろうとして 指がとまって</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">30分钟前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a1.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">Amaze</div>
									<div class="pet_comment_list_block_r_text">那时候有多好，任雨打湿裙角。忍不住哼起，心爱的旋律。绿油油的树叶，自由地在说笑。燕子忙归巢，风铃在舞蹈。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">10分钟前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>


							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a4.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">Drary</div>
									<div class="pet_comment_list_block_r_text">无论历经怎样的艰难坎坷，总有你相伴陪我度过。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">1小时前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
						</div>
						<div data-tab-panel-2 class="am-tab-panel ">
							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a1.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">Amaze</div>
									<div class="pet_comment_list_block_r_text">那时候有多好，任雨打湿裙角。忍不住哼起，心爱的旋律。绿油油的树叶，自由地在说笑。燕子忙归巢，风铃在舞蹈。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">10分钟前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>


							<div class="pet_comment_list_block">
								<div class="pet_comment_list_block_l"><img src="img/a4.png" alt=""></div>
								<div class="pet_comment_list_block_r">
									<div class="pet_comment_list_block_r_info">Drary</div>
									<div class="pet_comment_list_block_r_text">无论历经怎样的艰难坎坷，总有你相伴陪我度过。</div>
									<div class="pet_comment_list_block_r_bottom">
										<div class="pet_comment_list_bottom_info_l">1小时前</div>
										<div class="pet_comment_list_bottom_info_r">
											<span><i class="iconfont">&#xe631;</i>5 </span>
											<span> 回复</span></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
										<div class="pet_list_tag ${list.class_name}">${list.categoryName}</div>
									</div>
								</div>
								<div class=" am-u-sm-8 am-list-main pet_list_one_nr">
									<h3 class="am-list-item-hd pet_list_one_bt"><a href="${pageContext.request.contextPath}/detail/${list.id}.html" class="">${list.title}</a></h3>
									<div class="am-list-item-text pet_list_one_text">${list.words}</div>
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
