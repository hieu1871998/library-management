package com.aptech.library.management.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtils {
  private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
  private final static String DBURL = "jdbc:mysql://localhost:3306/library_management?useSSL=false";
  private final static String USERNAME = "root";
  private final static String PASSWORD = "Hieu 18/7/1998";
  private static DbUtils INSTANCE;
  private Connection connection;

  private DbUtils() {

  }

  public static DbUtils getInstance() {
    if (INSTANCE == null) {
      INSTANCE = new DbUtils();
    }

    return INSTANCE;
  }

  public Connection getConnection() {
    try {
      Class.forName(DRIVER);
      connection = DriverManager.getConnection(DBURL, USERNAME, PASSWORD);
    } catch (Exception exception) {
      exception.printStackTrace();
    }

    return connection;
  }

  public void closeConnection(Connection conn) {
    try {
      if (conn != null) {
        conn.close();
      }
    } catch (SQLException exception) {
      exception.printStackTrace();
    }
  }

  public static void main(String[] args) {
    Connection connection = DbUtils.getInstance().getConnection();

    if (connection != null) {
      System.out.println("Connection successful!");
    } else {
      System.out.println("Connection failed!");
    }
  }
}
