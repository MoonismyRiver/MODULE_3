<%-- 
    Document   : sanpham
    Created on : Nov 20, 2018, 1:39:00 PM
    Author     : PC
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>

            <div id="wrapper">
              
        <div class="SanPhamServlet">
            <div id="rightContent">
        <h1>Sản Phẩm</h1>
        <form action="SanPhamServlet">
<!--                <input type="text"   name="action" value=" "/>
                <input type="submit" name="action" value="Search"/>-->
            <div class="form-group">
                <label for="email">ID:<br><label>
                        <input  style="width: 600px"type="text" class="form-control" placeholder="Enter id" name="productID" value="${SANPHAM.productID}">               
            </div>
               <div class="form-group">
                <label for="pwd">Mô tả: <br><label>
                        <input style="width: 600px" type="text" class="form-control" placeholder="Enter Mota" name="productDescription" value="${SANPHAM.productDescription}">
                                            
            </div>
            <div class="form-group">
                <label for="pwd">Hình ảnh:<br><label>
                        <input  style="width: 600px"type="text" class="form-control" placeholder="Enter Hình ảnh" name="productImage" value="${SANPHAM.productImage}">               
            </div>
            <div class="form-group">
                <label for="pwd">Tên Sản Phẩm   :<br><label>
                        <input  style="width: 600px"type="text" class="form-control" placeholder="Enter tensanpham" name="productName" value="${SANPHAM.productName}">               
            </div>
            <div class="form-group">
                <label for="pwd">Giá bán:<br><label>          
                        <input style="width: 600px" type="number" class="form-control" placeholder="Enter Giá" name="productPrice" value="${SANPHAM.productPrice}">               
            </div>

         
            
            <button type="submit" class="btn btn-default" name="action" value="add">Add</button>  
            <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
            <button type="submit" class="btn btn-default" name="action" value="search">Search</button>  
                    </form> 
      
<!--        <div class="container">-->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Mô ta</th>
                        <th>Hình ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá Bán</th>
                        <th>Action</th>                      
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sp" items="${LIST_SANPHAM}">
                    <form action="SanPhamServlet">
                    <tr>
                        <td>${sp.productID}</td>
                        <td>${sp.productDescription}</td>
                        <td>${sp.productImage}</td>
                        <td>${sp.productName}</td>
                        <td>${sp.productPrice}</td>
                        <td><a href="SanPhamServlet?productID=${sp.productID}&action=edit">EDIT</a>|<a href="SanPhamServlet?productID=${sp.productID}&action=delete">DELETE</a></td>
                    </tr>  
                    </form>
                    </c:forEach>
                </tbody>
            </table>
    </div>
            </div>
            </div>
              
    </body>
</html>
