<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Exam Result</title>
</head>
<body>
    <h2>Exam Result</h2>

    <%
        // Get score from request
        String score = request.getParameter("score");
        if (score != null) {
    %>
        <p><b>Your Score: <%= score %></b></p>
    <% 
        } else {
    %>
        <p style="color:red;">No result available. Please take the exam first.</p>
    <% 
        } 
    %>

    <br>
    <a href="exam.jsp">Take Exam Again</a> | 
    <a href="login.jsp">Logout</a>
</body>
</html>
