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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>情感夜话</title>
	<link href="/css/style.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="/js/banner1.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/based.css" />
	<link rel="stylesheet" type="text/css" href="/css/qing_detail.css" />
</head>

<body>
<jsp:include page="header.jsp"/>
<div class="wrap-sex-detail-main clr">
	<div class="m-sex-detail-guid posr">
		<ul class="guid-list">
			<li class="guid-list-item"><a href="/" class="guid-list-item-link">两性频道</a>&gt;</li>
			<li class="guid-list-item"><a href="/sl/" class="guid-list-item-link">两性保健</a>&gt;</li>
			<li class="guid-list-item"><a href="/sl/xzs/" class="guid-list-item-link">夫妻保健</a></li>
		</ul>
	</div>
	<style>
		.left-article-tit-time {
			line-height: 22px; height: 22px; font-size: 12px; color: #666; overflow: hidden; position: relative; zoom: 1; text-align: center; }
	</style>
	<div class="wrap-sex-detail-left clr">
		<div class="m-left-article">
			<h1 class="left-article-tit">${article.title}</h1>
			<div class="left-article-tit-time">发布时间：<fmt:formatDate value="${article.createdTime}" pattern="yyyy-MM-dd HH:MM:ss"/></div>
		<%--	<div class="left-article-intro">
				<span class="col333">导读&nbsp;:&nbsp;</span>
				随着社会发展的加快，人们的生活压力越来越大，导致男人的性能力逐渐下降。性能力的下降就会引起性生活的不和谐，长时间这样严重影响着夫妻生活，其实导致男性性能力下降和日常生活中的行为习惯也有很大的关系，那么生活中哪些坏习惯会引起男性性能力衰退呢?一起来了解一下吧!
			</div>--%>
			<div class="detail-content-box">
				<p>${article.words}</p>
			</div>
			<div class="wrap-list-paging">
				<c:if test="${lastTitle != null}">
                    <p><span class="current">上一篇</span><a target="_blank"  href="/detail/${lastTitle.id}">${lastTitle.title}</a></p>
				</c:if>
				<c:if test="${nextTitle != null}">
				    <p><span class="current">下一篇</span><a target="_blank"  href="/detail/${nextTitle.id}">${nextTitle.title}</a></p>
				</c:if>
			</div>

			<div class="mod-left-tag clr">
				<p class="left-tag">
				</p>
				<div class="flr">
					<div class="bdsharebuttonbox">
						<a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
					<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='//bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
				</div>
			</div>
			<div class="mart15">
				<div class="left-related clr">
					<p class="left-related-about"><span class="left-related-about-link related-mart6">相关阅读</span></p>
					<ul class="left-related-list">
						<li class="left-related-item" style="width: 240px;overflow:hidden; height: 30px;">
							<span></span>
							<a href="https://www.bh5.com/sex/sl/1970/0101/62219.shtml" target="_blank" title="完美初吻从口腔清洁开始" class="left-related-item-link">完美初吻从口腔清洁开始</a>
						</li>
						<li class="left-related-item" style="width: 240px;overflow:hidden; height: 30px;">
							<span></span>
							<a href="https://www.bh5.com/sex/sl/1970/0101/62180.shtml" target="_blank" title="成年女性突然闭经要怎么办?" class="left-related-item-link">成年女性突然闭经要怎么办?</a>
						</li>
						<li class="left-related-item" style="width: 240px;overflow:hidden; height: 30px;">
							<span></span>
							<a href="/sl/xzs/5403078.html" target="_blank" title="食色男女切记！这些“败性”食物要少吃" class="left-related-item-link">食色男女切记！这些“败性”食物要少吃</a>
						</li>
						<li class="left-related-item" style="width: 240px;overflow:hidden; height: 30px;">
							<span></span>
							<a href="/sl/aqq/aqqby/762212.html" target="_blank" title="使用避孕套全球人最易犯的几个错" class="left-related-item-link">使用避孕套全球人最易犯的几个错</a>
						</li>
						<li class="left-related-item" style="width: 240px;overflow:hidden; height: 30px;">
							<span></span>
							<a href="/sl/nvsl/5380425.html" target="_blank" title="这样让男人在性生理上发育的更好" class="left-related-item-link">这样让男人在性生理上发育的更好</a>
						</li>
						<li class="left-related-item" style="width: 240px;overflow:hidden; height: 30px;">
							<span></span>
							<a href="/sl/aqq/aqqzc/664123.html" target="_blank" title="“安全期”安全避孕须知" class="left-related-item-link">“安全期”安全避孕须知</a>
						</li>

					</ul>
					<p class="left-related-hot"></p>
				</div>
			</div>

			<ol class="left-related-more clr">
				<li class="related-more-pre col666">上一篇：<a target="_blank" href="/sl/xzs/5403082.html">多喝水有助预防尿路感染</a></li>
				<li class="related-more-next col666">下一篇：<a target="_blank" href="/sl/xzs/5403387.html">哪些食物会提高人们性能力？</a></li>
			</ol>
			<div class="ad">
				<div style=""><div id="gdljgp" style="margin-bottom:0px;"><iframe width="640" frameborder="0" height="90" scrolling="no" src="//2.feihua.net.cn/vtqyjbg?dae=-S&amp;sez=YWS&amp;ze=MU_ZT_-T&amp;hpq=9LLHK1V.1Ue1UeK6P1z79UT1z4GE1z4F1UeKD1UePRK1UeXWSVV_Y1z9LED&amp;loe=Z7V34U-UW-UV3XUW53UY62Y-4-33V4U-&amp;zy=V&amp;wne=U&amp;yay=tse0_&amp;lyo=T-SVP-TT&amp;loo=T-SVPU-UV&amp;leo=0TP0T&amp;wjp=T&amp;lwn=T-USPTSWS&amp;zwe=T&amp;zne=S&amp;atlo=TTTSSU,TTSSSS&amp;pln=TXWWXWVSUVXYS&amp;zeo=S&amp;lo=TW_TPWZS&amp;zpi=gslkzonrs&amp;t8=hpgz157cf1xkk3dte29&amp;z4=5br9vlng3fo3o5wdygb9&amp;swt=1"></iframe><div id="qyqtbe" style="width:0px;height:0px;"></div></div></div><script type="text/javascript" src="//1.feihua.com/jq3a1ecf97f6c2fe39db4c3e8da4f73ffa54acde0b36.js"></script>
			</div>
		</div>

		<div class="sex-required marb15">
			<h3 class="sex-required-tit"><p class="sex-required-tit-link">两性<span class="sex-required-tit-purple">必读</span></p></h3>
			<div class="clr">
				<dl class="sex-required-pic">
					<dt><a href="http://www.bh5.com/sex/xl/1970/0101/62184.shtml" target="_blank"><img src="https://file.fh21static.com/fhfile1/M00/6B/3A/o4YBAFu7Dx2AD_wFAAAlCthLgeE50.jpeg" style="width:170px;height:190px;" class="sex-required-img db"></a></dt>
					<dd>
						<a href="http://www.bh5.com/sex/xl/1970/0101/62184.shtml" target="_blank" title="7类女人千万别追" class="sex-required-pic-link">7类女人千万别追</a>
					</dd>
				</dl>

				<ul class="sex-required-list">
					<li class="required-list-item">
						<b class="square"></b>
						<a href="http://www.bh5.com/sex/sh/1970/0101/62186.shtml" target="_blank" title="几个小措施让情侣更美满" class="required-list-item-link">几个小措施让情侣更美满</a>
					</li>
					<li class="required-list-item">
						<b class="square"></b>
						<a href="http://www.bh5.com/sex/sh/1970/0101/62011.shtml" target="_blank" title="房事前不能做的事你知道吗" class="required-list-item-link">房事前不能做的事你知道吗</a>
					</li>
					<li class="required-list-item">
						<b class="square"></b>
						<a href="http://www.bh5.com/sex/xl/1970/0101/62188.shtml" target="_blank" title="了解女人花心会有哪些表现" class="required-list-item-link">了解女人花心会有哪些表现</a>
					</li>
					<li class="required-list-item">
						<b class="square"></b>
						<a href="http://www.bh5.com/sex/sh/1970/0101/62009.shtml" target="_blank" title="警惕！破坏男女房事的小心理" class="required-list-item-link">警惕！破坏男女房事的小心理</a>
					</li>
					<li class="required-list-item">
						<b class="square"></b>
						<a href="http://www.bh5.com/sex/sh/1970/0101/62178.shtml" target="_blank" title="提高男子性功能的4个日常保健" class="required-list-item-link">提高男子性功能的4个日常保健</a>
					</li>
					<li class="required-list-item">
						<b class="square"></b>
						<a href="http://www.bh5.com/sex/sh/1970/0101/62176.shtml" target="_blank" title="男人陷入恋爱的特殊反应" class="required-list-item-link">男人陷入恋爱的特殊反应</a>
					</li>
					<li class="required-list-item">
						<b class="square"></b>
						<a href="http://www.bh5.com/sex/sh/1970/0101/62179.shtml" target="_blank" title="男女婚检都有什么项目？" class="required-list-item-link">男女婚检都有什么项目？</a>
					</li>
				</ul>
				<dl class="sex-required-pic sex-required-pic-right">

					<div id="_b3i93c9rbjwr7mzldd7t0ara4i" style=""><div id="griecqlwal" style="width:0px;height:0px;"></div><iframe width="175" frameborder="0" height="175" scrolling="no" src="//2.feihua.net.cn/uzdpeskkzp?dae=TZX&amp;sez=TZX&amp;ze=MU_ZT_-X&amp;hpq=9LLHK1V.1Ue1UeK6P1z79UT1z4GE1z4F1UeKD1UePRK1UeXWSVV_Y1z9LED&amp;loe=Z7V34U-UW-UV3XUW53UY62Y-4-33V4U-&amp;atlo=TTTSSU,TTSSSS&amp;zpi=gslkzonrs&amp;lo=TYZZP-VX&amp;zne=S&amp;zy=V&amp;yay=tse0_&amp;zeo=S&amp;zwe=U&amp;leo=0TP0T&amp;pln=TXWWXWVSUVXYS&amp;lwn=T-USPTSWS&amp;wjp=T&amp;loo=T-SVPU-UV&amp;wne=U&amp;lyo=T-SVP-TT&amp;d7=wkkljki1qungzdj9k9&amp;b4=8hlpbyzawmlexsi3sor&amp;06=mx0avynmk115ybq33di&amp;swt=1"></iframe></div><script type="text/javascript" src="//1.feihua.com/nu3a1ecf97f6c2fe3ddb4c3e8da4f73ffa54acde0b36.js"></script>
				</dl>
			</div>
		</div>
		<div class="ad">
			<div id="_25iwxpc8hklzk30nd1g67gmn29" style=""><iframe width="680" frameborder="0" height="200" scrolling="no" src="https://pos.baidu.com/s?hei=200&amp;wid=680&amp;di=u2871899&amp;ltu=https%3A%2F%2Fsex.fh21.com.cn%2Fsl%2Fxzs%2F5403386.html&amp;psi=7f3bc2924923b524db26ea69c9bb3c29&amp;cce=true&amp;cmi=6&amp;cec=UTF-8&amp;ti=%E5%93%AA%E4%BA%9B%E5%9D%8F%E4%B9%A0%E6%83%AF%E4%BC%9A%E8%AE%A9%E7%94%B7%E4%BA%BA%E6%80%A7%E8%A1%B0%E9%80%80%EF%BC%9F%20-%20%E9%A3%9E%E5%8D%8E%E4%B8%A4%E6%80%A7&amp;ccd=24&amp;cpl=4&amp;drs=3&amp;dc=3&amp;par=1920x1040&amp;pis=-1x-1&amp;pss=1903x2709&amp;ps=1902x451&amp;col=zh-CN&amp;cdo=-1&amp;dai=3&amp;dis=0&amp;dtm=HTML_POST&amp;tpr=1544543023560&amp;cja=false&amp;tlm=1544543023&amp;ltr=https%3A%2F%2Fsex.fh21.com.cn%2Fsl%2F&amp;ari=2&amp;prot=2&amp;chi=2&amp;cfv=0&amp;tcn=1544543024&amp;psr=1920x1080&amp;pcs=1903x911&amp;exps=111000,113000,110000&amp;ant=0&amp;dri=0"></iframe><span class="rugpfpbxokkijk" style="width:0px;height:0px;cursor:auto;"></span></div><script type="text/javascript" src="//1.feihua.com/ry3a1ecf97f6c2fe31db4c3e8da4f73ffa54acde0b36.js"></script>
		</div>

		<div class="sex-related sex-related--extend clr mart15">
			<h3 class="sex-required-tit pdl18"><p class="sex-required-tit-link">延伸<span class="sex-required-tit-purple">阅读</span></p></h3>
			<ul class="related-list marb20 clr">
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/sh/fs/5401217.html" class="related-list-item-link" title="女追男应该怎么追成功率高" target="_blank">女追男应该怎么追成功率高</a>
					<span class="related-list-item-date">10-15</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/sl/xgc/5401214.html" class="related-list-item-link" title="男女一天内多次性生活好吗" target="_blank">男女一天内多次性生活好吗</a>
					<span class="related-list-item-date">10-15</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/sh/xajq/5401119.html" class="related-list-item-link" title="30岁后女人一周几次房事最合适" target="_blank">30岁后女人一周几次房事最合适</a>
					<span class="related-list-item-date">10-15</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/jy/cnr/5394484.html" class="related-list-item-link" title="男子性能力检查的各级标准！" target="_blank">男子性能力检查的各级标准！</a>
					<span class="related-list-item-date">09-30</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/sh/fs/5394483.html" class="related-list-item-link" title="谈恋爱到哪个阶段适合亲热" target="_blank">谈恋爱到哪个阶段适合亲热</a>
					<span class="related-list-item-date">09-30</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/xl/alfx/5394482.html" class="related-list-item-link" title="女生克制不住性冲动的瞬间" target="_blank">女生克制不住性冲动的瞬间</a>
					<span class="related-list-item-date">09-30</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/sh/wmxa/5394449.html" class="related-list-item-link" title="婚后男人最讨厌的7种女人" target="_blank">婚后男人最讨厌的7种女人</a>
					<span class="related-list-item-date">09-30</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/jy/cnr/5383800.html" class="related-list-item-link" title="影响男人生理反应的6个原因" target="_blank">影响男人生理反应的6个原因</a>
					<span class="related-list-item-date">09-27</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/sl/nxsl/5383797.html" class="related-list-item-link" title="男人死心塌地爱你的生理反应" target="_blank">男人死心塌地爱你的生理反应</a>
					<span class="related-list-item-date">09-27</span>
				</li>
				<li class="related-list-item" style="width: 270px;">
					<b></b>
					<a href="/sh/wmxa/5383791.html" class="related-list-item-link" title="哪些婚姻最容易导致分手?" target="_blank">哪些婚姻最容易导致分手?</a>
					<span class="related-list-item-date">09-27</span>
				</li>
			</ul>
		</div>

		<div class="mod-encyc-info mart15">
			<div class="mod-funny-title mod-m clr">
				<h2 class="mod-hot-header fll"><a class="mod-hot-header-link">搞笑<em class="encyc-pink">热图</em></a></h2>



			</div>
			<div class="mod-funny-tab">
				<div class="mod-funny-item">
					<ul class="mod-funny-item-wid">
						<li>
							<a href="/sh/wmxa/5403430.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/6B/95/o4YBAFvIB56Aav_dAAG0t9cJT1k216.jpg" alt=""></a>
							<span><a href="/sh/wmxa/5403430.html" title="婚姻容易缺少的7样东西" class="funny-item-link">婚姻容易缺少的7样东...</a></span>
						</li>
						<li>
							<a href="/xl/nx/5403426.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/6B/8F/oYYBAFvIB5qAI70zAAFVy6FvFqI362.jpg" alt=""></a>
							<span><a href="/xl/nx/5403426.html" title="男女交流的禁区分别是什么" class="funny-item-link">男女交流的禁区分别是...</a></span>
						</li>
						<li>
							<a href="/sh/xajq/5275144.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/61/3E/oYYBAFo4tJeAM63CAAF7AYrUXj497.jpeg" alt=""></a>
							<span><a href="/sh/xajq/5275144.html" title="怎样延缓男人性衰老效果最好" class="funny-item-link">怎样延缓男人性衰老效...</a></span>
						</li>
						<li>
							<a href="/sh/xajq/5276654.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/61/43/o4YBAFo4tOSAHjXoAAEV7gMopHU85.jpeg" alt=""></a>
							<span><a href="/sh/xajq/5276654.html" title="和谐性生活都有哪6个好处" class="funny-item-link">和谐性生活都有哪6个...</a></span>
						</li>
						<li>
							<a href="/sh/zw/5275155.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/61/3E/oYYBAFo4tAaAS20tAAHdBCaQrbI74.jpeg" alt=""></a>
							<span><a href="/sh/zw/5275155.html" title="盘点女人房事不佳三大原因" class="funny-item-link">盘点女人房事不佳三大...</a></span>
						</li>
						<li>
							<a href="/sh/xajq/5275802.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/61/43/o4YBAFo4s7yAM0SfAAGmj_Ow_sk51.jpeg" alt=""></a>
							<span><a href="/sh/xajq/5275802.html" title="男人最希望女人做什么" class="funny-item-link">男人最希望女人做什么</a></span>
						</li>
						<li>
							<a href="/sh/xajq/5275645.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/61/3E/oYYBAFo4s9aAca29AAFUuzW5eH801.jpeg" alt=""></a>
							<span><a href="/sh/xajq/5275645.html" title="如何快速提升女人房事时间" class="funny-item-link">如何快速提升女人房事...</a></span>
						</li>
						<li>
							<a href="/sh/kjjq/5274863.html"><img width="150" height="110" src="https://file.fh21static.com/fhfile1/M00/61/3E/oYYBAFo4tMmAcv8zAAFZcNMAVs021.jpeg" alt=""></a>
							<span><a href="/sh/kjjq/5274863.html" title="女人逃不掉的27岁定律" class="funny-item-link">女人逃不掉的27岁定...</a></span>
						</li>
					</ul>
				</div>
			</div>
		</div>








		<script type="application/ld+json">
            {
                "@context": "https://zhanzhang.baidu.com/contexts/cambrian.jsonld",
                                "@id": "https://sex.fh21.com.cn/sl/xzs/5403386.html",
                                "title": "哪些坏习惯会引起男人性衰退？",

                "images": ["https://file.fh21static.com/fhfile1/M00/6B/94/ooYBAFvH_omACw5_AAFn0VjAkd4738.jpg","https://file.fh21static.com/fhfile1/M00/6B/8E/oYYBAFvH_omAdBonAAHBHDZZGzc683.jpg","https://file.fh21static.com/fhfile1/M00/6B/94/ooYBAFvH_omAEVtMAAFdHBDfEE4690.jpg"],

                "description": "随着社会发展的加快，人们的生活压力越来越大，导致男人的性能力逐渐下降。性能力的下降就会引起性生活的不和谐，长时间这样严重影响着夫妻生活，其实导致男性性能力下降和日常生活中的行为习惯也有很大的关系，那么生活中哪些坏习惯会引起男性性能力衰退呢?一起来了解一下吧!",
                "pubDate": "2018-10-24T11:56:35"
            }
        	</script>




	</div>

	<div class="wrap-sex-detail-right clr">

		<div class="ad top">
			<iframe frameborder="0" scrolling="no" src="https://boardx.huanqiu.com/smu0/j.html#e309989e7e7e5ddpu3145753r72835344517156700000t1544543024548(%E5%93%AA%E4%BA%9B%E5%9D%8F%E4%B9%A0%E6%83%AF%E4%BC%9A%E8%AE%A9%E7%94%B7%E4%BA%BA%E6%80%A7%E8%A1%B0%E9%80%80%EF%BC%9F)m8u9mxx42pglk84jkmarftj4i" style="width: 300px; height: 250px; margin: 0px; padding: 0px; border: 0px;"></iframe>            </div>



		<style>
			.wrap-sex-detail-right .detail-right-tips .right-tips-lists .right-tips-lists-item .right-tips-lists-num {
				margin-right: 12px;
			}
		</style>
		<div class="detail-right-tips">
			<h3 class=" detail-right-tips-tit">
				<b class=" tips-tit-fb">排行<span class="detail-right-tips-titcol">榜</span></b>
				<i class=" detail-right-tips-titimg "><img src="//static2.fh21.com.cn/sex//images/ico-lines.png"></i>
			</h3>

			<ul class="right-tips-lists clr">
				<li class="right-tips-lists-item item-impor">
					<span class="right-tips-lists-num item-num-impor">1</span><a href="/xl/nvx/5403359.html" title="最让女人迷恋的几种男性类型" target="_blank" class="col333">最让女人迷恋的几种男性类型</a>
				</li>
				<li class="right-tips-lists-item item-impor">
					<span class="right-tips-lists-num item-num-impor">2</span><a href="/sh/fs/5403356.html" title="如何让事业与情爱兼得" target="_blank" class="col333">如何让事业与情爱兼得</a>
				</li>
				<li class="right-tips-lists-item item-impor">
					<span class="right-tips-lists-num item-num-impor">3</span><a href="/fqsh/5236482.html" title="家长对于孩子的性教育好合理" target="_blank" class="col333">家长对于孩子的性教育好合理</a>
				</li>
				<li class="right-tips-lists-item">
					<span class="right-tips-lists-num">4</span><a href="/fqsh/5236478.html" title="每周性生活几次对女性最有利？" target="_blank" class="col333">每周性生活几次对女性最有利？</a>
				</li>
				<li class="right-tips-lists-item">
					<span class="right-tips-lists-num">5</span><a href="/fqsh/5236476.html" title="夫妻完美的性标准是什么？" target="_blank" class="col333">夫妻完美的性标准是什么？</a>
				</li>
				<li class="right-tips-lists-item">
					<span class="right-tips-lists-num">6</span><a href="/sh/laxs/5236443.html" title="只为了1000块女大学生抢了我老公" target="_blank" class="col333">只为了1000块女大学生抢了我老</a>
				</li>
				<li class="right-tips-lists-item">
					<span class="right-tips-lists-num">7</span><a href="/sh/laxs/5236442.html" title="感谢你陪我尝尽了青春期的酸甜苦辣" target="_blank" class="col333">感谢你陪我尝尽了青春期的酸甜苦辣</a>
				</li>
				<li class="right-tips-lists-item">
					<span class="right-tips-lists-num">8</span><a href="/sh/laxs/5236432.html" title="与公司年轻白领的经历让我难忘" target="_blank" class="col333">与公司年轻白领的经历让我难忘</a>
				</li>

			</ul>
		</div>





		<style>
			.wrap-sex-detail-right .right-test .test-btn {
				height: 21px;
				line-height: 21px;
				font-size: 12px;
			}
		</style>
		<div class="right-test m-col-space">
			<h3 class="right-test-tit clr"><a href="http://test.fh21.com.cn/lxzc/" class="right-test-tit-link " target="_blank">热门<b class="right-test-tit-ce">测</b><span class="right-test-tit-shi">试</span></a>
			</h3>
			<a href="http://test.fh21.com.cn/lxzc/" target="_blank">
				<ul class="right-test-tips">
					<li class="right-test-tips-tag"></li>
					<li class="right-test-tips-tag"></li>
					<li class="right-test-tips-tag"></li>
				</ul>
			</a>
			<div class="right-test-contents">
				<dl class="right-test-content">
					<a target="blank" href="http://test.fh21.com.cn/lxzc/show_47.html" title="性新鲜感" class="right-test-content-link"><dt><img src="https://sex.fh21.com.cn/templets/default/sex/image/47.jpg"></dt></a>
					<a target="blank" href="http://test.fh21.com.cn/lxzc/show_47.html" title="性新鲜感" class="right-test-content-link"><dd>性新鲜感测</dd></a>
				</dl>
				<dl class="right-test-content">
					<a target="blank" href="http://test.fh21.com.cn/lxzc/show_151.html" title="如何面对一夜情" class="right-test-content-link"><dt><img src="https://sex.fh21.com.cn/templets/default/sex/image/151.jpg"></dt></a>
					<a target="blank" href="http://test.fh21.com.cn/lxzc/show_151.html" title="如何面对一夜情" class="right-test-content-link"><dd>如何面对一</dd></a>
				</dl>
				<dl class="right-test-content marno">
					<a target="blank" href="http://test.fh21.com.cn/lxzc/show_169.html" title="性浓度测试" class="right-test-content-link"><dt><img src="https://sex.fh21.com.cn/templets/default/sex/image/169.jpg"></dt></a>
					<a target="blank" href="http://test.fh21.com.cn/lxzc/show_169.html" title="性浓度测试" class="right-test-content-link"><dd>性浓度测试</dd></a>
				</dl>
			</div>
			<a target="blank" href="http://test.fh21.com.cn/lxzc/show_47.html" class="right-test-content-link test-btn">马上自测</a>
			<a target="blank" href="http://test.fh21.com.cn/lxzc/show_151.html" class="right-test-content-link test-btn">马上自测</a>
			<a target="blank" href="http://test.fh21.com.cn/lxzc/show_169.html" class="right-test-content-link test-btn">马上自测</a>
			<p class="right-test-num">
				<a target="blank" href="http://test.fh21.com.cn/lxzc/show_47.html" class="right-test-num-link">参与
					<span class="right-test-num-linkclo">1174333</span>人
				</a>
				<a target="blank" href="http://test.fh21.com.cn/lxzc/show_151.html" class="right-test-num-link">
					参与<span class="right-test-num-linkclo">449374</span>人
				</a>
				<a target="blank" href="http://test.fh21.com.cn/lxzc/show_169.html" class="right-test-num-link" id="marrno">
					参与<span class="right-test-num-linkclo">227865</span>人
				</a>
			</p>
		</div>                        <div class="ad">
		<div id="_57vf2umflxjn8o7xi00ufmvx6r" style=""><span style="width:0px;height:0px;"></span><iframe width="300" frameborder="0" height="250" scrolling="no" src="https://2.feihua.net.cn/fcmbqyoblk?dae=UXS&amp;sez=VSS&amp;ze=MU_ZT-UX&amp;hpq=9LLHK1V.1Ue1UeK6P1z79UT1z4GE1z4F1UeKD1UePRK1UeXWSVV_Y1z9LED&amp;loe=Z7V34U-UW-UV3XUW53UY62Y-4-33V4U-&amp;zne=S&amp;lnkp=U&amp;lwn=T-USPTSWS&amp;zpi=gslkzonrs&amp;loo=T-SVPU-UV&amp;yay=tse0_&amp;wjp=T&amp;zeo=S&amp;atlo=TTTSSU,TTSSSS&amp;zwe=W&amp;leo=0TP0T&amp;lo=_UWPTTXT&amp;lyo=T-SVP-TT&amp;wne=U&amp;pln=TXWWXWVSUVXYS&amp;zy=V&amp;swt=1"></iframe></div><script type="text/javascript" src="//1.feihua.com/ra3a1ecf97f6c3f53ddb4c3e8da4f73ffa54acde0b36.js"></script>            </div>

		<div class="right-ask m-col-space">
			<div class="right-ask-top clr">
				<h3 class="right-ask-tit">
					两性<span class="right-ask-tit-col">问答</span>
				</h3>
				<img src="//static2.fh21.com.cn/sex//images/ico-xline.png" class="right-ask-xline">
				<a href="https://iask.fh21.com.cn/question/list-209.html" target="_blank" class="right-ask-more">更多</a>
				<i></i>
			</div>
			<ul class="right-ask-lists clr">
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104235124.html" target="_blank" class="ask-list-item-link">没有带套，也没有真正插进去会不会</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104237982.html" target="_blank" class="ask-list-item-link">婚检的时候检查出梅毒</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104234619.html" target="_blank" class="ask-list-item-link">阴茎充血不足如何治疗</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104211733.html" target="_blank" class="ask-list-item-link">尖锐湿疣可以打飞机吗</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104238527.html" target="_blank" class="ask-list-item-link">宫外孕44天没有孕囊只有包块黄体</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104235362.html" target="_blank" class="ask-list-item-link">排卵试纸试到什么颜色才是排卵期</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104229228.html" target="_blank" class="ask-list-item-link">月经一个月只来一点点</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104238988.html" target="_blank" class="ask-list-item-link">龟头起了些红点怎么回事啊</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104239135.html" target="_blank" class="ask-list-item-link">手淫会引起血精吗？</a>
				</li>
				<li class="ask-list-item">
					<b class="aks-list-item-ico"></b>
					<a href="//iask.fh21.com.cn/question/104231344.html" target="_blank" class="ask-list-item-link">男性阴囊长颗痘痘怎么回事</a>
				</li>

			</ul>
		</div>                        <div class="ad">
		<!--<script type="text/javascript" src="//1.feihua.com/wf3a1ecf97f6c3f438db4c3e8da4f73ffa54acde0b36.js"></script>-->
	</div>

		<div class="right-topics m-col-space" slide-box="" tab-item=".right-topics-guid .right-topics-item" tab-item-active-class="tit-active" main-item=".right-topics-lists">
			<div class="right-topics-nav clr">
				<ol class="right-topics-tit"><span class="right-topics-tit-link">两性话题</span></ol>
				<div class="clr"></div>
				<ul class="right-topics-guid">
					<li class="right-topics-item tit-active"><a href="https://sex.fh21.com.cn/sh/zw/" target="_blank" class="right-topics-link ">性故事</a></li>
					<li class="right-topics-item"><a href="https://sex.fh21.com.cn/sl/" target="_blank" class="right-topics-link">性保健</a></li>
					<li class="right-topics-item"><a href="https://sex.fh21.com.cn/jy/" target="_blank" class="right-topics-link">性教育</a></li>
				</ul>
			</div>
			<div class="right-topics-box">
				<ul class="right-topics-lists clr">
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">1</span>
						<a href="/sh/zw/5381449.html" target="_blank" class="col333">增强青少年的自我保护意识 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">2</span>
						<a href="/sh/zw/5375959.html" target="_blank" class="col333">恋爱结婚的我们初识那里 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">3</span>
						<a href="/sh/zw/5366407.html" target="_blank" class="col333">男人用什么证明贞洁 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">4</span>
						<a href="/sh/zw/5362501.html" target="_blank" class="col333">单身久了就有很多问题需要关注 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">5</span>
						<a href="/sh/zw/5362500.html" target="_blank" class="col333">初恋男性需要注意这些禁忌事项 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">6</span>
						<a href="/sh/zw/5352654.html" target="_blank" class="col333">看得见与看不见的感情漩涡 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">7</span>
						<a href="/sh/zw/5332919.html" target="_blank" class="col333">出轨打破了我的生活平衡 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">8</span>
						<a href="/sh/zw/5332917.html" target="_blank" class="col333">不小心陷入都市男女的感情纠葛 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">9</span>
						<a href="/sh/zw/5332916.html" target="_blank" class="col333">恋上男下属傻傻把自己交出去 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">10</span>
						<a href="/sh/zw/5332911.html" target="_blank" class="col333">悲愤交加妻子出轨怀上别人的孩子 </a>
					</li>

				</ul>
				<ul class="right-topics-lists clr" style="display:none">
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">1</span>
						<a href="/sl/hy/5403412.html" target="_blank" class="col333">怎么样才能正确的避孕呢 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">2</span>
						<a href="/sl/xzs/5403390.html" target="_blank" class="col333">总结房事对女人的保健功能 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">3</span>
						<a href="/sl/xzs/5403387.html" target="_blank" class="col333">哪些食物会提高人们性能力？ </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">4</span>
						<a href="/sl/nxsl/5403355.html" target="_blank" class="col333">女人“清心寡欲”的5大因素 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">5</span>
						<a href="/sl/xzs/5403082.html" target="_blank" class="col333">多喝水有助预防尿路感染 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">6</span>
						<a href="/sl/xzs/5403081.html" target="_blank" class="col333">肾病患者如何过性生活？ </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">7</span>
						<a href="/sl/xgc/5403080.html" target="_blank" class="col333">长期节欲真的会影响男女健康？ </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">8</span>
						<a href="/sl/xzs/5403079.html" target="_blank" class="col333">一些可能会影响到性的疾病 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">9</span>
						<a href="/sl/xzs/5403078.html" target="_blank" class="col333">食色男女切记！这些“败性”食物要 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">10</span>
						<a href="/sl/nxsl/5403074.html" target="_blank" class="col333">过早性行为和身高受限有关 </a>
					</li>

				</ul>
				<ul class="right-topics-lists clr" style="display:none">
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">1</span>
						<a href="/jy/zj/5403398.html" target="_blank" class="col333">理想的爱情是什么样的？ </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">2</span>
						<a href="/jy/cnr/5403311.html" target="_blank" class="col333">如何发现男人对你是真心的 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num  item-num-impor ">3</span>
						<a href="/jy/cnr/5403072.html" target="_blank" class="col333">三招教你有效的预防性病 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">4</span>
						<a href="/jy/cnr/5403066.html" target="_blank" class="col333">男性常见的五种房事错误观念 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">5</span>
						<a href="/jy/cnr/5403065.html" target="_blank" class="col333">性生活对男女身心的益处 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">6</span>
						<a href="/jy/cnr/5402788.html" target="_blank" class="col333">男人性障碍乱补不会奏效 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">7</span>
						<a href="/jy/cnr/5398252.html" target="_blank" class="col333">揭秘男人行房的3大雷区 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">8</span>
						<a href="/jy/cnr/5397704.html" target="_blank" class="col333">性生活常出现的一些误区 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">9</span>
						<a href="/jy/cnr/5397659.html" target="_blank" class="col333">新婚之夜该怎么度过合理 </a>
					</li>
					<li class="right-topics-lists-item">
						<span class="right-tips-lists-num ">10</span>
						<a href="/jy/cnr/5394484.html" target="_blank" class="col333">男子性能力检查的各级标准！ </a>
					</li>

				</ul>

			</div>
		</div>
	</div>
</div>
</body>
</html>
