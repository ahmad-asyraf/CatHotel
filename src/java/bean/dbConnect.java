package bean;

import java.sql.*;

public class dbConnect {

    private static Connection connection;

    public static Connection getConnection() {
        try {
            //Step 1: Load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            //Step 2: Load the JDBC driver
            String myUrl = "jdbc:mysql://localhost:3306/cat";
            connection = DriverManager.getConnection(myUrl, "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            e.getMessage();
        }
        return connection;
    }

    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.getMessage();
        }
    }
}
