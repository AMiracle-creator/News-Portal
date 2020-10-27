package utility;

import dao.LoginDao;
import model.User;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class authorizationFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        final HttpServletRequest req = (HttpServletRequest) servletRequest;
        final HttpServletResponse res = (HttpServletResponse) servletResponse;

        final String name = req.getParameter("username");
        final String password = req.getParameter("password");

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        LoginDao loginDao = new LoginDao();
        user = loginDao.authenticateUser(user);

        final HttpSession session = req.getSession();

        if(user != null) {
            if(req.getParameter("cookie") != null){
                System.out.println("asd");
                Cookie cook1 = new Cookie("username",user.getName());
                Cookie cook2 = new Cookie("password",user.getPassword());
                Cookie cook3 = new Cookie("id", user.getId().toString());
                cook1.setMaxAge(60*60*24*7);
                cook2.setMaxAge(60*60*24*7);
                cook3.setMaxAge(60*60*24*7);
                res.addCookie(cook1);
                res.addCookie(cook2);
                res.addCookie(cook3);
            }
            System.out.println("das");
            session.setAttribute("user", user);
            req.setAttribute("user", user);
            res.sendRedirect(req.getContextPath() + "/home");
        }
        else
        {
            servletRequest.setAttribute("errMessage", "smth went wrong"); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
            servletRequest.getRequestDispatcher("/views/main.ftl").forward(servletRequest, servletResponse);//forwarding the request
        }
    }

    public void destroy() {

    }
}
