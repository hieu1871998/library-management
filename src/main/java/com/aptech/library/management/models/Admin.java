package com.aptech.library.management.models;

public class Admin {
  private long id;
  private String username;
  private String password;
  private String name;
  private String role;

  public Admin(long id, String username, String password, String name, String role) {
    this.id = id;
    this.username = username;
    this.password = password;
    this.name = name;
    this.role = role;
  }

  public String getUsername() {
    return this.username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getRole() {
    return this.role;
  }

  public void setRole(String role) {
    this.role = role;
  }

  public long getId() {
    return this.id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getPassword() {
    return this.password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Override
  public String toString() {
    return "{" +
        " id='" + getId() + "'" +
        ", username='" + getUsername() + "'" +
        ", password='" + getPassword() + "'" +
        ", name='" + getName() + "'" +
        ", role='" + getRole() + "'" +
        "}";
  }
}
