/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Asyraf
 */
public class DBConnect {

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
