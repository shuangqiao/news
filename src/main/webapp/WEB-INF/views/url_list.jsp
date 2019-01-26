<%--
  Created by IntelliJ IDEA.
  User: shuangqiao
  Date: 2016/11/18
  Time: 23:48
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
    <title>友情链接管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/newManage/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/newManage/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
<div class="button_content" style="float: right;margin-right:48px;">
    <div class="pull-right">
        <div class="btn-group"> <input type="text" readonly style="width: 80px" class="btn btn-primary btn-sm addbtn" data-toggle="modal" data-target="#addModal" onclick="addUrl()" value="新建链接" /></div>
    </div>
    </div>
<div id="visitorSumDiv">
    <div id="myTabContent" class="tab-content">
        <table class="table table-bordered table-hover  table-condensed tablesorter" style="width:99%;">
            <thead>
            <tr>
                <th sorter="true" style="text-align:center; width:10px;background-color: #f7f7f7;">id</th>
                <th sorter="true" style="text-align: left; width: 120px;background-color: #f7f7f7;">名称<div class="ui-table-hsort skin-noGrid-table-hsort"></div></th>
                <th sorter="true" style="text-align: left; width: 100px;background-color: #f7f7f7;">链接<div class="ui-table-hsort skin-noGrid-table-hsort"></div></th>
                <th sorter="true" style="text-align: left; width: 80px;background-color: #f7f7f7;">title内容</th>
                <th sorter="true" style="text-align: left; width: 80px;background-color: #f7f7f7;">朋友名称</th>
                <th sorter="true" style="text-align: left; width: 60px;background-color: #f7f7f7;">状态<div class="ui-table-hsort skin-noGrid-table-hsort"></div></th>
                <th sorter="true" style="text-align: left; width: 200px;background-color: #f7f7f7;">操作</th>
            </tr>
            </thead>
            <c:forEach items="${pageInfo.list }" var="list" varStatus="vs">
                <tr id="tr_${list.id}" class="trs">
                    <td style="line-height: 30px; text-align: center;">${list.id}</td>
                    <td style="line-height: 30px;">${list.name }</td>
                    <td style="line-height: 30px;">${list.url }</td>
                    <td style="line-height: 30px;">${list.title }</td>
                    <td style="line-height: 30px;">${list.friendName }</td>
                    <td style="line-height: 30px;" id="td_${list.id}">
                    <c:if test="${list.status=='0'}">未启用</c:if>
                        <c:if test="${list.status=='1'}">启用</c:if>
                    </td>
                    <td style="line-height: 30px;">
                        <input type="text" readonly style="width: 80px" class="btn btn-primary btn-sm addbtn"  onclick="updateUrl(${list.id})" value="修改" />
                        <input type="text" readonly style="width: 80px" class="btn btn-primary btn-sm addbtn"  onclick="updateStatus(${list.id},1)" value="启用" />
                        <input type="text" readonly style="width: 80px" class="btn btn-primary btn-sm addbtn"  onclick="updateStatus(${list.id},0)" value="停用" />
                        <input type="text" readonly style="width: 80px" class="btn btn-primary btn-sm addbtn"  onclick="deleteUrl(${list.id})" value="删除" />
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="list-pager" ><%@include file="../page.jsp"%></div>
    </div>
