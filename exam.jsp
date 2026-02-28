<%@ page import="java.sql.*,dao.DBConnection" %>
<%
    // Ensure user is logged in
    Integer userId = (Integer) session.getAttribute("userId");
    if (userId == null) {
        response.sendRedirect("login.jsp?error=notloggedin");
        return;
    }
%>
<html>
<head>
    <title>Online Exam</title>
</head>
<body>
    <h2>Welcome to the Online Exam</h2>
    <form action="submit" method="post">
        <%
            try {
                Connection conn = DBConnection.getConnection();
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM questions");
                while (rs.next()) {
        %>
                    <p><b><%= rs.getString("question") %></b></p>
                    <input type="radio" name="q<%= rs.getInt("id") %>" value="<%= rs.getString("option1") %>"> <%= rs.getString("option1") %><br>
                    <input type="radio" name="q<%= rs.getInt("id") %>" value="<%= rs.getString("option2") %>"> <%= rs.getString("option2") %><br>
                    <input type="radio" name="q<%= rs.getInt("id") %>" value="<%= rs.getString("option3") %>"> <%= rs.getString("option3") %><br>
                    <input type="radio" name="q<%= rs.getInt("id") %>" value="<%= rs.getString("option4") %>"> <%= rs.getString("option4") %><br><br>
        <%
                }
            } catch (Exception e) {
                out.println("<p style='color:red;'>Error loading questions.</p>");
                e.printStackTrace();
            }
        %>
        <input type="submit" value="Submit Exam">
    </form>
</body>
</html>
