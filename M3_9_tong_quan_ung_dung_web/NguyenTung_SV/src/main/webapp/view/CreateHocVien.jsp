<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/8/2022
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Day la Create</title>
    <style>
        body{
            
        }
    </style>
</head>
<body>
<form method="post" action="/home?action=create">
    <table>
        <tr>
            <td><input name="name"></td>
        </tr>
        <tr>
            <td><input name="address"></td>
        </tr>
        <tr>
            <td><input name="date" type="date"></td>
        </tr>

        <tr>
            <td><input name="phone"></td>
        </tr>
        <tr>
            <td><input name="email"></td>
        </tr>

        <tr>
            <td>
                <select name="idClassRoom">
                    <c:forEach items="${listClass}" var="c">
                        <option value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
    </table>
    <button type="submit">Create</button>
</form>
</body>
</html>
