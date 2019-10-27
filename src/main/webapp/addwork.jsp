<%--
  Created by IntelliJ IDEA.
  User: 褚彦梅
  Date: 2019/10/13
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>添加页面</title>
    <script src="${pageContext.request.contextPath}js/jquery-1.12.4.js"></script>
    <script language="JavaScript">
        $(function () {
            $("#btn").submit(function () {
               if($("#zx1").val()=="") {
                   alert("执行人不能为空!");
                   return false;
               }
               if($("#de1").val()==""){
                   alert("任务描述不能为空！");
                   return false;
               }
                return true;
            })
        })
    </script>
</head>
<body>
<center>
<form action="${pageContext.request.contextPath}/add" id="btn" method="post" >
    <input type="hidden" name="projectid" value="${param.projectId}">
    <table border="1"  width="400" cellpadding="2">
        <tr>
            <td colspan="2"><h2>添加工单</h2></td>
        </tr>
        <tr>
            <td bgcolor="aqua">执行人(*)</td>
            <td><input type="text" id="zx1"  name="executor"></td>
        </tr>
        <tr>
            <td bgcolor="aqua">任务描述(*)</td>
            <td><textarea cols="20" rows="3" name="description" id="de1" ></textarea> </td>
        </tr>
        <tr>
            <td bgcolor="aqua">级别</td>
            <td><select name="orderlevel">
                <option value="1">1级</option>
                <option value="2">2级</option>
                <option value="3">3级</option>
            </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</center>
 </body>
</html>
