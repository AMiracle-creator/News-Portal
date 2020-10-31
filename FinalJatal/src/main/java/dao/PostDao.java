package dao;

import javafx.geometry.Pos;
import model.Post;
import utility.DBConnection;

import java.sql.*;
import java.util.ArrayList;


public class PostDao {
    public String createPost(Post post) {
        String title = post.getTitle();
        String topic = post.getTopic();
        String tag = post.getTag();
        String text = post.getText();
        String date = post.getDate();
        int author_id = post.getAuthor_id();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = DBConnection.createConnection();
            String query = "insert into post(title, topic, tag, text, author_id, date) values (?,?,?,?,?,?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, topic);
            preparedStatement.setString(3, tag);
            preparedStatement.setString(4, text);
            preparedStatement.setString(5, String.valueOf(author_id));
            preparedStatement.setString(6, date);

            int i = preparedStatement.executeUpdate();

            if (i != 0)
                System.out.println("Robit");
            return "SUCCESS";

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Oops.. Something went wrong there..!";
    }

    public ArrayList<Post> getALlPosts() {
        ArrayList<Post> posts = new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            con = DBConnection.createConnection();
            String query = "select * from post";
            statement = con.createStatement();
            resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                int id = resultSet.getInt("post_id");
                String title = resultSet.getString("title");
                String topic = resultSet.getString("topic");
                String tag = resultSet.getString("tag");
                String text = resultSet.getString("text");
                //String image = resultSet.getString("image");
                int author_id = resultSet.getInt("author_id");
                String date = resultSet.getString("date");

                Post post = new Post();
                post.setId(id);
                post.setTitle(title);
                post.setTopic(topic);
                post.setTag(tag);
                post.setText(text);
                post.setAuthor_id(author_id);
                post.setDate(date);

                posts.add(post);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return posts;
    }

    public ArrayList<Post> getUserPost(int id) {
        ArrayList<Post> posts = new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            con = DBConnection.createConnection();
            String query = "select * from post where author_id =" + id;
            statement = con.createStatement();
            resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                int post_id = resultSet.getInt("post_id");
                String title = resultSet.getString("title");
                String topic = resultSet.getString("topic");
                String tag = resultSet.getString("tag");
                String text = resultSet.getString("text");
                //String image = resultSet.getString("image");
                int author_id = resultSet.getInt("author_id");
                String date = resultSet.getString("date");

                Post post = new Post();
                post.setId(post_id);
                post.setTitle(title);
                post.setTopic(topic);
                post.setTag(tag);
                post.setText(text);
                post.setAuthor_id(author_id);
                post.setDate(date);

                posts.add(post);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return posts;
    }

    public String deletePost(int id) {
        Connection con = null;
        Statement statement = null;

        try {
            con = DBConnection.createConnection();
            String query = "delete from post where post_id =" + id;
            statement = con.createStatement();
            int i = statement.executeUpdate(query);

            if (i != 0) {
                statement.close();
                con.close();
                return "SUCCESS";
            }
            statement.close();
            con.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "Error massage";
    }

    public  ArrayList<Post> getPost(int id) {
        ArrayList<Post> posts = new ArrayList<>();
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            con = DBConnection.createConnection();
            String query = "select * from post where post_id =" + id;
            statement = con.createStatement();
            resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
                int post_id = resultSet.getInt("post_id");
                String title = resultSet.getString("title");
                String topic = resultSet.getString("topic");
                String tag = resultSet.getString("tag");
                String text = resultSet.getString("text");
                //String image = resultSet.getString("image");
                int author_id = resultSet.getInt("author_id");
                String date = resultSet.getString("date");

                Post post = new Post();
                post.setId(post_id);
                post.setTitle(title);
                post.setTopic(topic);
                post.setTag(tag);
                post.setText(text);
                post.setAuthor_id(author_id);
                post.setDate(date);

                posts.add(post);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return posts;
    }
}
