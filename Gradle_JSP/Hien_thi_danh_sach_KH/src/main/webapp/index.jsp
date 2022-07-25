<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"--%>
    <%--          rel="stylesheet">--%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        img{
            width: 150px;
            height: 150px;
        }
        body{
            background-color: cornflowerblue;
           text-align: center;
        }
        tr{
            height: 180px;;
        }
        th {
            font-size: 30px;
        }
        td{
            font-size: 20px;
        }
        table{
            background-color: greenyellow;
        }
    </style>
</head>
<body>
<% class Customer {
    private String name;
    private String birth;
    private String address;
    private String img;

    public Customer(String name, String birth, String address, String img) {
        this.name = name;
        this.birth = birth;
        this.address = address;
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
%>
<% ArrayList<Customer> arrayList = new ArrayList<Customer>();
    arrayList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://cf.shopee.vn/file/8da5c8cebf53e1c08c180932ecba078c"));
    arrayList.add(new Customer("Nguyễn Văn Nam", "1983-08-20", "hn", "https://cf.shopee.vn/file/8da5c8cebf53e1c08c180932ecba078c"));
    arrayList.add(new Customer("trung", "1983-08-20", "hn", "https://cf.shopee.vn/file/8da5c8cebf53e1c08c180932ecba078c"));
    arrayList.add(new Customer("thang", "1983-08-20", "hn", "https://cf.shopee.vn/file/8da5c8cebf53e1c08c180932ecba078c"));
    arrayList.add(new Customer("thanh", "1983-08-20", "hn", "https://cf.shopee.vn/file/8da5c8cebf53e1c08c180932ecba078c")); %>

<table border="1px solid" align="center" width="70%"  style="margin-top: 100px;border-collapse: collapse">
    <h1 style="margin-top: 70px ; font-size:40px ; color: chocolate">Danh sách khách hàng</h1>

    <tr style="height: 130px;color: chocolate">
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Hình ảnh</th>
    </tr>
    <%
        for (Customer c : arrayList) {
    %>
    <tr>
        <td><%=c.getName()%></td>
        <td><%=c.getBirth()%></td>
        <td><%=c.getAddress()%></td>
        <td><img src="<%=c.getImg()%>"></td>
    </tr>
    <%
        }
    %>

    <%--    <c:forEach items="${arrayList}" var="a">--%>
    <%--        <tr>--%>
    <%--            <td>${a.getname}</td>--%>
    <%--            <td>${a.getname}</td>--%>
    <%--            <td>${a.getname}</td>--%>
    <%--            <td>${a.getname}</td>--%>
    <%--        </tr>--%>
    <%--    </c:forEach>--%>
</table>

</body>
</html>