package controller;

import model.User;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class PhotoServlet extends HttpServlet {
    public final String UPLOAD_DIR = "C:\\Users\\agayn\\News-Portal\\FinalJatal\\data";

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        String fileName = user.getPhoto();
        resp.setContentType("image/png");
        resp.setCharacterEncoding("UTF-8");
        System.out.println(UPLOAD_DIR + File.separator + fileName);
        File file = new File(fileName);

//            try {
//                IOUtils.copyLarge(new FileInputStream(UPLOAD_DIR + File.separator + fileName),
//                        resp.getOutputStream());
//            } catch (Exception e) {
//                req.setAttribute("errMsg","Error");
//                e.printStackTrace();
//                resp.sendRedirect(req.getContextPath() + "/home");
//            }
//        } else {
//            req.setAttribute("errMsg", "Error");
            InputStream inp = new FileInputStream(file);
            OutputStream os = resp.getOutputStream();;
            byte[] mass = new byte[2048];
            int b = 0;
            while ((b = inp.read(mass))!= -1){
                os.write(mass,0,b);
            }
            os.close();
            inp.close();
    }
}
