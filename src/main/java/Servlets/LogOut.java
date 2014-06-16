package Servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by yaroslav on 6/16/2014.
 */
public class LogOut extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("LogOut action START");

        req.getSession().setAttribute("name", "");
        req.getSession().setAttribute("sessionId", null);
        req.getRequestDispatcher("index.jsp").forward(req, resp);

        System.out.println("LogOut action FINISH");
    }
}