</div>

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="min-width: 500px;top:120px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h5 class="modal-title" id="myModalLabel">新建友情链接</h5>
            </div>
            <form id="addUrl" class="form-horizontal" style="display: block;">
                <div class="modal-body" style="padding-top: 0px;">
                    <div class="control-group">
                        <label class="control-label">链接基本信息</label>
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">名称：</label>
                        <span style="color:red; margin-left:18px;">*</span>&nbsp;&nbsp;
                        <input type="text" id="urlName" placeholder="请输入站点名称" style="width: 300px; text-indent: 0.2em;">
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">链接：</label>
                        <span style="color:red;margin-left: 20px;"></span>&nbsp;&nbsp;
                        <input style="width: 300px; text-indent: 0.2em;" id="url" type="text">
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">朋友名称：</label>
                    <span style="color:red;margin-left: 20px;"></span>&nbsp;&nbsp;
                    <input style="width: 300px; text-indent: 0.2em;" id="friend" type="text">
                </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">title的内容：</label>
                        <span style="color:red;margin-left: 20px;"></span>&nbsp;&nbsp;
                        <input style="width: 300px; text-indent: 0.2em;" id="title" type="text">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-sm" id="add_btn" style="" onclick="addBtn()">新建链接</button>
                    <button type="button" id="modalmiss" class="btn btn-default btn-sm" data-dismiss="modal">取 消</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="min-width: 500px;top:120px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h5 class="modal-title">新建友情链接</h5>
            </div>
            <form id="updateUrl" class="form-horizontal" style="display: block;">
                <div class="modal-body" style="padding-top: 0px;">
                    <div class="control-group">
                        <label class="control-label">链接基本信息</label>
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">id：</label>
                        <span style="color:red; margin-left:18px;">*</span>&nbsp;&nbsp;
                        <span type="text" id="update_id"></span>
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">名称：</label>
                        <span style="color:red; margin-left:18px;">*</span>&nbsp;&nbsp;
                        <input type="text" id="update_name" placeholder="请输入站点名称" style="width: 300px; text-indent: 0.2em;">
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">链接：</label>
                        <span style="color:red;margin-left: 20px;">*</span>&nbsp;&nbsp;
                        <input style="width: 300px; text-indent: 0.2em;" id="update_url" type="text">
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">朋友名称：</label>
                        <span style="color:red;margin-left: 20px;">*</span>
                        <input style="width: 300px; text-indent: 0.2em;" id="update_friend" type="text">
                    </div>
                    <div class="control-group">
                        <label class="control-label" style="color: #131212;">title的内容：</label>
                        <span style="color:red;margin-left: 20px;">*</span>
                        <input style="width: 300px; text-indent: 0.2em;" id="update_title" type="text">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-sm" id="update_btn" style="" onclick="commitUpdate()">提交修改</button>
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">取 消</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function addUrl(){
        $("#addModal").modal('show');
    }
    function addBtn(){
        var name = $("#urlName").val();
        var url = $("#url").val();
        var friend = $("#friend").val();
        var title = $("#title").val();
        $.ajax({
            type : 'POST',
            url : '${pageContext.request.contextPath}/friend/addUrl',
            data:{
                name : name,
                url : url,
                friendName : friend,
                title : title,
            },
            success : function(data) {
               if(data=='0'){
                   alert('链接不合法！')
               }else{
                   alert('添加成功！')
                   window.location.href = '/friend/urlList/1';
               }
            },
            error : function() {
                console.log("错了");
            }
        });
    }

    function updateUrl(id){
        $.ajax({
            type : 'POST',
            url : '${pageContext.request.contextPath}/friend/findById',
            data:{
                id : id,
            },
            success : function(data) {
                $("#update_id").text(id);
                $("#update_name").val(data.name);
                $("#update_url").val(data.url);
                $("#update_friend").val(data.name);
                $("#update_title").val(data.title);
                $("#updateModal").modal('show');
            },
            error : function() {
                console.log("错了");
            }
        });
    }
    function commitUpdate(){
        $.ajax({
            type : 'POST',
            url : '${pageContext.request.contextPath}/friend/update',
            data:{
                id : $("#update_id").text(),
                name : $("#update_name").val(),
                url : $("#update_url").val(),
                friendName : $("#update_friend").val(),
                title : $("#update_title").val(),
            },
            success : function(data) {
                if(data=='0'){
                    alert('链接不合法！')
                }else{
                    alert('添加成功！')
                    window.location.href = '/friend/urlList/1';
                }
            },
            error : function() {
                console.log("错了");
            }
        });
    }

    function updateStatus(id,status){
        $.ajax({
            type : 'POST',
            url : '${pageContext.request.contextPath}/friend/updateStatus',
            data:{
                id : id,
                status : status,
            },
            success : function(data) {
                if(data=='1'&&status=='1'){
                    $("#td_"+id).html('');
                    $("#td_"+id).html('启用');
                }else if(data=='1'&&status=='0'){
                    $("#td_"+id).html('');
                    $("#td_"+id).html('未启用');
                }else{
                    alert(data)
                }
            },
            error : function() {
                console.log("错了");
            }
        });
    }

    function deleteUrl(id){
        $.ajax({
            type : 'POST',
            url : '${pageContext.request.contextPath}/friend/delUrl',
            data:{
                id : id,
            },
            success : function(data) {
               $("#tr_"+id).css("display","none");
            },
            error : function() {
                console.log("错了");
            }
        });
    }
</script>
</html>
