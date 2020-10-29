package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class logoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        System.out.println(cookies.length);
        if (cookies != null){
            for (Cookie cookie : cookies) {
                cookie.setValue("");
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }

            req.getSession().setAttribute("user", "");
            req.setAttribute("user", "");
        }

        resp.sendRedirect("/FinalJatal_war/home");
    }
}