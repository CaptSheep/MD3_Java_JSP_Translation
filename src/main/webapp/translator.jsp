<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: jackie
  Date: 15/09/2023
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HashMap<String,String> words = new HashMap<>();
    words.put("Hello", "Xin chao");
    words.put("Goodbye", "Tam biet");
    words.put("Dog", "Con Cho");
    words.put("Cat", "Con Meo");

    String searchValue = request.getParameter("inputValue");
    String value = words.get(searchValue);
    PrintWriter printWriter = response.getWriter();
    if(value != null){

        printWriter.println("<html>");
        printWriter.println("<h1> English Word : " + searchValue + "</h1>");
        printWriter.println("<h1> Vietnamese Word : " + value + "</h1>");
        printWriter.println("</html>");
    }
    else {
        printWriter.println("<html>");
        printWriter.println("<h1> Can not translate this word </h1>");
        printWriter.println("</html>");
        printWriter.println("<a href='/' /> Back ");
    }

%>
</body>
</html>
