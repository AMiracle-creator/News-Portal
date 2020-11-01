package controller;

import dao.PostDao;
import model.Post;
import model.User;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@MultipartConfig
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
        User user = (User) req.getSession().getAttribute("user");
        int author_id = user.getId();
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String postDate = format.format(date);

        Part part = req.getPart("photo");
        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        System.out.println( "filename is - " + fileName);
        String img = "";

        if (fileName.length() > 1) {
            String uploadDir = getServletConfig().getInitParameter("uploadDir");
            String imgAddress = uploadDir + File.separator + UUID.randomUUID().toString() +
                    "-" + part.getSubmittedFileName();
            System.out.println(imgAddress);
            IOUtils.copyLarge(part.getInputStream(), new FileOutputStream(imgAddress));
            img = imgAddress;
            img = img.replace("\\", "/");
        }

        Post post = new Post();
        post.setTitle(title);
        post.setTopic(topic);
        post.setTag(tag);
        post.setText(text);
        post.setAuthor_id(author_id);
        post.setDate(postDate);

        if (!img.equals("")){
            post.setPhoto(img);
        }

        PostDao postDao = new PostDao();
        String postWrited = postDao.createPost(post);


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
