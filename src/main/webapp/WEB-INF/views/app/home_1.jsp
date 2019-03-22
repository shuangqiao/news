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
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/wap.css">
    <title>首页</title>
</head>
<body>
<div data-am-widget="gotop" class="am-gotop am-gotop-fixed">
    <a href="#top" title="">
        <img class="am-gotop-icon-custom" src="img/goTop.png" />
    </a>
</div>

<div class="pet_mian" id="top">
    <div data-am-widget="slider" class="am-slider am-slider-a1" data-am-slider='{"directionNav":false}' >
        <ul class="am-slides">
            <li>
                <img src="img/fl01.png">
                <div class="pet_slider_font">
                    <span class="pet_slider_emoji"> (╭￣3￣)╭♡   </span>
                    <span>“大白”有望成为现实：充气机器人研究取得进展</span>
                </div>
                <div class="pet_slider_shadow"></div>
            </li>
            <li>
                <img src="img/fl02.png">
                <div class="pet_slider_font">
                    <span class="pet_slider_emoji"> []~(￣▽￣)~*　</span>
                    <span>已然魔性的雪橇犬哈士奇 —《雪地狂奔》</span>
                </div>
                <div class="pet_slider_shadow"></div>
            </li>
            <li>
                <img src="img/fl03.png">
                <div class="pet_slider_font">
                    <span class="pet_slider_emoji"> (｡・`ω´･)　</span>
                    <span>《星际争霸2:虚空之遗》国服过审!</span>
                </div>
                <div class="pet_slider_shadow"></div>
            </li>
        </ul>
    </div>


    <div class="pet_circle_nav">
        <ul class="pet_circle_nav_list">
            <li><a href="" class="iconfont pet_nav_xinxianshi ">&#xe61e;</a><span>新鲜事</span></li>
            <li><a href="" class="iconfont pet_nav_zhangzhishi ">&#xe607;</a><span>趣闻</span></li>
            <li><a href="" class="iconfont pet_nav_kantuya ">&#xe62c;</a><span>阅读</span></li>
            <li><a href="" class="iconfont pet_nav_mengzhuanti ">&#xe622;</a><span>专题</span></li>
            <li><a href="" class="iconfont pet_nav_meirong ">&#xe629;</a><span>订阅</span></li>
            <li><a href="" class="iconfont pet_nav_yiyuan ">&#xe602;</a><span>专栏</span></li>
            <li><a href="" class="iconfont pet_nav_dianpu ">&#xe604;</a><span>讨论</span></li>
            <li><a href="javascript:;" class="iconfont pet_nav_gengduo ">&#xe600;</a><span>更多</span></li>
        </ul>
        <div class="pet_more_list"><div class="pet_more_list_block">
            <div class="iconfont pet_more_close">×</div>
            <div class="pet_more_list_block">
                <div class="pet_more_list_block_name">
                    <div class="pet_more_list_block_name_title">阅读 Read</div>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe61e;</i>
                        <div class="pet_more_list_block_line_font">新鲜事</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe607;</i>
                        <div class="pet_more_list_block_line_font">趣闻</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe62c;</i>
                        <div class="pet_more_list_block_line_font">阅读</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_mengzhuanti pet_more_list_block_line_ico">&#xe622;</i>
                        <div class="pet_more_list_block_line_font">专题</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_bk pet_more_list_block_line_ico">&#xe629;</i>
                        <div class="pet_more_list_block_line_font">订阅</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_wd pet_more_list_block_line_ico">&#xe602;</i>
                        <div class="pet_more_list_block_line_font">专栏</div>
                    </a>
                    <div class="pet_more_list_block_name_title pet_more_list_block_line_height">服务 Service</div>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe61e;</i>
                        <div class="pet_more_list_block_line_font">新鲜事</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe607;</i>
                        <div class="pet_more_list_block_line_font">趣闻</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe62c;</i>
                        <div class="pet_more_list_block_line_font">阅读</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_mengzhuanti pet_more_list_block_line_ico">&#xe622;</i>
                        <div class="pet_more_list_block_line_font">专题</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_bk pet_more_list_block_line_ico">&#xe629;</i>
                        <div class="pet_more_list_block_line_font">订阅</div>
                    </a>
                    <a class="pet_more_list_block_line">
                        <i class="iconfont pet_nav_wd pet_more_list_block_line_ico">&#xe602;</i>
                        <div class="pet_more_list_block_line_font">专栏</div>
                    </a>
                </div>
            </div>

        </div></div>
    </div>
    <div class="pet_content_main">
        <div data-am-widget="list_news" class="am-list-news am-list-news-default" >
            <div class="am-list-news-bd">
                <ul class="am-list">
                    <!--缩略图在标题右边-->
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_l">
                                <div class="pet_list_one_info_ico"><img src="img/a1.png" alt=""></div>
                                <div class="pet_list_one_info_name">Super invincible 菁 </div>
                            </div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag pet_list_tag_xxs">新鲜事</div>
                            </div>
                        </div>
                        <div class=" am-u-sm-8 am-list-main pet_list_one_nr">
                            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">十一长假哪也不去，宅在家里看电影！</a></h3>
                            <div class="am-list-item-text pet_list_one_text">每逢长假，总有那么一群人选择远离人山人海，静静地呆在家，坐在电脑电视前。长时间的工作学习让他们感觉很疲惫，对什么都提不起劲，打开电脑却不知道干什么好…</div>

                        </div>
                        <div class="am-u-sm-4 am-list-thumb">
                            <a href="###" class="">
                                <img src="img/q1.jpg" class="pet_list_one_img" alt=""/>
                            </a>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_l">
                                <div class="pet_list_one_info_ico"><img src="img/a6.png" alt=""></div>
                                <div class="pet_list_one_info_name">La Da Dee</div>
                            </div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag pet_video_tag">视频</div>
                            </div>
                        </div>
                        <div class=" am-u-sm-8 am-list-main pet_list_one_nr">
                            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">不是说好做彼此的天使吗？连最后一口汉堡也不给我</a></h3>
                            <div class="am-list-item-text pet_list_one_text">国外网友waxiestapple在论坛Reddit贴出爱犬照片，指出“我的狗狗好像瘦了点”“因为我刚刚把最后一口汉堡吃掉”，只见这只哈士奇一脸惨遭背叛的样子，对主人露出相当不可思议的表情。</div>

                        </div>
                        <div class="am-u-sm-4 am-list-thumb pet_video_info">
                            <div class="pet_video_info_tag"><i class="iconfont">&#xe62d;</i>03:50</div>
                            <a href="###" class="">
                                <img src="img/q4.jpg" class="pet_list_one_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"/>
                            </a>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_l">
                                <div class="pet_list_one_info_ico"><img src="img/a2.png" alt=""></div>
                                <div class="pet_list_one_info_name">AbsScript</div>
                            </div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag pet_list_tag_zzs">趣闻</div>
                            </div>
                        </div>
                        <div class=" am-u-sm-8 am-list-main pet_list_one_nr">
                            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">怦然心动！澳洲大眼宝宝逆天睫毛萌翻全球！</a></h3>
                            <div class="am-list-item-text pet_list_one_text">来自澳大利亚布里斯班的十个月大的萌宝Egypt拥有一双修长的睫毛、清澈的眼眸，可爱的模样让她在社交网站上爆红。</div>

                        </div>
                        <div class="am-u-sm-4 am-list-thumb">
                            <a href="###" class="">
                                <img src="img/q5.jpg" class="pet_list_one_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"/>
                            </a>
                        </div>
                    </li>

                    <li class="am-g am-list-item-desced pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_l">
                                <div class="pet_list_one_info_ico"><img src="img/a3.png" alt=""></div>
                                <div class="pet_list_one_info_name">养了猫的飞飞</div>
                            </div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag pet_list_tag_stj">阅读</div>
                            </div>
                        </div>
                        <div class=" am-list-main">
                            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">浣熊孤儿掉到树下，被一家人收养之后……</a></h3>
                            <ul data-am-widget="gallery" class="am-gallery am-avg-sm-3
  am-avg-md-3 am-avg-lg-3 am-gallery-default pet_list_one_list" >
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/qq1.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/qq2.jpg"  alt="不要太担心 只因为我相信"/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/qq3.jpg"  alt="终会走过这条遥远的道路"/>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                            <div class="am-list-item-text pet_list_two_text">巴哈马拿骚的居民Rosie Kemp发现一个刚出生的浣熊，掉在了树下。因为找不到小浣熊的妈妈了，Rosie和她的女儿Laura Young决定收养这只小东西，并给她取名“小南瓜”。</div>
                        </div>
                    </li>

                    <li class="am-g am-list-item-desced pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_tytj"><i class="iconfont pet_nav_kantuya pet_more_list_block_line_ico pet_list_tytj_ico">&#xe607;</i>诺奖得主回忆通知获奖那一刻</div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag pet_list_tag_kty">图集</div>
                            </div>
                        </div>
                        <div class=" am-list-main">
                            <ul data-am-widget="gallery" class="am-gallery am-avg-sm-3
  am-avg-md-3 am-avg-lg-3 am-gallery-default pet_list_one_list pet_list_one_tytj" >
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/w1.jpg"  alt="某天 也许会相遇 相遇在这个好地方"/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/w2.jpg"  alt="不要太担心 只因为我相信"/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/w3.jpg"  alt="终会走过这条遥远的道路"/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/w4.jpg"  alt="终会走过这条遥远的道路"/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/w5.jpg"  alt="终会走过这条遥远的道路"/>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="am-gallery-item">
                                        <a href="###" class="">
                                            <img src="img/w6.jpg"  alt="终会走过这条遥远的道路"/>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                    </li>
                    <li class="am-g am-list-item-desced pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_l">
                                <div class="pet_list_one_info_ico"><img src="img/a4.png" alt=""></div>
                                <div class="pet_list_one_info_name">大兔</div>
                            </div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag pet_list_tag_zzs">趣闻</div>
                            </div>
                        </div>
                        <div class=" am-list-main">
                            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">“你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！</a></h3>


                            <div class="am-list-item-text pet_list_two_text">狗狗会天天的跟着我们生活在一起，它们的一切都会影响着主人，尤其是狗狗身上散发的味道，会无时无刻的对主人有影响，如果狗狗身体有异味，主人就会用过于香喷喷的洗漱品帮狗狗洗澡，这样不仅对狗狗身体有伤害，还会容易患上皮肤病，其实，我们知道一些小技巧，就会改善狗狗身上存在的味道。</div>

                        </div>
                    </li>
                    <li class="am-g am-list-item-desced pet_list_one_block">
                        <div class="pet_list_one_info">
                            <div class="pet_list_one_info_l">
                                <div class="pet_list_one_info_ico"><img src="img/a5.png" alt=""></div>
                                <div class="pet_list_one_info_name">Hope</div>
                            </div>
                            <div class="pet_list_one_info_r">
                                <div class="pet_list_tag pet_list_tag_mzt">萌专题</div>
                            </div>
                        </div>
                        <div class=" am-list-main">
                            <h3 class="am-list-item-hd pet_list_one_bt"><a href="###" class="">心情不好了，就来看看这只狗！</a></h3>
                            <div class="pet_list_zt_img"><img src="img/c1.png" alt=""></div>

                            <div class="am-list-item-text pet_list_two_text">猫咪不像人，猫咪的情绪不会写在脸上，反馈给我们的信息更多的应该是行为上肢体上的，当然从叫声中也会反应一些信息，那么要想“抓住它的心，就一定要抓住它的胃吗？”从它的行为和肢体语言当中我们可以读懂什么呢？</div>

                        </div>
                    </li>
                    <li class="am-g am-list-item-desced pet_list_one_block">
                        <div class="pet_article_user_block">
                            <div class="pet_article_user_img">
                                <div class="pet_article_user_shadow"></div>
                                <div class="pet_article_user_title">一周在任意地点工作三天？</div>
                                <img src="img/c2.png" alt=""></div>
                            <div class="pet_article_user_info">
                                <div class="pet_article_user_info_ico"><img src="img/c.png" alt=""></div>SeeYouAgain
                            </div>
                            <div class="am-list-item-text pet_article_user_nr">这是一家帮助客户在亚太地区找到适合的打折酒店的中介机构，在全球设立了9个办事处，老板克里斯蒂安·米施勒宣称要把它打造成世界上最棒的公司。</div>
                        </div>
                    </li>
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

<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
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
