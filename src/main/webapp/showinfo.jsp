<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 褚彦梅
  Date: 2019/10/13
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<c:if test="${workorders==null}">
    <jsp:forward page="/info"/>
</c:if>
<html>
<head>
    <title>信息表</title>
    <script src="${pageContext.request.contextPath}js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
    <table border="1" width="800" cellpadding="2">
        <tr>
            <td colspan="6"  align="center"><h3>企业工单列表</h3>
            </td>
        </tr>
        <tr>
            <td>工单编号</td>
            <td>项目名称</td>
            <td>执行人</td>
            <td>任务描述</td>
            <td>级别</td>
            <td>创建时间</td>
        </tr>
        <c:forEach items="${workorders}" var="w" varStatus="vs">
            <tr <c:if test="${vs.index%2==0 }">bgcolor="aqua"</c:if>>
                <td>${w.id}</td>
                <td>${w.projectname}</td>
                <td>${w.executor}</td>
                <td>${w.description}</td>
                <td>${w.orderlevel}</td>
                <td><fmt:formatDate value="${w.createdate}" pattern="yyyy-MM-dd"/></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="6"  align="center" style="color:red" >${msg}</td>
        </tr>
    </table>
</center>
</body>

</html>
