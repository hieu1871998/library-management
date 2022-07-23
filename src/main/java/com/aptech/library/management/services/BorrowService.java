package com.aptech.library.management.services;

import java.sql.Connection;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.aptech.library.management.models.BorrowingSlip;
import com.aptech.library.management.utils.DbUtils;

public class BorrowService {
  private static BorrowService instance;

  public BorrowService() {
  }

  public static BorrowService getInstance() {
    if (instance == null) {
      instance = new BorrowService();
    }

    return instance;
  }

  public List<BorrowingSlip> getSlips(long bookId, int quantity, float rent, Date borrowDate, Date returnDate,
      boolean status) {
    List<BorrowingSlip> slips = new ArrayList<>();
    Connection connection = DbUtils.getInstance().getConnection();

    try {
    } catch (Exception e) {
      // TODO: handle exception
    }

    return slips;
  }
}
