<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/10
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>视频</title>
</head>
<body>
<video width="620" height="440" controls>
    <source src="/video${uuid}/${name}.mp4" type="video/mp4">
</video>
</body>
</html>
