package servlets;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

public class ResultServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int score = 0;
        String scoreParam = req.getParameter("score");
        if (scoreParam != null) {
            score = Integer.parseInt(scoreParam);
        }
        req.setAttribute("score", score);
        RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
        rd.forward(req, res);
    }
}
