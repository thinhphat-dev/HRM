package com.hrm.util;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class Jdbc {

//    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
//    private static final String DB_URL = "jdbc:sqlserver://hot123\\QUOCANH4;database=HRM;encrypt=false;IntegratedSecurity=false";
//    private static final String USER = "sa";
//    private static final String PASSWORD = "123";
    private static Connection connection;
    private static final Properties props = Jdbc.loadDbProperties();
    
    static {
        try {
            Class.forName(props.getProperty("driver"));
            connection = openConnection();
        } catch (ClassNotFoundException ex) {
            throw new RuntimeException(ex);

        }
    }

    public static Connection openConnection() {
        try {
            return DriverManager.getConnection(props.getProperty("url"), props.getProperty("user"), props.getProperty("pass"));
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    public static void closeConnection() {
        try {
            connection.close();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    public static int executeUpdate(String sql, Object... args) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (int i = 0; i < args.length; i++) {
                preparedStatement.setObject(i + 1, args[i]);
            }
            return preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
        
    }

    public static ResultSet executeQuery(String sql, Object... args) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (int i = 0; i < args.length; i++) {
                preparedStatement.setObject(i + 1, args[i]);
            }
            return preparedStatement.executeQuery();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    public static <T> T executeScalar(String sql, Object... args) {
        try {
            ResultSet rs = executeQuery(sql, args);
            rs.next();
            return (T) rs.getObject(1);
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

    public static ResultSet callProc(String procSql, Object... args) {
        try {
            CallableStatement callableStatement = connection.prepareCall(procSql);

            for (int i = 0; i < args.length; i++) {

                callableStatement.setObject(i + 1, args[i]);
            }
            return callableStatement.executeQuery();
           
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
         
    }

    public static int callProcDelete(String procSql, Object... args) {
        try {

            CallableStatement callableStatement = connection.prepareCall(procSql);
            for (int i = 0; i < args.length; i++) {
                callableStatement.setObject(i + 1, args[i]);
            }
         return callableStatement.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
    public static Properties loadDbProperties(){
        try {
            Properties props = new Properties(); 
            props.load(Jdbc.class.getResourceAsStream("Jdbc.properties"));
            return props;
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }
    }
}
