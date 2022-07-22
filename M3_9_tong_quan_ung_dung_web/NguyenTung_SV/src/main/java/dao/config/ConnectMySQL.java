package dao.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectMySQL {
    public static Connection getConnection(){
        String jdbcURL = "jdbc:mysql://localhost:3306/ThiThu_C0322g1";
        String jdbcUsername = "root";
        String jdbcPassword = "12345678";
        Connection connection=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            return connection;
        } catch (Exception e) {
            e.printStackTrace();
        }
            return connection;
    }
}
