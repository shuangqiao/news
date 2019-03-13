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
	<link rel="stylesheet" type="text/css" href="/css/qing_list.css" />
</head>

<body>
<jsp:include page="header.jsp"/>
<div class="wrap-sex-list">
	<div class="m-sex-detail-guid clr posr">
		<ul class="guid-list">
            <ul class="guid-list">
			<li class="guid-list-item"><a href="/" class="guid-list-item-link">情感夜话</a>&gt;</li>
			<li class="guid-list-item"><a href="/sl/" class="guid-list-item-link">主题分类</a>&gt;</li>
                <li class="guid-list-item"><a href="#" class="guid-list-item-link">${categoryName}</a>&gt;</li>
            </ul>
		</ul>
	</div>
	<div class="m-sex-lists clr">
		<div class="mod-list">
			<div class="sex-box">
				<div class="sex-list">
					<span class="sex-list-ico"></span>
					<h3 class="sex-list-tit">${categoryName}</h3>
				</div>
				<!-- list1 -->
				<div class="m-sex-list clr">
					<ul class="sex-lists clr">
                        <c:forEach items="${pageInfo.list}" var="list" varStatus="vs">
						<li class="sex-lists-item">
							<a target="_blank" href="/detail/${list.id}" title="${list.title}" class="col333">${list.title}</a>
							<span class="sex-lists-item-date"><fmt:formatDate value="${list.createdTime}" pattern="yyyy-MM-dd"/></span>
						</li>
                        </c:forEach>
						<li style="  list-style-type: none; border-bottom: 1px dashed rgb(205, 205, 205); background: transparent none repeat scroll 0px 0px; height: 20px;" class="sex-lists-item">
						</li>
					</ul>
				</div>
				<div class="wrap-list-paging">

					<p><span class="current">1</span><a href="list_5487_2.html">2</a><a href="list_5487_3.html">3</a><a href="list_5487_4.html">4</a><a href="list_5487_5.html">5</a> ...&nbsp;&nbsp;<a href="list_5487_45.html">45</a><a href="list_5487_2.html">下一页</a><a href="list_5487_45.html">末页</a></p>

   <%-- <div class="page"><%@include file="page.jsp"%></div>--%>
				</div>
			</div>
		</div>
		<div class="ad">

			<div style="width: 100%;"><ins style="display:none;"></ins></div><script type="text/javascript" src="//1.feihua.com/ry3a1ecf97f6c2fe31db4c3e8da4f73ffa54acde0b36.js"></script>
		</div>
		<!-- .友情链接 -->
		<div class="blogroll m-col-space">
			<p class="blogroll-txt">友情链接<span>|</span>合作 &nbsp;QQ412796930 :&nbsp;&nbsp;&nbsp;</p>
			<p class="blogroll-item">
				<a href="http://www.qiuyi.cn/department/519/index.html" class="blogroll-item-link" target="_blank">嫩肤保湿</a>
				<a href="http://www.romzhijia.net/phonelist/76" class="blogroll-item-link" target="_blank">世纪美讯手机ROM</a>
				<a href="http://www.58.com/gdianhouting/" class="blogroll-item-link" target="_blank">G点后庭</a>
				<a href="http://www.360bzl.com/ask/27/" class="blogroll-item-link" target="_blank">儿科</a>
				<a href="http://www.dcpfb.com/qspfgm/" class="blogroll-item-link" target="_blank">全身皮肤过敏怎么办</a>
			</p>
		</div>
	</div>
	<div class="wrap-sex-detail-right clr">
		<div class="ad top">
			<iframe frameborder="0" scrolling="no" src="https://boardx.huanqiu.com/smu0/j.html#ec035f619c3646dpu3145753r35963849292899885000t1544541054546(%E5%A4%AB%E5%A6%BB%E4%BF%9D%E5%81%A5%2C%E9%A5%AE%E9%A3%9F%E5%85%BB%E7%94%9F%2C%E4%B8%A4%E6%80%A7%E7%94%9F%E7%90%86)sbuyu5i25xilyv3grcrjgiudi" style="width: 300px; height: 250px; margin: 0px; padding: 0px; border: 0px;"></iframe>            </div>


		<style>
			.wrap-sex-detail-right .detail-right-tips .right-tips-lists .right-tips-lists-item .right-tips-lists-num {
				margin-right: 12px;
			}
		</style>
		<div class="detail-right-tips">
			<h3 class=" detail-right-tips-tit">
				<b class=" tips-tit-fb">排行<span class="detail-right-tips-titcol">榜</span></b>
			</h3>

			<ul class="right-tips-lists clr">
				<c:forEach items="${range}" var="range_list" varStatus="vs">
				<li class="right-tips-lists-item item-impor">
					<span class="right-tips-lists-num item-num-impor">${vs.index +1}</span><a href="/detail/${range_list.id}" title="${range_list.title}" target="_blank" class="col333">${range_list.title}</a>
				</li>
				</c:forEach>
			</ul>
		</div>
		<div class="ad">
		<div id="_zu0sdeiywuegzmkj63nxw29" style="width: 100%;"><em style="width:0px;height:0px;text-align:left;"></em><iframe width="300" frameborder="0" height="250" scrolling="no" src="//pos.baidu.com/s?hei=250&amp;wid=300&amp;di=u2871875&amp;ltu=https%3A%2F%2Fsex.fh21.com.cn%2Fsl%2Fxzs%2F&amp;psi=861e59a7e63992656c2234c73e4cc7c0&amp;psr=1920x1080&amp;dai=2&amp;drs=1&amp;pis=-1x-1&amp;tpr=1544541054366&amp;tcn=1544541054&amp;prot=2&amp;cec=UTF-8&amp;cmi=6&amp;ari=2&amp;ccd=24&amp;cfv=0&amp;tlm=1544541054&amp;dc=3&amp;dri=0&amp;par=1920x1040&amp;col=zh-CN&amp;cja=false&amp;ant=0&amp;exps=111000,110000&amp;pss=1903x4054&amp;cdo=-1&amp;ps=563x1151&amp;ltr=https%3A%2F%2Fsex.fh21.com.cn%2Fsl%2F&amp;cpl=4&amp;cce=true&amp;dtm=HTML_POST&amp;ti=%E5%A4%AB%E5%A6%BB%E4%BF%9D%E5%81%A5%2C%E9%A5%AE%E9%A3%9F%E5%85%BB%E7%94%9F%2C%E4%B8%A4%E6%80%A7%E7%94%9F%E7%90%86_%E4%B8%A4%E6%80%A7%E9%A2%91%E9%81%93&amp;dis=0&amp;pcs=1903x955&amp;chi=1"></iframe></div><script type="text/javascript" src="//1.feihua.com/ta3a1ecf97f6c2f03ddb4c3e8da4f73ffa54acde0b36.js"></script>
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
		</div>            <div class="ad">
		<div style=""><div id="hxhtpcgpb"><div><span id="eurlqygep" style="width:0px;height:0px;padding-bottom:0px;"></span><iframe width="300" frameborder="0" height="250" scrolling="no" src="https://pos.baidu.com/s?hei=250&amp;wid=300&amp;di=u2871925&amp;ltu=https%3A%2F%2Fsex.fh21.com.cn%2Fsl%2Fxzs%2F&amp;psi=861e59a7e63992656c2234c73e4cc7c0&amp;ti=%E5%A4%AB%E5%A6%BB%E4%BF%9D%E5%81%A5%2C%E9%A5%AE%E9%A3%9F%E5%85%BB%E7%94%9F%2C%E4%B8%A4%E6%80%A7%E7%94%9F%E7%90%86_%E4%B8%A4%E6%80%A7%E9%A2%91%E9%81%93&amp;tpr=1544541054366&amp;dri=0&amp;dis=0&amp;tcn=1544541054&amp;cpl=4&amp;ant=0&amp;par=1920x1040&amp;drs=1&amp;cja=false&amp;pss=1903x4264&amp;exps=111000,113000,110000&amp;prot=2&amp;cmi=6&amp;cfv=0&amp;pcs=1903x955&amp;ps=1088x1151&amp;dai=4&amp;ari=2&amp;psr=1920x1080&amp;dtm=HTML_POST&amp;pis=-1x-1&amp;ccd=24&amp;chi=1&amp;cec=UTF-8&amp;ltr=https%3A%2F%2Fsex.fh21.com.cn%2Fsl%2F&amp;cdo=-1&amp;col=zh-CN&amp;cce=true&amp;tlm=1544541054&amp;dc=3"></iframe><abbr class="znlrhlcjoqev" style="display:none;margin:0px;"></abbr></div></div></div><script type="text/javascript" src="//1.feihua.com/ra3a1ecf97f6c3f53ddb4c3e8da4f73ffa54acde0b36.js"></script>            </div>

		<div class="ad">
		<!--<script type="text/javascript" src="//1.feihua.com/wf3a1ecf97f6c3f438db4c3e8da4f73ffa54acde0b36.js"></script>-->
	</div>
	</div>
</div>
</body>
</html>
