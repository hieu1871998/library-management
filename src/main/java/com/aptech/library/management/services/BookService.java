package com.aptech.library.management.services;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.aptech.library.management.models.Book;
import com.aptech.library.management.utils.DatabaseUtil;

import net.harawata.appdirs.AppDirs;
import net.harawata.appdirs.AppDirsFactory;

public class BookService {
  private static BookService instance;
  private final static Logger LOGGER = LogManager.getLogger(BookService.class);
  private static final String APP_NAME = "LibraryManager";
  private static final AppDirs appDirs = AppDirsFactory.getInstance();
  private static final String userDataDir = appDirs.getUserDataDir(APP_NAME, null, null);

  private BookService() {
  }

  public static BookService getInstance() {
    if (instance == null) {
      instance = new BookService();
    }

    return instance;
  }

  public List<Book> getBooks(String name, String author, int categoryId, String publisher, String publishedYear) {
    List<Book> books = new ArrayList<>();
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try (PreparedStatement statement = connection.prepareCall("call get_books(?, ?, ?, ?, ?)")) {
      statement.setString(1, name);
      statement.setString(2, author);
      statement.setInt(3, categoryId);
      statement.setString(4, publisher);
      statement.setString(5, publishedYear);

      LOGGER.info("Executing statement: " + statement);
      ResultSet resultSet = statement.executeQuery();

      while (resultSet.next()) {
        long id = resultSet.getLong("id");
        String bookName = resultSet.getString("name");
        String bookAuthor = resultSet.getString("author");
        int bookCategory = resultSet.getInt("category_id");
        String bookPublisher = resultSet.getString("publisher");
        LocalDate bookPublishedYear = resultSet.getDate("published_year").toLocalDate();
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
      LOGGER.error(exception);
      exception.printStackTrace();
    }

    return books;
  }

  public Book getBook(long id) {
    Book book = new Book();
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sql = "select * from book where id = ?";
      PreparedStatement statement = connection.prepareStatement(sql);

      statement.setLong(1, id);

      LOGGER.info("Executing statement: " + statement);

      ResultSet resultSet = statement.executeQuery();

      resultSet.next();
      String bookName = resultSet.getString("name");
      String bookAuthor = resultSet.getString("author");
      int bookCategory = resultSet.getInt("category_id");
      String bookPublisher = resultSet.getString("publisher");
      LocalDate bookPublishedYear = resultSet.getDate("published_year").toLocalDate();
      String cover = resultSet.getString("cover");
      int quantity = resultSet.getInt("quantity");
      float price = resultSet.getFloat("price");
      float rent = resultSet.getFloat("rent");

      book = new Book(id, bookName, bookAuthor, bookCategory, bookPublisher, bookPublishedYear, cover, quantity,
          price,
          rent);

      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error getting book.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return book;
  }

  public boolean insertBook(Book book) {
    boolean output = false;
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      connection.setAutoCommit(false);
      String sqlString = "insert into book (name, author, category_id, publisher, published_year, cover, quantity, price, rent) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

      PreparedStatement statement = connection.prepareStatement(sqlString);
      statement.setString(1, book.getName());
      statement.setString(2, book.getAuthor());
      statement.setInt(3, book.getCategory());
      statement.setString(4, book.getPublisher());
      statement.setDate(5, Date.valueOf(book.getPublishedYear()));
      statement.setString(6, book.getCover());
      statement.setInt(7, book.getQuantity());
      statement.setFloat(8, book.getPrice());
      statement.setFloat(9, book.getRent());

      int result = statement.executeUpdate();
      connection.commit();
      output = result == 1 ? true : false;

      statement.close();
    } catch (Exception exception) {
      LOGGER.error("Error inserting " + book.getName(), exception);
      exception.printStackTrace();
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);

      if (output) {
        LOGGER.info("Inserted " + book.getName());
      }
    }

