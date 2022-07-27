package com.aptech.library.management.services;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.aptech.library.management.models.BorrowingSlip;
import com.aptech.library.management.utils.DatabaseUtil;

public class BorrowService {
  private static final Logger LOGGER = LogManager.getLogger();
  private static BorrowService instance;

  public BorrowService() {
  }

  public static BorrowService getInstance() {
    if (instance == null) {
      instance = new BorrowService();
    }

    return instance;
  }

  public List<BorrowingSlip> getSlips(String studentId, String bookId, String borrowDate,
      String returnDate, int status) {
    List<BorrowingSlip> slips = new ArrayList<>();
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try (PreparedStatement statement = connection.prepareCall("call get_slips(?, ?, ?, ?, ?)")) {
      statement.setString(1, studentId);
      statement.setString(2, bookId);
      statement.setString(3, borrowDate);
      statement.setString(4, returnDate);
      statement.setInt(5, status);

      LOGGER.info("Executing statement: " + statement);
      ResultSet resultSet = statement.executeQuery();

      while (resultSet.next()) {
        long id = resultSet.getLong("id");
        long bkId = resultSet.getLong("book_id");
        long stdId = resultSet.getLong("student_id");
        float rent = resultSet.getFloat("rent");
        LocalDate brDate = resultSet.getDate("borrow_date").toLocalDate();
        LocalDate rtDate = resultSet.getDate("return_date").toLocalDate();
        int stt = resultSet.getInt("status");
        BorrowingSlip slip = new BorrowingSlip(id, bkId, stdId, rent, brDate, rtDate, stt);

        slips.add(slip);
      }
    } catch (Exception e) {
      LOGGER.error("Error getting slips data.", e);
      e.printStackTrace();
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return slips;
  }

  public String getStudentName(long id) {
    String name = "";
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sqlString = "select student.name from student where student.id = " + id;
      PreparedStatement statement = connection.prepareStatement(sqlString);

      LOGGER.info("Executing '" + sqlString + "'");
      ResultSet resultSet = statement.executeQuery();

      resultSet.next();
      name = resultSet.getString("name");

      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error getting student name.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return name;
  }

  public String getBookName(long id) {
    String name = "";
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sqlString = "select book.name from book where book.id = " + id;
      PreparedStatement statement = connection.prepareStatement(sqlString);

      LOGGER.info("Executing '" + sqlString + "'");
      ResultSet resultSet = statement.executeQuery();

      resultSet.next();
      name = resultSet.getString("name");
      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error getting book name.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return name;
  }

  public boolean addSlip(BorrowingSlip slip) {
    boolean output = false;
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      connection.setAutoCommit(false);
      String sqlString = "insert into borrowing_slip (book_id, student_id, rent, borrow_date, return_date, status) values (?, ?, ?, ?, ?, ?)";
      PreparedStatement statement = connection.prepareStatement(sqlString);

      statement.setLong(1, slip.getBookId());
      statement.setLong(2, slip.getStudentId());
      statement.setFloat(3, slip.getRent());
      statement.setDate(4, Date.valueOf(slip.getBorrowDate()));
      statement.setDate(5, Date.valueOf(slip.getReturnDate()));
      statement.setInt(6, slip.getStatus());

      int result = statement.executeUpdate();

      connection.commit();
      output = result == 1 ? true : false;
      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error adding new borrowing slip.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return output;
  }

  public boolean updateSlip(BorrowingSlip slip) {
    boolean output = false;
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      connection.setAutoCommit(false);
      String sql = "update borrowing_slip set book_id = ?, student_id = ?, rent = ?, borrow_date = ?, return_date = ?, status = ? where id = ?";
      PreparedStatement statement = connection.prepareStatement(sql);

      statement.setLong(1, slip.getBookId());
      statement.setLong(2, slip.getStudentId());
      statement.setFloat(3, slip.getRent());
      statement.setDate(4, Date.valueOf(slip.getBorrowDate()));
      statement.setDate(5, Date.valueOf(slip.getReturnDate()));
      statement.setInt(6, slip.getStatus());
      statement.setLong(7, slip.getId());

      int result = statement.executeUpdate();
      connection.commit();
      output = result == 1 ? true : false;
      statement.close();
    } catch (Exception exception) {
      try {
        connection.rollback();
      } catch (Exception exception2) {
        LOGGER.error("Error rolling back.", exception2);
      }
      LOGGER.error("Error updating slip #" + slip.getId(), exception);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    if (output) {
      LOGGER.info("Updated slip #" + slip.getId());
    }

    return output;
  }

  public boolean deleteSlip(Long id) {
    Connection connection = DatabaseUtil.getInstance().getConnection();
    boolean output = false;

    try {
      String sqlString = "delete from borrowing_slip where id = ?";
      PreparedStatement statement = connection.prepareStatement(sqlString);

      statement.setLong(1, id);

      LOGGER.info("Executing statement: " + statement);
      int result = statement.executeUpdate();

      output = result == 1 ? true : false;
      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error deleting slip #" + id, e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    if (output) {
      LOGGER.info("Deleted slip #" + id);
    }

    return output;
  }
}
