package com.aptech.library.management.models;

import java.time.LocalDate;

import com.aptech.library.management.services.BorrowService;

public class BorrowingSlip {
  private long id;
  private long bookId;
  private long studentId;
  private String studentName;
  private String bookName;
  private float rent;
  private LocalDate borrowDate;
  private LocalDate returnDate;
  private int status;

  public BorrowingSlip(long id, long bookId, long studentId, float rent, LocalDate borrowDate, LocalDate returnDate,
      int status) {
    this.id = id;
    this.bookId = bookId;
    this.studentId = studentId;
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

  public long getStudentId() {
    return this.studentId;
  }

  public void setStudentId(long studentId) {
    this.studentId = studentId;
  }

  public long getBookId() {
    return this.bookId;
  }

  public void setBookId(long bookId) {
    this.bookId = bookId;
  }

  public String getStudentName() {
    return BorrowService.getInstance().getStudentName(studentId);
  }

  public void setStudentName() {
    String studentName = BorrowService.getInstance().getStudentName(this.id);

    this.studentName = studentName;
  }

  public String getBookName() {
    return BorrowService.getInstance().getBookName(bookId);
  }

  public void setBookName() {
    String bookName = BorrowService.getInstance().getBookName(this.id);

    this.bookName = bookName;
  }

  public float getRent() {
    return this.rent;
  }

  public void setRent(float rent) {
    this.rent = rent;
  }

  public LocalDate getBorrowDate() {
    return this.borrowDate;
  }

  public void setBorrowDate(LocalDate borrowDate) {
    this.borrowDate = borrowDate;
  }

  public LocalDate getReturnDate() {
    return this.returnDate;
  }

  public void setReturnDate(LocalDate returnDate) {
    this.returnDate = returnDate;
  }

  public int isStatus() {
    return this.status;
  }

  public int getStatus() {
    return this.status;
  }

  public void setStatus(int status) {
    this.status = status;
  }
}
