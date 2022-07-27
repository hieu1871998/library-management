package com.aptech.library.management.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.aptech.library.management.models.Student;
import com.aptech.library.management.utils.DatabaseUtil;

public class StudentService {
  private static final Logger LOGGER = LogManager.getLogger();
  private static StudentService instance;

  public StudentService() {

  }

  public static StudentService getInstance() {
    if (instance == null) {
      instance = new StudentService();
    }

    return instance;
  }

  public List<Student> getStudents() {
    List<Student> students = new ArrayList<>();
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sql = "select * from student where 1 = 1";
      PreparedStatement statement = connection.prepareStatement(sql);

      LOGGER.info("Executing statement: " + statement);
      ResultSet resultSet = statement.executeQuery();

      while (resultSet.next()) {
        long stdId = resultSet.getLong("id");
        String stdName = resultSet.getString(("name"));
        long phone = resultSet.getLong("phone");
        String email = resultSet.getString("email");
        String address = resultSet.getString("address");
        Student student = new Student(stdId, stdName, phone, email, address);

        students.add(student);
      }
    } catch (Exception e) {
      LOGGER.error("Error getting students.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return students;
  }

  public Student getStudent(long id) {
    Student student = new Student();
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sql = "select * from student where id = ?";
      PreparedStatement statement = connection.prepareStatement(sql);

      statement.setLong(1, id);

      LOGGER.info("Executing statement: " + statement);
      ResultSet resultSet = statement.executeQuery();

      resultSet.next();

      String name = resultSet.getString("name");
      long phone = resultSet.getLong("phone");
      String email = resultSet.getString("email");
      String address = resultSet.getString("address");

      student.setId(id);
      student.setName(name);
      student.setPhone(phone);
      student.setEmail(email);
      student.setAddress(address);

      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error getting student info.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return student;
  }

  public long getStudentId(String name) {
    long id = 0L;
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sql = "select student.id from student where student.name = ?";
      PreparedStatement statement = connection.prepareStatement(sql);
      statement.setString(1, name.trim());

      LOGGER.info("Executing statement: " + statement);
      ResultSet resultSet = statement.executeQuery();

      resultSet.next();

      id = resultSet.getLong("id");
    } catch (Exception e) {
      LOGGER.error("Error getting student id.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return id;
  }
}
