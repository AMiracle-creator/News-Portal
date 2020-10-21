package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.RegisterDao;
import model.User;

public class registrationServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(name);

        User user = new User(name, password);
        user.setName(name);
        user.setPassword(password);

        RegisterDao registerDao = new RegisterDao();
        String userRegistered = registerDao.registerUser(user);

        if(userRegistered.equals("SUCCESS")) {
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        }
        else {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/index.ftl").forward(request, response);
        }
    }
}