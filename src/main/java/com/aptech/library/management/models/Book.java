package com.aptech.library.management.models;

import java.time.LocalDate;

public class Book {
  private long id;
  private String name;
  private String author;
  private int categoryId;
  private String publisher;
  private LocalDate publishedYear;
  private String cover;
  private int quantity;
  private float price;
  private float rent;

  public Book() {

  }

  public Book(long id, String name, String author, int categoryId, String publisher, LocalDate publishedYear,
      String cover,
      int quantity,
      float price, float rent) {
    super();
    this.id = id;
    this.name = name;
    this.author = author;
    this.categoryId = categoryId;
    this.publisher = publisher;
    this.publishedYear = publishedYear;
    this.cover = cover;
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

  public int getCategory() {
    return this.categoryId;
  }

  public void setCategory(int categoryId) {
    this.categoryId = categoryId;
  }

  public String getPublisher() {
    return this.publisher;
  }

  public void setPublisher(String publisher) {
    this.publisher = publisher;
  }

  public LocalDate getPublishedYear() {
    return this.publishedYear;
  }

  public void setPublishedYear(LocalDate publishedYear) {
    this.publishedYear = publishedYear;
  }

  public int getQuantity() {
    return this.quantity;
  }

  public String getCover() {
    return this.cover;
  }

  public void setCover(String cover) {
    this.cover = cover;
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
