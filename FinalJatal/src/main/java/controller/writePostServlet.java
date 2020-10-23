package controller;

import dao.WritePostDao;
import model.Post;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class writePostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("templates/writepost.ftl").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String topic = req.getParameter("topic");
        String tag = req.getParameter("tag");
        String text = req.getParameter("text");
        System.out.println(title);
        System.out.println(topic);
        System.out.println(tag);
        System.out.println(text);

        Post post = new Post(title, topic, tag, text);
        WritePostDao writePostDao = new WritePostDao();
        String postWrited = writePostDao.createPost(post);

        if(postWrited.equals("SUCCESS")) {
            System.out.println("yes");
            resp.sendRedirect("/FinalJatal_war/your_posts");
        }
        else {
            req.getRequestDispatcher("templates/writepost.ftl").forward(req, resp);
            System.out.println("no");
        }

    }
}
