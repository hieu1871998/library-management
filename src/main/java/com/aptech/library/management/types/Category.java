package com.aptech.library.management.types;

import java.util.Arrays;
import java.util.stream.Stream;

public enum Category {
  UNKNOWN(0, ""),
  BUSINESS(1, "Business"),
  DICTIONARY(2, "Dictionary"),
  CHILDREN(3, "Children"),
  FICTION(4, "Fiction"),
  BIOGRAPHY(5, "Biography"),
  EDUCATION(6, "Education"),
  HEALTH(7, "Health"),
  SCIENCE(8, "Science"),
  ART(9, "Art"),
  HISTORY(10, "History"),
  TECHNOLOGY(11, "Technology"),
  GRAPHIC_NOVEL(12, "Graphic novel"),
  ROMANCE(13, "Romance"),
  SPORT(14, "Sport"),
  SCIENCE_FICTION(15, "Science fiction"),
  FANTASY(16, "Fantasy");

  private final int id;
  private final String value;

  Category(int id, String value) {
    this.id = id;
    this.value = value;
  }

  public int id() {
    return id;
  }

  public String value() {
    return value;
  }

  public static Category getById(int id) {
    for (Category category : values()) {
      if (category.id == id)
        return category;
    }

    return UNKNOWN;
  }

  public static int getId(String categoryName) {
    for (Category category : values()) {
      if (category.value.equals(categoryName)) {
        return category.id;
      }
    }

    return 0;
  }

  public static String[] names() {
    return Stream.of(Category.values()).map(Category::value).toArray(String[]::new);
  }
}
