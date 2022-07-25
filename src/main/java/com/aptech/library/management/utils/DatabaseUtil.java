package com.aptech.library.management.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
  private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
  private String DbUrl = "jdbc:mysql://localhost:3306/library_management?useSSL=false";
  private String username = "root";
  private String password = "Hieu 18/7/1998";
  private static DatabaseUtil INSTANCE;
  private Connection connection;

  private DatabaseUtil() {

  }

  public String getDbUrl() {
    return this.DbUrl;
  }

  public void setDbUrl(String DbUrl) {
    this.DbUrl = DbUrl;
  }

  public String getUsername() {
    return this.username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return this.password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public void setConnection(Connection connection) {
    this.connection = connection;
  }

  public static DatabaseUtil getInstance() {
    if (INSTANCE == null) {
      INSTANCE = new DatabaseUtil();
    }

    return INSTANCE;
  }

  public Connection getConnection() {
    try {
      Class.forName(DRIVER);
      connection = DriverManager.getConnection(DbUrl, username, password);
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
    Connection connection = DatabaseUtil.getInstance().getConnection();

    if (connection != null) {
      System.out.println("Connection successful!");
    } else {
      System.out.println("Connection failed!");
    }
  }
}
