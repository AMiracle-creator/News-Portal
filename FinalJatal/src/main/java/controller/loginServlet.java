package controller;

import dao.LoginDao;
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

        User user = new User(name, password);
        user.setName(name);
        user.setPassword(password);

        LoginDao loginDao = new LoginDao();

        String userLogin = null;
        try {
            userLogin = loginDao.authenticateUser(user);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        assert userLogin != null;
        if(userLogin.equals("SUCCESS"))
        {
            System.out.println("Success");
//            request.setAttribute("name", name);
            response.sendRedirect("/FinalJatal_war/personalcab");
        }
        else
        {
//            request.setAttribute("error", userLogin);
            request.getRequestDispatcher("templates/login2.ftl").forward(request, response);
        }
    }
}