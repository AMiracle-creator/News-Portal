package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.RegisterDao;
import model.User;

public class registrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("templates/authoriz.ftl").forward(req,resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User(name, password);
        user.setName(name);
        user.setPassword(password);

        RegisterDao registerDao = new RegisterDao();
        String userRegistered = registerDao.registerUser(user);

        if(userRegistered.equals("SUCCESS")) {
            response.sendRedirect("/FinalJatal_war/home");
        }
        else {
            //request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("templates/authoriz.ftl").forward(request, response);
        }
    }
}