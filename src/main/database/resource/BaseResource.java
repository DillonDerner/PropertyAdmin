package main.database.resource;

import java.sql.*;

public class BaseResource {

    private String url = "jdbc:mysql://localhost:3306/tenant";
    private String user = "root";
    private String password = System.getenv("MYSQL_PASS");

    public ResultSet executeQuery(String query) {
        ResultSet resultSet = null;
        try {
            Connection connection = DriverManager.getConnection(url, user, password);
            Statement statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            resultSet.next();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultSet;
    }

}