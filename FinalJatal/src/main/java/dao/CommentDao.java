package dao;

import model.Comment;
import model.User;

import utility.DBConnection;

import java.sql.*;
import java.util.ArrayList;

public class CommentDao {
    public static String addComment(Comment comment) {
        String text = comment.getComment_text();
        String date = comment.getComment_date();
        int author = comment.getUser().getId();
        int post_id = comment.getPost_id();

        Connection con = DBConnection.createConnection();

        try {
            String query = "insert into comment (text,date,author_id,post_id) values(?,?,?,?)";
            PreparedStatement preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, text);
            preparedStatement.setString(2, date);
            preparedStatement.setInt(3, author);
            preparedStatement.setInt(4, post_id);
            int i = preparedStatement.executeUpdate();

            if (i != 0) {
                return "SUCCESS";
            }
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "";
    }

    public static ArrayList<Comment> getAllComments(int id) {
        ArrayList<Comment> comments = new ArrayList<>();
        String text;
        String date;
        int user_id;
        int comment_id;
        int post_id;

        Connection con = DBConnection.createConnection();
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from comment order by idcomment DESC where post_id =" + id);
            while (resultSet.next()) {
                user_id = resultSet.getInt("user_id");
                comment_id = resultSet.getInt("comment_id");
                text = resultSet.getString("text");
                date = resultSet.getString("date");
                post_id = resultSet.getInt("post_id");
                Comment comment = new Comment(comment_id, text, date, user_id);
                User user = ProfileDao.getUserForId(user_id);
                comment.setUser(user);
                comment.setPost_id(post_id);

                comments.add(comment);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return comments;
    }
}