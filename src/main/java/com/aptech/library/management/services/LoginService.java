package com.aptech.library.management.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.aptech.library.management.models.Admin;
import com.aptech.library.management.utils.DatabaseUtil;

public class LoginService {
  private Admin admin = null;
  private static LoginService instance;
  private static final Logger LOGGER = LogManager.getLogger();

  private LoginService() {

  }

  public static LoginService getInstance() {
    if (instance == null) {
      instance = new LoginService();
    }

    return instance;
  }

  public void login(String username, String password) {
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sqlString = "SELECT * FROM admin WHERE username = ? AND password = ?";
      PreparedStatement statement = connection.prepareStatement(sqlString);
      statement.setString(1, username);
      statement.setString(2, password);
      ResultSet resultSet = statement.executeQuery();

      while (resultSet.next()) {
        long id = resultSet.getLong("id");
        String userString = resultSet.getString("username");
        String passString = resultSet.getString("password");
        String name = resultSet.getString("name");
        String role = resultSet.getString("role");

        this.admin = new Admin(id, userString, passString, name, role);
      }

      resultSet.close();
      statement.close();
    } catch (Exception exception) {
      System.out.println("Error logging in: " + exception.getMessage());
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }
  }

  public void logout() {
    this.admin = null;
  }

  public String changePassword(String currentPw, String newPw) {
    String output = "";
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sql1 = "select * from admin where password = ?";
      PreparedStatement statement = connection.prepareStatement(sql1);
      statement.setString(1, currentPw);
      ResultSet resultSet = statement.executeQuery();

      resultSet.next();

      String password = resultSet.getString("password");

      if (password.equals(currentPw)) {
        try {
          connection.setAutoCommit(false);
          String sql2 = "update admin set password = ? where id = 1";
          PreparedStatement statement2 = connection.prepareStatement(sql2);
          statement2.setString(1, newPw);
          int result = statement2.executeUpdate();
          connection.commit();

          if (result == 1) {
            output = "Password updated.";
          } else {
            output = "Password update failed.";
          }
        } catch (Exception exception) {
          try {
            connection.rollback();
          } catch (Exception exception2) {
            LOGGER.error("Error rolling back", exception2);
          }

          LOGGER.error("Error changing password", exception);
          output = "Password update failed.";
        }
      } else {
        output = "Incorrect current password.";
      }
    } catch (Exception e) {
      LOGGER.error("Error changing password", e);
      output = "Password update failed.";
    }

    return output;
  }

  public Admin getAdmin() {
    return this.admin;
  }
}
