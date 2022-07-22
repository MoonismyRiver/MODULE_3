<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/22/2022
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%   Map<String, String> dictionary = new HashMap<>();
    dictionary.put("hello", "Xin chào");
    dictionary.put("how", "Thế nào");
    dictionary.put("book", "Quyển vở");
    dictionary.put("computer", "Máy tính");

    String search = request.getParameter("txtSearch");

    PrintWriter writer = response.getWriter();
    writer.println("<html>");

    String result = dictionary.get(search);
    if(result != null){
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");
    }

    writer.println("</html>"); %>
</body>
</html>
