package com.alexanderdoma.peruinolvidable.config;

import com.alexanderdoma.peruinolvidable.utilies.DatabaseKeysManager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
    private static final String URL = DatabaseKeysManager.getProperty("URL");
    private static final String USER = DatabaseKeysManager.getProperty("USER");
    private static final String PASSWORD = DatabaseKeysManager.getProperty("PASSWORD");
    
    public Connection getConnection(){
        Connection objConnection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            objConnection = DriverManager.getConnection(URL, USER, PASSWORD);
            return objConnection;
            
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
            return objConnection;
        }
    }
}
