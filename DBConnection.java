package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static Connection conn = null;

    public static Connection getConnection() {
        try {
            if (conn == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/online_exam", 
                        "root", ""); // change user/password
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
