package Servlets;

import Model.Model;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by yaroslav on 6/16/2014.
 */
public class Register extends HttpServlet {
    private Model model;

    private void my_init() {
        model = new Model();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Start Register ");
        my_init();
        try {

            String register_name = req.getParameter("register_name");
            String register_email = req.getParameter("register_email");
            String register_password = req.getParameter("register_password");
            String re_register_password = req.getParameter("re_register_password");

            model.doRegister(register_name, register_email, register_password, re_register_password);
        } catch (Exception e) {
            System.out.println("Exception has occurred");
        }
        System.out.println("END Register ");

    }
}
