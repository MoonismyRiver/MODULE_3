/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author WIN pl
 */
public class ConnectDB {
    private Connection _con = null;
    public Connection getConnection() {
        return _con;
    }
    public static Connection getConnect() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            System.out.println("Where is your SQL sever JDBC Driver?");
            e.printStackTrace();
            return null;
        }
        System.out.println("SQL JDBC Driver Registered!");
        Connection connection = null;
        try {
            connection = (Connection) DriverManager.getConnection(Config.dburl, Config.username, Config.password );
        } catch (SQLException e) {
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return null;
        }
        if (connection != null) {
            return connection;
        } else {
            return null;
        }
    }

}
