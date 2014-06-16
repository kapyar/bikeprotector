package Servlets;

import Model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import Model.Model;

/**
 * Created by yaroslav on 6/16/2014.
 */
public class LogIn extends HttpServlet {
    private Model model;


    private void my_init() {
        model = new Model();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("LogIN START");
        my_init();
        try {

            String email = req.getParameter("login_email");
            String pass = req.getParameter("login_password");
            System.out.println("E-mail: " + email + " pass " + pass);

            String local_session = "sessionNumber";

            req.getSession().setAttribute("sessionId", local_session);
            req.getSession().setAttribute("name", email);

            if (model.doLogIn(email, pass)) {
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }

        } catch (Exception e) {
            System.out.println("Exception has occurred");
        }
        System.out.println("LogIN END");
    }
}
