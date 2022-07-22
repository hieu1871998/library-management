package com.aptech.library.management.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.aptech.library.management.models.Admin;
import com.aptech.library.management.utils.DbUtils;

public class LoginService {
  private Admin admin = null;
  private static LoginService instance;

  private LoginService() {

  }

  public static LoginService getInstance() {
    if (instance == null) {
      instance = new LoginService();
    }

    return instance;
  }

  public void login(String username, String password) {
    Connection connection = DbUtils.getInstance().getConnection();

    try {
      String sqlString = "SELECT * FROM admin WHERE UserName = ? AND Password = ?";
      PreparedStatement statement = connection.prepareStatement(sqlString);
      statement.setString(1, username);
      statement.setString(2, password);
      ResultSet resultSet = statement.executeQuery();

      while (resultSet.next()) {
        long id = resultSet.getLong("MaAdmin");
        String userString = resultSet.getString("UserName");
        String passString = resultSet.getString("Password");
        String name = resultSet.getString("TenAdmin");
        String role = resultSet.getString("ChucVu");

        this.admin = new Admin(id, userString, passString, name, role);
      }

      resultSet.close();
      statement.close();
    } catch (Exception exception) {
      System.out.println("Error logging in: " + exception.getMessage());
    } finally {
      DbUtils.getInstance().closeConnection(connection);
    }
  }

  public Admin getAdmin() {
    return this.admin;
  }
}
