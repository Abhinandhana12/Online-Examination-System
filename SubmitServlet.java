package servlets;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import dao.DBConnection;

public class SubmitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int userId = (int) req.getSession().getAttribute("userId");
        int score = 0;

        try {
            Connection conn = DBConnection.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM questions");

            while (rs.next()) {
                String ans = req.getParameter("q" + rs.getInt("id"));
                if (ans != null && ans.equals(rs.getString("answer"))) {
                    score++;
                }
            }

            PreparedStatement ps = conn.prepareStatement("INSERT INTO results(user_id, score) VALUES(?,?)");
            ps.setInt(1, userId);
            ps.setInt(2, score);
            ps.executeUpdate();

            res.sendRedirect("result.jsp?score=" + score);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
