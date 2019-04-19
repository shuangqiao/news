<%--
  Created by IntelliJ IDEA.
  User: shuangqiao
  Date: 2016/7/3
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        function articleFormCommit() {
            if($(".categoryId").val()=='0'){
                alert("还没有选择分类！")
            }else if ($(".title").val()==''||$(".title").val()== null){
                alert("忘记写标题了！")
            }else if ($(".headImg").val()==''||$(".headImg").val()== null){
                alert("选择头像！")
            }else if ($(".authorName").val()==''||$(".authorName").val()== null){
                alert("选择作者！")
            }else {
            var category = document.getElementById("select").value;
            var textwords =  $(".words").val().replace(/\n/ig,'</p><p>');
            $.ajax({
                type : 'POST',
                url : '${getPageHost}/manage/writeAdd',
                data : {
                    title : $(".title").val(),
                    words : textwords,
                    author : $(".authorName").val(),
                    categoryId: category,
                    headImg:$(".headImg").val()
                },
                success : function(data) {
                    alert("提交成功");
                },
                error : function() {
                     console.log("错了");
                }
            })
            }
        }
    </script>
    <style type="text/css">
        .sub{
            width: 60px;
            height: 35px;
        }
        #select{
            width: 90px;
            height: 40px;
        }
    </style>
</head>
<body>
<form id="adviseForm" action="" method="post">
    <table style="border-collapse:separate; border-spacing:10px;">
        <tr>
            <td style="width: 30px;">&nbsp;</td>
            <td rowspan="1">
                <input type="text" name="title" class="title" placeholder="这里输入标题" style="width:600px;color: rgb(0, 0, 0); font-size: 20px; font-family: 微软雅黑; font-weight: normal; background-color: transparent;"/>
            </td>
        </tr>
        <tr>
            <td style="width: 30px;">&nbsp;</td>
            <td rowspan="1">
                <textarea rows="20" cols="60" wrap="virtual" name="words" class="words" id="ws" placeholder="这里输入文章正文" style="height: 400px; width: 1000px"></textarea>
            </td>
        </tr>
        <tr>
            <td style="width: 30px;">&nbsp;</td>
            <td>
                <select id="selectCategory" class="categoryId">
                    <c:forEach items="${categoryList}" var="clist" varStatus="a">
                        <option value=${clist.categoryId}>${clist.name}</option>
                    </c:forEach>
                </select>
            </td>
            <td >
                <select id="selectAuthor" class="authorName">
                    <c:forEach items="${authorList}" var="alist" varStatus="a">
                        <option value=${alist.name}>${alist.name}</option>
                    </c:forEach>
                 </select>
                <select id="selectHead" class="headImg">
                     <c:forEach items="${authorList}" var="alist" varStatus="a">
                        <option value=${alist.headImg}>${alist.headImg}</option>
                     </c:forEach>
                 </select>
            </td>
        </tr>
        <tr>
            <td style="width: 30px;">&nbsp;</td>
            <td>
                <input class="sub" type="button" onclick="articleFormCommit();" value="提 交"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input class="sub" type="reset" value="清 空"/>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>