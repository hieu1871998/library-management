package com.aptech.library.management.models;

import java.sql.Date;

public class Book {
  private long id;
  private String name;
  private String author;
  private String category;
  private String publisher;
  private Date publishedYear;
  private int quantity;
  private float price;
  private float rent;

  public Book(long id, String name, String author, String category, String publisher, Date publishedYear, int quantity,
      float price, float rent) {
    super();
    this.id = id;
    this.name = name;
    this.author = author;
    this.category = category;
    this.publisher = publisher;
    this.publishedYear = publishedYear;
    this.quantity = quantity;
    this.price = price;
    this.rent = rent;
  }

  public long getId() {
    return this.id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getAuthor() {
    return this.author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public String getCategory() {
    return this.category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public String getPublisher() {
    return this.publisher;
  }

  public void setPublisher(String publisher) {
    this.publisher = publisher;
  }

  public Date getPublishedYear() {
    return this.publishedYear;
  }

  public void setPublishedYear(Date publishedYear) {
    this.publishedYear = publishedYear;
  }

  public int getQuantity() {
    return this.quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public float getPrice() {
    return this.price;
  }

  public void setPrice(float price) {
    this.price = price;
  }

  public float getRent() {
    return this.rent;
  }

  public void setRent(float rent) {
    this.rent = rent;
  }

}
