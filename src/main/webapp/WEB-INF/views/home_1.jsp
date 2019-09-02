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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>情感夜话</title>
    <link href="/css/style.css" type="text/css" rel="stylesheet"/>
    <link href="/css/base.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="/js/banner1.js"></script>
</head>

<body>
<jsp:include page="header.jsp"/>
<div class="content">
    <!--<div class="entry">
       <div class="news">
          <ul>
              <li><a href="" title="">女性健康</a>&nbsp;|&nbsp;</li>
              <li><a href="" title="">男性健康</a>&nbsp;|&nbsp;</li>
          </ul>
       </div>
       <div class="comment">
          <ul>
              <li><a href="" title="">生理卫生</a>&nbsp;|&nbsp;</li>
              <li><a href="" title="">常见误区</a>&nbsp;|&nbsp;</li>
          </ul>
          <ul>
              <li><a href="" title="">每周夜话</a>&nbsp;|&nbsp;</li>
          </ul>
       </div>
       <div class="date">
          <ul>
              <li><a href="" title="">青春往事</a>&nbsp;|&nbsp;</li>
              <li><a href="" title="">国内</a>&nbsp;|&nbsp;</li>
          </ul>
       </div>
       <div class="industry">
           <ul>
              <li><a href="" title="">历史上的今天</a>&nbsp;|&nbsp;</li>

          </ul>
       </div>
    </div>--><!--entry end-->
    <div class="clear"></div>
    <div class="content_left">
        <div class="left_top">
            <div class="left_top_zuo">
                <div id="fader">
                    <ul>
                        <li><a href="" title=""><img src="/images/01.jpg" width="372px" height="242px"
                                                     alt="李克强在座谈会频发问要求官员不要念稿"></a></li>
                        <li><a href="" title=""><img src="/images/02.jpg" width="372px" height="242px"
                                                     alt="地铁无WIFI覆盖就别怪它影响运行"></a></li>
                        <li><a href="" title=""><img src="/images/03.jpg" width="372px" height="242px"
                                                     alt="全球生育子女条件排名榜出炉 瑞士夺冠"></a></li>
                        <li><a href="" title=""><img src="/images/04.jpg" width="372px" height="242px"
                                                     alt="《看客》美国大选特刊：奥巴马，总统难做"></a></li>
                        <li><a href="" title=""><img src="/images/05.jpg" width="372px" height="242px"
                                                     alt="《看客》美国大选特刊之二：总统的“备胎”"></a></li>
                    </ul>
                </div><!--fader(banner) end-->
                <script type="text/javascript" src="/js/banner2.js"></script>
                <div class="scdt">
                    <h1>女性健康</h1>
                    <div class="intro">
                        <c:forEach items="${WOMAN_LIST}" var="woman_list" begin="0" end="0">
                            <a href="/detail/${woman_list.id}" title="${woman_list.title}"><img src="/images/scdt.jpg"
                                                                                                width="140px"
                                                                                                height="113px" alt=""/></a>
                            <h2><a href="/detail/${woman_list.id}" title="${woman_list.title}">${woman_list.title}</a>
                            </h2>
                            <p>${woman_list.words}<a href="/detail/${woman_list.id}"
                                                     title="${woman_list.title}">[详细]</a></p>
                        </c:forEach>
                    </div><!--intro end-->
                    <div class="list">
                        <ul>
                            <c:forEach items="${WOMAN_LIST}" var="woman_list" begin="1" varStatus="vs">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a
                                        href="/detail/${woman_list.id}" title="">${woman_list.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div><!--list end-->
                </div><!--scdt end-->
                <div class="hyaq">
                    <h1>两性关系</h1>
                    <div class="intro">
                        <c:forEach items="${SEX_LIST}" var="sex_list" begin="0" end="0">
                            <a href="/detail/${sex_list.id}" title="${sex_list.title}"><img src="/images/hyaq.jpg"
                                                                                            width="140px" height="113px"
                                                                                            alt=""/></a>
                            <h2><a href="/detail/${sex_list.id}" title="${sex_list.title}">${sex_list.title}</a></h2>
                            <p>${sex_list.words}<a href="/detail/${sex_list.id}" title="${sex_list.title}">[详细]</a></p>
                        </c:forEach>
                    </div><!--intro end-->
                    <div class="list">
                        <ul>
                            <c:forEach items="${SEX_LIST}" begin="1" var="sex_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a
                                        href="/detail/${sex_list.id}" title="">${sex_list.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div><!--list end-->
                </div><!--hyaq end-->
                <div class="ppzs">
                    <h1>日常养生</h1>
                    <div class="list">
                        <ul>
                            <c:forEach items="${HEALTH_LIST}" begin="1" var="health_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a
                                        href="/detail/${health_list.id}" title="">${health_list.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div><!--list end-->
                </div><!--ppzs end-->
            </div><!--top_left_zuo end-->
            <div class="left_top_you">
                <div class="hyyw">
                    <h1><span>每周夜话</span><a class="more" href="" title="">更多>></a></h1>
                    <div class="clear"></div>
                    <div class="list">
                        <ul>
                            <li class="li1">
                                <c:forEach items="${WEEK_LIST}" var="week_list" begin="0" end="0">
                                    <h2><a target="_blank" href="/detail/${week_list.id}"
                                           title="${week_list.title}">${week_list.title}</a></h2>
                                    <p>${week_list.words}<a target="_blank" href="/detail/${week_list.id}"
                                                            title="${week_list.title}">[详细]</a></p>
                                </c:forEach>
                            </li>
                            <c:forEach items="${WEEK_LIST}" begin="1" var="week_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a target="_blank"
                                                                                                    href="/detail/${week_list.id}"
                                                                                                    title="">${week_list.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div><!--hyyw end-->
                <div class="hyfx">
                    <h1><span>男性健康</span><a class="more" href="" title="">更多>></a></h1>
                    <div class="clear"></div>
                    <div class="list">
                        <ul>
                            <li class="li1">
                                <c:forEach items="${MAN_LIST}" var="man_list" begin="0" end="0">
                                    <h2><a target="_blank" href="/detail/${man_list.id}"
                                           title="${man_list.title}">${man_list.title}</a></h2>
                                    <p>${man_list.words}<a target="_blank" href="/detail/${man_list.id}"
                                                           title="${man_list.title}">[详细]</a></p>
                                </c:forEach>
                            </li>
                            <c:forEach items="${MAN_LIST}" begin="1" var="man_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a target="_blank"
                                                                                                    href="/detail/${man_list.id}"
                                                                                                    title="">${man_list.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div><!--hyfx end-->
                <div class="dfdt">
                    <h1>生理卫生</h1>
                    <div class="intro">
                        <c:forEach items="${Physiology_LIST}" var="physiology_list" begin="0" end="0">
                            <a target="_blank" href="/detail/${physiology_list.id}"
                               title="${physiology_list.title}"><img src="/images/dfdt.jpg" width="140px" height="113px"
                                                                     alt=""/></a>
                            <h2><a target="_blank" href="/detail/${physiology_list.id}"
                                   title="${physiology_list.title}">${physiology_list.title}</a></h2>
                            <p>${physiology_list.words}<a target="_blank" href="/detail/${physiology_list.id}"
                                                          title="${physiology_list.title}">[详细]</a></p>
                        </c:forEach>
                    </div><!--intro end-->
                    <div class="list">
                        <ul>
                            <c:forEach items="${Physiology_LIST}" begin="1" var="physiology_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a target="_blank"
                                                                                                    href="/detail/${physiology_list.id}"
                                                                                                    title="">${physiology_list.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div><!--list end-->
                </div><!--dfdt end-->
                <div class="zhxx">
                    <h1>冷知识</h1>
                    <div class="intro">
                        <c:forEach items="${COLD_LIST}" var="cold_list" begin="0" end="0">
                            <a target="_blank" href="/detail/${cold_list.id}" title="${cold_list.title}"><img
                                    src="/images/dfdt.jpg" width="140px" height="113px" alt=""/></a>
                            <h2><a target="_blank" href="/detail/${cold_list.id}"
                                   title="${cold_list.title}">${cold_list.title}</a></h2>
                            <p>${cold_list.words}<a target="_blank" href="/detail/${cold_list.id}"
                                                    title="${cold_list.title}">[详细]</a></p>
                        </c:forEach>
                    </div><!--intro end-->
                    <div class="list">
                        <ul>
                            <c:forEach items="${COLD_LIST}" begin="1" var="cold_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a target="_blank"
                                                                                                    href="/detail/${cold_list.id}"
                                                                                                    title="">${cold_list.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div><!--list end-->
                </div><!--zhxx end-->
            </div><!--top_left_you end-->
        </div><!--left_top end-->
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a></div>
        <div class="clear"></div><!--清除浮动-->
        <div class="left_center"><a href="" title=""><img src="/images/left_center.jpg" width="754px" height="80px"
                                                          alt=""/></a></div><!--left_center end-->
        <div class="left_under">
            <div class="left_under_zuo">
                <div class="mjgf">
                    <h1>青春往事</h1>
                    <div class="intro">
                        <c:forEach items="${YOUNG_LIST}" var="young_list" begin="0" end="0">
                            <a target="_blank" href="" title="/detail/${young_list.id}"><img src="/images/mjgf.jpg"
                                                                                             width="140px"
                                                                                             height="113px" alt=""/></a>
                            <h2><a target="_blank" href="/detail/${young_list.id}"
                                   title="${young_list.title}">${young_list.title}</a></h2>
                            <p>${young_list.words}<a target="_blank" href="/detail/${young_list.id}"
                                                     title="${young_list.title}">[详细]</a></p>
                        </c:forEach>
                    </div><!--intro end-->
                    <div class="list">
                        <ul>
                            <c:forEach items="${YOUNG_LIST}" begin="1" var="young_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a target="_blank"
                                                                                                    href="/detail/${young_list.id}"
                                                                                                    title="">${young_list.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div><!--list end-->
                </div><!--mjgf end-->
            </div><!--left_under_zuo end-->
            <div class="left_under_you">

                <div class="mjgf">
                    <h1>历史上的今天</h1>
                    <div class="intro">
                        <c:forEach items="${HISTORY_LIST}" var="history_list" begin="0" end="0">
                            <a target="_blank" href="/detail/${history_list.id}" title="${history_list.title}"><img
                                    src="/images/rsrg.jpg" width="140px" height="113px" alt=""/></a>
                            <h2><a target="_blank" href="/detail/${history_list.id}"
                                   title="${history_list.title}">${history_list.title}</a></h2>
                            <p>${history_list.words}<a target="_blank" href="/detail/${history_list.id}"
                                                       title="${history_list.title}">[详细]</a></p>
                        </c:forEach>
                    </div><!--intro end-->
                    <div class="list">
                        <ul>
                            <c:forEach items="${HISTORY_LIST}" begin="1" var="history_list">
                                <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a target="_blank"
                                                                                                    href="/detail/${history_list.id}"
                                                                                                    title="">${history_list.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div><!--list end-->
                </div><!--mjgf end-->
            </div><!--left_under_you end-->
        </div><!--left_under end-->
    </div><!--content_left end-->
    <div class="content_right">
        <div class="rdsp">
            <h1>热点视频</h1>
            <ul>
                <li><a href="" title=""><img src="/images/rdsp1.jpg" width="108px" height="110px" alt=""/><span>德国会议通过...</span></a>
                </li>
                <li><a href="" title=""><img src="/images/rdsp2.jpg" width="108px" height="110px" alt=""/><span>德国会议通过...</span></a>
                </li>
                <li><a href="" title=""><img src="/images/rdsp3.jpg" width="108px" height="110px" alt=""/><span>德国会议通过...</span></a>
                </li>
                <li><a href="" title=""><img src="/images/rdsp3.jpg" width="108px" height="110px" alt=""/><span>德国会议通过...</span></a>
                </li>
            </ul>
        </div><!--rdsp end-->
        <div class="qyfc">
            <h1>明星八卦</h1>
            <div class="intro">
                <a href="" title=""><img src="/images/chgg.jpg" width="110px" height="113px" alt=""/></a>
                <p>欧洲理事会主席范龙佩23日宣布，为期两天的欧盟特别峰会未能就2014年至2020年欧盟...<a href="" title="">[详细]</a></p>
            </div><!--intro end-->
            <div class="list">
                <ul>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">法国巴黎南郊发生枪击案造成1人死亡</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">欧盟特别峰会未能就中期预算达成一致</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">美法院判阿偿13亿债务</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">欧盟将助塞浦路斯展开宏观经济调控</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href=""
                                                                                        title="">欧洲三大股指23日全线上涨</a></li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href=""
                                                                                        title="">欧洲三大股指23日全线上涨</a></li>
                </ul>
            </div><!--list end-->
        </div><!--qyfc end-->
        <div class="rwzf">
            <h1>明星专访</h1>
            <div class="intro">
                <a href="" title=""><img src="/images/rwzf1.jpg" width="110px" height="113px" alt=""/></a>
                <h2><a href="" title="">阿根廷面临内外两</a></h2>
                <p>在布宜诺斯艾利斯，罢工工人用...<a href="" title="">[详细]</a></p>
            </div><!--intro end-->
            <div class="intro">
                <a href="" title=""><img src="/images/rwzf2.jpg" width="110px" height="113px" alt=""/></a>
                <h2><a href="" title="">美财政悬崖忧虑缓</a></h2>
                <p>美国财政悬崖成为年底前全球经济的...<a href="" title="">[详细]</a></p>
            </div><!--intro end-->
            <div class="intro">
                <a href="" title=""><img src="/images/rwzf3.jpg" width="110px" height="113px" alt=""/></a>
                <h2><a href="" title="">埃及总统被反对派</a></h2>
                <p>综合国外媒体报道，埃及总统穆尔西...<a href="" title="">[详细]</a></p>
            </div><!--intro end-->
        </div><!--rwzf end-->
        <div class="dfpp">
            <h1>房地产</h1>
            <div class="intro">
                <a href="" title=""><img src="/images/dfpp.jpg" width="110px" height="113px" alt=""/></a>
                <p>欧洲理事会主席范龙佩23日宣布，为期两天的欧盟特别峰会未能就2014年至2020年欧盟...<a href="" title="">[详细]</a></p>
            </div><!--intro end-->
            <div class="list">
                <ul>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">法国巴黎南郊发生枪击案造成1人死亡</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">欧盟特别峰会未能就中期预算达成一致</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">美法院判阿偿13亿债务</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">欧盟将助塞浦路斯展开宏观经济调控</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href=""
                                                                                        title="">欧洲三大股指23日全线上涨</a></li>
                </ul>
            </div><!--list end-->
        </div><!--dfpp end-->
        <div class="zsjm">
            <h1>国外新闻</h1>
            <div class="list">
                <ul>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">法国巴黎南郊发生枪击案造成1人死亡</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">欧盟特别峰会未能就中期预算达成一致</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">美法院判阿偿13亿债务</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">欧盟将助塞浦路斯展开宏观经济调控</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href=""
                                                                                        title="">欧洲三大股指23日全线上涨</a></li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">俄罗斯担忧北约在土耳其扩大军事力量</a>
                    </li>
                    <li><img src="/images/dian.png" width="5px" height="5px" alt=""/><a href="" title="">俄罗斯担忧北约在土耳其扩大军事力量</a>
                    </li>
                </ul>
            </div><!--list end-->
        </div><!--zsjm end-->
    </div><!--content_right end-->
    <div class="clear"></div><!--清除浮动-->
    <div class="link">
        <h1></h1>
        <ul>
            <li><a href="" title="">新华网食品频道</a></li>
            <li><a href="" title="">东南网食品频道</a></li>
            <li><a href="" title="">人民网食品频道</a></li>
            <li><a href="" title="">中国食品网</a></li>
            <li><a href="" title="">中经网食品频道</a></li>
            <li><a href="" title="">中国网食品频道</a></li>
            <li><a href="" title="">CNTV美食台</a></li>
            <li><a href="" title="">中华网食品频道</a></li>
            <li><a href="" title="">中国日报网食品频道</a></li>
            <li><a href="" title="">中青网食品频道</a></li>
        </ul>
    </div><!--link end-->
</div><!--content end-->
<div class="footer">
    <ul>
        <li class="li_left">版权所有 ©&nbsp;桥帮主工作室&nbsp;&nbsp;鄂ICP备15020852-1号&nbsp;
            E-Mail:<a href="mailto:lsqlsq2013@163.com?subject=第一次问候">lsqlsq2013@163.com</a></li>
        <li class="li_right"><a href="" title="">Archiver</a>&nbsp;|&nbsp;<span><a href="" title="">桥帮主工作室</a></span>&nbsp;(
            鄂ICP备15020852-1号 )&nbsp;<a href="" title="">站长统计</a></li>
        <li class="li_left">&copy; 2018-2019 <a href="http://www.cssmoban.com" title="">www.cssmoban.com Inc.</a></li>
        <%-- <li class="li_right">GMT+8, 2013-10-28 08:53 , Processed in 0.287430 second(s), 20 queries .</li>--%>
    </ul>
</div><!--footer end-->

</body>
</html>
