<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/8/2022
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body >
<form action="/home?action=search" method="post">
    <input name="search">
    <button type="submit">Search</button>
</form>
<button> <a href="/home?action=create" >Create</a></button>
<table border="1">
    <c:forEach items="${listHV}" var="hv">
        <tr>
            <td>${hv.id}</td>
            <td>${hv.name}</td>
            <td>${hv.getAddress()}</td>
            <td>${hv.date}</td>
            <td>${hv.phone}</td>
            <td>${hv.email}</td>
            <td>${hv.classRoom.name}</td>
        </tr>

    </c:forEach>
</table>

</body>
</html>
