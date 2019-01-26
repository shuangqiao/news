<%--
  Created by IntelliJ IDEA.
  User: shuangqiao
  Date: 2016/11/18
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户列表管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/newManage/common.css">
</head>
<body>
<div id="visitorSumDiv">
    <div id="myTabContent" class="tab-content">
        <table class="table table-bordered table-hover  table-condensed tablesorter" style="width:99%;">
            <thead>
            <tr>
                <th sorter="true" style="text-align:center; width:10px;background-color: #f7f7f7;">id</th>
                <th sorter="true" style="text-align: left; width: 180px;background-color: #f7f7f7;">用户名<div class="ui-table-hsort skin-noGrid-table-hsort"></div></th>
                <th sorter="true" style="text-align: left; width: 120px;background-color: #f7f7f7;">密码<div class="ui-table-hsort skin-noGrid-table-hsort"></div></th>
                <th sorter="true" style="text-align: left; width: 80px;background-color: #f7f7f7;">电话</th>
                <th sorter="true" style="text-align: left; width: 80px;background-color: #f7f7f7;">状态</th>
                <th sorter="true" style="text-align: left; width: 100px;background-color: #f7f7f7;">注册时间<div class="ui-table-hsort skin-noGrid-table-hsort"></div></th>
            </tr>
            </thead>
            <c:forEach items="${pageInfo.list }" var="list" varStatus="vs">
                    <tr id="tr_${list.id}" class="trs">
                        <td style="line-height: 30px; text-align: center;">${list.id}</td>
                        <td style="line-height: 30px;">${list.username }</td>
                        <td style="line-height: 30px;">${list.password }</td>
                        <td style="line-height: 30px;">${list.phone }</td>
                        <td style="line-height: 30px;">${list.status }</td>
                        <td style="line-height: 30px;">
                            <fmt:formatDate pattern="yyyy-MM-dd" value="${list.createdTime }"></fmt:formatDate></td>
                    </tr>
            </c:forEach>
            </tbody>
        </table>

        <div class="list-pager" ><%@include file="../page.jsp"%></div>
    </div>
    </div>
</body>
</html>
