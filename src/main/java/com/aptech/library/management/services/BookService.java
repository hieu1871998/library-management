package com.aptech.library.management.services;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.aptech.library.management.models.Book;
import com.aptech.library.management.utils.DbUtils;

public class BookService {
  private static BookService instance;
  private Logger logger = LogManager.getLogger(BookService.class);

  private BookService() {
  }

  public static BookService getInstance() {
    if (instance == null) {
      instance = new BookService();
    }

    return instance;
  }

  public List<Book> getBooks(String name, String author, String category, String publisher, String publishedYear) {
    List<Book> books = new ArrayList<>();
    Connection connection = DbUtils.getInstance().getConnection();

    try (PreparedStatement statement = connection.prepareCall("call get_books(?, ?, ?, ?, ?)")) {
      statement.setString(1, name);
      statement.setString(2, author);
      statement.setString(3, category);
      statement.setString(4, publisher);
      statement.setString(5, publishedYear);
      ResultSet resultSet = statement.executeQuery();

      while (resultSet.next()) {
        long id = resultSet.getLong("id");
        String bookName = resultSet.getString("name");
        String bookAuthor = resultSet.getString("author");
        String bookCategory = resultSet.getString("category");
        String bookPublisher = resultSet.getString("publisher");
        Date bookPublishedYear = resultSet.getDate("published_year");
        String cover = resultSet.getString("cover");
        int quantity = resultSet.getInt("quantity");
        float price = resultSet.getFloat("price");
        float rent = resultSet.getFloat("rent");
        Book book = new Book(id, bookName, bookAuthor, bookCategory, bookPublisher, bookPublishedYear, cover, quantity,
            price,
            rent);

        books.add(book);
      }
    } catch (Exception exception) {
      logger.error(exception);
      exception.printStackTrace();
    }

    return books;
  }

  public boolean insertBook(Book book) {
    boolean output = false;
    Connection connection = DbUtils.getInstance().getConnection();

    try {
      connection.setAutoCommit(false);
      String sqlString = "INSERT INTO book (name, author, category, publisher, published_year, cover, quantity, price, rent) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

      PreparedStatement statement = connection.prepareStatement(sqlString);
      statement.setString(1, book.getName());
      statement.setString(2, book.getAuthor());
      statement.setString(3, book.getCategory());
      statement.setString(4, book.getPublisher());
      statement.setDate(5, book.getPublishedYear());
      statement.setString(6, book.getCover());
      statement.setInt(7, book.getQuantity());
      statement.setFloat(8, book.getPrice());
      statement.setFloat(9, book.getRent());

      int result = statement.executeUpdate();
      connection.commit();
      output = result == 1 ? true : false;

      statement.close();
    } catch (Exception exception) {
      exception.printStackTrace();
    } finally {
      DbUtils.getInstance().closeConnection(connection);
    }

    return output;
  }

  public boolean updateBook(Book book) {
    boolean output = false;
    Connection connection = DbUtils.getInstance().getConnection();

    try {
      connection.setAutoCommit(false);
      String slqString = "update book set name = ?, author = ?, category = ?, publisher = ?, published_year = ?, cover = ?, quantity = ?, price = ?, rent = ? where id = ?";
      PreparedStatement statement = connection.prepareStatement(slqString);

      statement.setString(1, book.getName());
      statement.setString(2, book.getAuthor());
      statement.setString(3, book.getCategory());
      statement.setString(4, book.getPublisher());
      statement.setDate(5, book.getPublishedYear());
      statement.setString(6, book.getCover());
      statement.setInt(7, book.getQuantity());
      statement.setFloat(8, book.getPrice());
      statement.setFloat(9, book.getRent());
      statement.setLong(10, book.getId());

      int result = statement.executeUpdate();
      connection.commit();
      output = result == 1 ? true : false;
      statement.close();
    } catch (Exception exception) {
      try {
        connection.rollback();
      } catch (Exception exception2) {
        exception2.printStackTrace();
      }
      exception.printStackTrace();
    } finally {
      DbUtils.getInstance().closeConnection(connection);
    }

    return output;
  }

  public boolean deleteBook(Long bookId) {
    Connection connection = DbUtils.getInstance().getConnection();
    boolean output = false;

    try {
      String sqlString = "delete from book where id = ?";
      PreparedStatement statement = connection.prepareStatement(sqlString);

      statement.setLong(1, bookId);

      int result = statement.executeUpdate();

      output = result == 1 ? true : false;
      statement.close();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      DbUtils.getInstance().closeConnection(connection);
    }

    return output;
  }

  public boolean addBookCover(Book book) {
    Connection connection = DbUtils.getInstance().getConnection();
    boolean output = false;

    try {
      connection.setAutoCommit(false);
      String sqlString = "update book set cover = ? where id = ?";
      PreparedStatement statement = connection.prepareStatement(sqlString);

      statement.setString(1, book.getCover());
      statement.setLong(2, book.getId());

      int result = statement.executeUpdate();
      connection.commit();
      output = result == 1 ? true : false;
      statement.close();
    } catch (Exception e) {
      e.printStackTrace();
      output = false;
    } finally {
      DbUtils.getInstance().closeConnection(connection);
    }

    return output;
  }
}
