package controller;

import dao.PostDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeletePostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer post_id = Integer.parseInt(req.getParameter("id"));
        PostDao postDao = new PostDao();
        String chek = postDao.deletePost(post_id);

        if(chek.equals("SUCCESS"))
        {
            System.out.println("Success");
            req.getRequestDispatcher("templates/personal-allposts.ftl").forward(req,resp);
        }
        else
        {
            req.setAttribute("errMsg","failed");
            req.getRequestDispatcher("templates/index.ftl").forward(req,resp);
        }
    }
}
