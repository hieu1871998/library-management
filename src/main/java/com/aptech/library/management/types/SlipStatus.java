package com.aptech.library.management.types;

import java.util.stream.Stream;

public enum SlipStatus {
  UNKNOWN(0, ""),
  BORROWING(1, "Borrowing"),
  RETURNED(2, "Returned"),
  OVERDUE(3, "Overdue");

  private final int id;
  private final String value;

  SlipStatus(int id, String value) {
    this.id = id;
    this.value = value;
  }

  public int id() {
    return id;
  }

  public String value() {
    return value;
  }

  public static SlipStatus getById(int id) {
    for (SlipStatus slipStatus : values()) {
      if (slipStatus.id == id) {
        return slipStatus;
      }
    }

    return UNKNOWN;
  }

  public static int getId(String status) {
    for (SlipStatus slipStatus : values()) {
      if (slipStatus.value == status) {
        return slipStatus.id;
      }
    }

    return 0;
  }

  public static String[] names() {
    return Stream.of(SlipStatus.values()).map(SlipStatus::value).toArray(String[]::new);
  }
}
