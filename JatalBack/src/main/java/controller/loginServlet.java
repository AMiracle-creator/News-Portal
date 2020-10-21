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

        if(userLogin.equals("SUCCESS"))
        {
            request.setAttribute("name", name);
            request.getRequestDispatcher("/Home.jsp").forward(request, response);
        }
        else
        {
            request.setAttribute("error", userLogin);
            request.getRequestDispatcher("/index.ftl").forward(request, response);
        }
    }
}