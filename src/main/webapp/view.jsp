<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 褚彦梅
  Date: 2019/10/13
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>首页</title>
    <script src="${pageContext.request.contextPath}js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
<form action="${pageContext.request.contextPath}/addwork.jsp" method="post">
<table border="1" width="350" cellpadding="2"  >
    <tr>
        <td colspan="3"><h3>企业工单管理系统</h3></td>
    </tr>
    <tr>
        <td bgcolor="#8a2be2">选择项目</td>
        <td>
            <select name="projectId">
                <c:forEach items="${projects}" var="projects">
                    <option value="${projects.id}">${projects.projectname}</option>
                </c:forEach>
            </select>

        </td>
        <td>
        <input type="submit" value="确定">
        </td>
    </tr>
</table>
</form>
</center>
</body>
</html>
