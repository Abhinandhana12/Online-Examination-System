<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login - Online Exam System</title>
</head>
<body>
    <h2>Login</h2>
    <form action="login" method="post">
        <label>Username: </label>
        <input type="text" name="username" required /><br><br>
        
        <label>Password: </label>
        <input type="password" name="password" required /><br><br>
        
        <input type="submit" value="Login" />
    </form>

    <% 
        String error = request.getParameter("error");
        if (error != null) { 
    %>
        <p style="color:red;">Invalid username or password! Try again.</p>
    <% } %>
</body>
</html>
