package com.aptech.library.management.models;

public class Student {
  private long id;
  private String name;
  private long phone;
  private String email;
  private String address;

  public Student() {
  }

  public Student(long id, String name, long phone, String email, String address) {
    this.id = id;
    this.name = name;
    this.phone = phone;
    this.email = email;
    this.address = address;
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

  public long getPhone() {
    return this.phone;
  }

  public void setPhone(long phone) {
    this.phone = phone;
  }

  public String getEmail() {
    return this.email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getAddress() {
    return this.address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

}
