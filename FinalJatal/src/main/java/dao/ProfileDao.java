package dao;

import model.User;
import utility.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProfileDao {
    public static String editProfile(User user) {
        String name = user.getName();
        String email = user.getEmail();
        String surname = user.getSurname();
        String info = user.getInfo();
        Connection connection = DBConnection.createConnection();
        System.out.println("я в профайле");

        try {
            if (user.getPhoto().equals("")) {
                String query = "update user set username = ?, email = ?, surname = ?, info = ? where iduser = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, surname);
                preparedStatement.setString(4, info);
                preparedStatement.setString(5, Integer.toString(user.getId()));

                int i = preparedStatement.executeUpdate();

                if (i != 0) {
                    preparedStatement.close();
                    connection.close();
                    return "SUCCESS";
                }
            }
            else {
                String query = "update user set username = ?, email = ?, surname = ?, info = ?, img = ? where iduser = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, surname);
                preparedStatement.setString(4, info);
                preparedStatement.setString(5, user.getPhoto());
                preparedStatement.setString(6, Integer.toString(user.getId()));

                int i = preparedStatement.executeUpdate();
                if (i != 0){
                    preparedStatement.close();
                    connection.close();
                    return "SUCCESS";
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return "";
    }
}