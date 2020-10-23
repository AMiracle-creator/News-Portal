package dao;

import model.Post;
import utility.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WritePostDao {
    public String createPost(Post post) {
        String title = post.getTitle();
        String topic = post.getTopic();
        String tag = post.getTag();
        String text = post.getText();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = DBConnection.createConnection();
            String query = "insert into post(title, topic, tag, text) values (?,?,?,?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, topic);
            preparedStatement.setString(3, tag);
            preparedStatement.setString(4, text);

            int i = preparedStatement.executeUpdate();

            if (i != 0)
                System.out.println("Robit");
                return "SUCCESS";

        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return "Oops.. Something went wrong there..!";
    }
}