    return output;
  }

  public boolean updateBook(Book book) {
    boolean output = false;
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      connection.setAutoCommit(false);
      String sql = "update book set name = ?, author = ?, category_id = ?, publisher = ?, published_year = ?, cover = ?, quantity = ?, price = ?, rent = ? where id = ?";
      PreparedStatement statement = connection.prepareStatement(sql);

      statement.setString(1, book.getName());
      statement.setString(2, book.getAuthor());
      statement.setInt(3, book.getCategory());
      statement.setString(4, book.getPublisher());
      statement.setDate(5, Date.valueOf(book.getPublishedYear()));
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
        LOGGER.error("Error rolling back.", exception2);
        exception2.printStackTrace();
      }
      LOGGER.error("Error updating " + book.getName(), exception);
      exception.printStackTrace();
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    if (output) {
      LOGGER.info("Updated " + book.getName());
    }

    return output;
  }

  public boolean deleteBook(Long bookId) {
    Connection connection = DatabaseUtil.getInstance().getConnection();
    boolean output = false;

    try {
      String sqlString = "delete from book where id = ?";
      PreparedStatement statement = connection.prepareStatement(sqlString);

      statement.setLong(1, bookId);

      int result = statement.executeUpdate();

      output = result == 1 ? true : false;
      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error deleting book " + bookId, e);
      e.printStackTrace();
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    if (output) {
      LOGGER.info("Deleted " + bookId);
    }

    return output;
  }

  public boolean addBookCover(Book book) {
    Connection connection = DatabaseUtil.getInstance().getConnection();
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
      LOGGER.error("Error adding book cover.", e);
      e.printStackTrace();
      output = false;
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return output;
  }

  public int[] importFromCSV(File file) {
    int output[] = null;
    String filePath = file.getAbsolutePath();
    // int batchSize = 20;
    Connection connection = DatabaseUtil.getInstance().getConnection();
    DateTimeFormatter formatter = new DateTimeFormatterBuilder().appendPattern("yyyy")
        .parseDefaulting((ChronoField.MONTH_OF_YEAR), 1).parseDefaulting(ChronoField.DAY_OF_MONTH, 1).toFormatter();

    try {
      connection.setAutoCommit(false);
      String sqlString = "insert into book (name, author, category_id, publisher, published_year, quantity, price, rent, cover) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
      PreparedStatement statement = connection.prepareStatement(sqlString);

      BufferedReader lineReader = new BufferedReader(new FileReader(filePath));
      String lineText = null;

      // int count = 0;

      lineReader.readLine();

      while ((lineText = lineReader.readLine()) != null) {
        // count++;
        LOGGER.info("Importing: " + lineText);
        String[] data = lineText.split(";");
        System.out.println(data);
        String name = data[1];
        String author = data[2];
        int categoryId = Integer.parseInt(data[3]);
        String publisher = data[4];
        Date publishedYear = Date.valueOf(LocalDate.parse(data[5], formatter));
        int quantity = Integer.parseInt(data[6]);
        Float price = Float.parseFloat(data[7]);
        Float rent = Float.parseFloat(data[8]);
        String coverUrl = data[9];

        statement.setString(1, name);
        statement.setString(2, author);
        statement.setInt(3, categoryId);
        statement.setString(4, publisher);
        statement.setDate(5, publishedYear);
        statement.setInt(6, quantity);
        statement.setFloat(7, price);
        statement.setFloat(8, rent);
        statement.setString(9, coverUrl);

        statement.addBatch();
      }

      lineReader.close();

      int results[] = statement.executeBatch();

      output = results;

      connection.commit();
      statement.close();
    } catch (IOException exception) {
      System.err.println(exception);
    } catch (SQLException exception) {
      exception.printStackTrace();
      LOGGER.error("Error importing data.", exception);

      try {
        connection.rollback();
      } catch (SQLException sqlException) {
        LOGGER.error("Error rolling back.", sqlException);
        sqlException.printStackTrace();

      }
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return output;
  }

  public static String importLocalImage(File imageFile) {
    System.out.println(imageFile.getPath());

    return imageFile.getPath();
  }

  public static void downloadImage(URL url) {
    String fileName = FilenameUtils.getName(url.getPath());
    String filePath = userDataDir + "\\" + fileName;

    try {
      File imageFile = new File(filePath);

      if (imageFile.exists() && !imageFile.isDirectory()) {
        return;
      }

      FileUtils.copyURLToFile(url, new File(filePath));
    } catch (IOException e) {
      LOGGER.error("Error importing image " + fileName, e);
      e.printStackTrace();
    }
  }

  public static String getLocalUrl(URL url) {
    String fileName = FilenameUtils.getName(url.getPath());
    String filePath = userDataDir + "\\" + fileName;

    return filePath;
  }

  public static long getBookId(String name) {
    long id;
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sql = "select id from book where name = ?";
      PreparedStatement statement = connection.prepareStatement(sql);

      statement.setString(1, name.trim());

      LOGGER.info("Executing statement: " + statement);
      ResultSet resultSet = statement.executeQuery();

      resultSet.next();

      id = resultSet.getLong("id");

      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error getting book ID.", e);
      id = -1L;
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return id;
  }

  public static float getBookRent(String name) {
    float rent = 0;
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      String sql = "select rent from book where name = ?";
      PreparedStatement statement = connection.prepareStatement(sql);

      statement.setString(1, name);

      LOGGER.info("Executing statement: " + statement);
      ResultSet resultSet = statement.executeQuery();

      resultSet.next();

      rent = resultSet.getFloat("rent");

      statement.close();
    } catch (Exception e) {
      LOGGER.error("Error getting book rent.", e);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }

    return rent;
  }
}
