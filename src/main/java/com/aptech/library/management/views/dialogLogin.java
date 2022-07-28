package com.aptech.library.management.views;

import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

import org.kordamp.ikonli.fluentui.FluentUiRegularAL;
import org.kordamp.ikonli.fluentui.FluentUiRegularMZ;
import org.kordamp.ikonli.swing.FontIcon;

import java.awt.Color;

import com.aptech.library.management.services.LoginService;

public class dialogLogin extends JDialog {
  private javax.swing.JButton loginBtn;
  private javax.swing.JLabel panelLabel;
  private javax.swing.JPasswordField passwordField;
  private javax.swing.JLabel passwordLabel;
  private javax.swing.JButton exitBtn;
  private javax.swing.JTextField usernameField;
  private javax.swing.JLabel usernameLabel;

  private FontIcon submitIcon;
  private FontIcon exitIcon;

  public dialogLogin(JFrame parent) {
    super(parent, "Login", true);
    setLocationRelativeTo(parent);
    prepareIcons();
    initComponents();
  }

  private void prepareIcons() {
    submitIcon = FontIcon.of(FluentUiRegularAL.ARROW_RIGHT_CIRCLE_24, 16, Color.white);
    exitIcon = FontIcon.of(FluentUiRegularMZ.SIGN_OUT_20, 16, new Color(50, 49, 48));
  }

  private void initComponents() {

    panelLabel = new javax.swing.JLabel();
    usernameField = new javax.swing.JTextField();
    passwordField = new javax.swing.JPasswordField();
    usernameLabel = new javax.swing.JLabel();
    passwordLabel = new javax.swing.JLabel();
    loginBtn = new javax.swing.JButton();
    exitBtn = new javax.swing.JButton();

    setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
    setBackground(new java.awt.Color(255, 255, 255));
    getContentPane().setBackground(new Color(255, 255, 255));

    panelLabel.setBackground(new java.awt.Color(255, 255, 255));
    panelLabel.setFont(new java.awt.Font("Segoe UI Medium", 1, 24)); // NOI18N
    panelLabel.setForeground(new java.awt.Color(50, 49, 48));
    panelLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
    panelLabel.setText("Login");

    usernameField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    usernameField.setForeground(new java.awt.Color(50, 49, 48));
    usernameField.setToolTipText("Enter username");
    usernameField.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        usernameFieldActionPerformed(evt);
      }
    });
    usernameField.addKeyListener(new java.awt.event.KeyAdapter() {
      public void keyPressed(java.awt.event.KeyEvent evt) {
        usernameFieldKeyPressed(evt);
      }
    });

    passwordField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    passwordField.setForeground(new java.awt.Color(50, 49, 48));
    passwordField.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        passwordFieldActionPerformed(evt);
      }
    });

    usernameLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    usernameLabel.setForeground(new java.awt.Color(50, 49, 48));
    usernameLabel.setText("Username");

    passwordLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    passwordLabel.setForeground(new java.awt.Color(50, 49, 48));
    passwordLabel.setText("Password");

    loginBtn.setBackground(new java.awt.Color(0, 120, 212));
    loginBtn.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    loginBtn.setForeground(new java.awt.Color(255, 255, 255));
    loginBtn.setText("Login");
    loginBtn.setIcon(submitIcon);
    loginBtn.setBorder(null);
    loginBtn.setFocusPainted(false);
    loginBtn.setOpaque(true);
    loginBtn.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        loginBtnActionPerformed(evt);
      }
    });

    exitBtn.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    exitBtn.setForeground(new java.awt.Color(50, 49, 48));
    exitBtn.setText("Exit");
    exitBtn.setIcon(exitIcon);
    exitBtn.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(50, 49, 48)));
    exitBtn.setFocusPainted(false);
    exitBtn.setOpaque(true);
    exitBtn.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        exitBtnActionPerformed(evt);
      }
    });

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(panelLabel)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(usernameLabel)
                            .addComponent(passwordLabel))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(usernameField, javax.swing.GroupLayout.DEFAULT_SIZE, 288, Short.MAX_VALUE)
                            .addComponent(passwordField))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGap(100, 100, 100)
                .addComponent(exitBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 80,
                    javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 34, Short.MAX_VALUE)
                .addComponent(loginBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 80,
                    javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(106, 106, 106)));
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(panelLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 50,
                    javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(48, 48, 48)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(usernameField, javax.swing.GroupLayout.PREFERRED_SIZE, 32,
                        javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(usernameLabel))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(passwordLabel)
                    .addComponent(passwordField, javax.swing.GroupLayout.PREFERRED_SIZE, 32,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(exitBtn)
                    .addComponent(loginBtn))
                .addContainerGap(63, Short.MAX_VALUE)));

    layout.linkSize(javax.swing.SwingConstants.VERTICAL,
        new java.awt.Component[] { loginBtn, exitBtn, usernameField });

    pack();
  }// </editor-fold>//GEN-END:initComponents

  private void formSubmit() {
    String username = this.usernameField.getText();
    String password = String.valueOf(this.passwordField.getPassword());

    if (username.equals("") || password.equals("")) {
      JOptionPane.showMessageDialog(getContentPane(), "Please input valid username and password.");
      return;
    }

    LoginService.getInstance().login(username, password);

    if (LoginService.getInstance().getAdmin() != null) {
      JOptionPane.showMessageDialog(getContentPane(), "Login successful!");
      this.setVisible(false);
    } else {
      JOptionPane.showMessageDialog(getContentPane(), "Login failed, please check your username and password.");
    }
  }

  private void loginBtnActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_loginBtnActionPerformed
    formSubmit();
  }// GEN-LAST:event_loginBtnActionPerformed

  private void exitBtnActionPerformed(java.awt.event.ActionEvent evt) {
    System.exit(0);
  }

  private void passwordFieldActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_passwordFieldActionPerformed
    formSubmit();
  }// GEN-LAST:event_passwordFieldActionPerformed

  private void usernameFieldActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_usernameFieldActionPerformed
    formSubmit();
  }// GEN-LAST:event_usernameFieldActionPerformed

  private void usernameFieldKeyPressed(java.awt.event.KeyEvent evt) {
    if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) {
      formSubmit();
    }
  }
}
