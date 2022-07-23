package com.aptech.library.management.models;

import java.sql.Date;

public class BorrowingSlip {
  private long id;
  private long bookId;
  private int quantity;
  private float rent;
  private Date borrowDate;
  private Date returnDate;
  private boolean status;

  public BorrowingSlip() {
  }

  public BorrowingSlip(long id, long bookId, int quantity, float rent, Date borrowDate, Date returnDate,
      boolean status) {
    this.id = id;
    this.bookId = bookId;
    this.quantity = quantity;
    this.rent = rent;
    this.borrowDate = borrowDate;
    this.returnDate = returnDate;
    this.status = status;
  }

  public long getId() {
    return this.id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public long getBookId() {
    return this.bookId;
  }

  public void setBookId(long bookId) {
    this.bookId = bookId;
  }

  public int getQuantity() {
    return this.quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public float getRent() {
    return this.rent;
  }

  public void setRent(float rent) {
    this.rent = rent;
  }

  public Date getBorrowDate() {
    return this.borrowDate;
  }

  public void setBorrowDate(Date borrowDate) {
    this.borrowDate = borrowDate;
  }

  public Date getReturnDate() {
    return this.returnDate;
  }

  public void setReturnDate(Date returnDate) {
    this.returnDate = returnDate;
  }

  public boolean isStatus() {
    return this.status;
  }

  public boolean getStatus() {
    return this.status;
  }

  public void setStatus(boolean status) {
    this.status = status;
  }
}
