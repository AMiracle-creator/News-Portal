package controller;

import dao.LoginDao;
import dao.RegisterDao;
import javafx.scene.paint.RadialGradient;
import model.User;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("templates/login2.ftl").forward(req, resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
//        String secondPas = request.getParameter("secpassw");

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        user.setEmail(email);
        RegisterDao dao = new RegisterDao();

        String chek = dao.registerUser(user);


        if(chek.equals("SUCCESS"))
        {
            System.out.println("Success");
            request.getRequestDispatcher("templates/login2.ftl").forward(request,response);
        }
        else
        {
            request.setAttribute("errMsg","failed");
            response.sendRedirect(request.getContextPath() + "/registration");
        }
    }
}