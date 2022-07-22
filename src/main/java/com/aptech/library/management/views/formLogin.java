/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package com.aptech.library.management.views;

import javax.swing.JOptionPane;
import javax.swing.UIManager;

import com.aptech.library.management.services.LoginService;
import com.formdev.flatlaf.intellijthemes.FlatArcIJTheme;

/**
 *
 * @author hieu1
 */
public class formLogin extends javax.swing.JFrame {

  /**
   * Creates new form formLogin
   */
  public formLogin() {
    initComponents();
  }

  /**
   * This method is called from within the constructor to initialize the form.
   * WARNING: Do NOT modify this code. The content of this method is always
   * regenerated by the Form Editor.
   */
  @SuppressWarnings("unchecked")
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // <editor-fold defaultstate="collapsed" desc="Generated
  // Code">//GEN-BEGIN:initComponents
  private void initComponents() {

    panelLabel = new javax.swing.JLabel();
    usernameField = new javax.swing.JTextField();
    passwordField = new javax.swing.JPasswordField();
    usernameLabel = new javax.swing.JLabel();
    passwordLabel = new javax.swing.JLabel();
    loginBtn = new javax.swing.JButton();
    resetBtn = new javax.swing.JButton();

    setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
    setTitle("Library Management - Login");
    setBackground(new java.awt.Color(255, 255, 255));

    panelLabel.setBackground(new java.awt.Color(255, 255, 255));
    panelLabel.setFont(new java.awt.Font("Google Sans Medium", 1, 24)); // NOI18N
    panelLabel.setForeground(new java.awt.Color(50, 49, 48));
    panelLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
    panelLabel.setText("Login");

    usernameField.setFont(new java.awt.Font("Google Sans", 0, 14)); // NOI18N
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

    passwordField.setFont(new java.awt.Font("Google Sans", 0, 14)); // NOI18N
    passwordField.setForeground(new java.awt.Color(50, 49, 48));
    passwordField.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        passwordFieldActionPerformed(evt);
      }
    });

    usernameLabel.setFont(new java.awt.Font("Google Sans", 0, 14)); // NOI18N
    usernameLabel.setForeground(new java.awt.Color(50, 49, 48));
    usernameLabel.setText("Username");

    passwordLabel.setFont(new java.awt.Font("Google Sans", 0, 14)); // NOI18N
    passwordLabel.setForeground(new java.awt.Color(50, 49, 48));
    passwordLabel.setText("Password");

    loginBtn.setBackground(new java.awt.Color(0, 120, 212));
    loginBtn.setFont(new java.awt.Font("Google Sans", 0, 14)); // NOI18N
    loginBtn.setForeground(new java.awt.Color(255, 255, 255));
    loginBtn.setText("Login");
    loginBtn.setBorder(null);
    loginBtn.setFocusPainted(false);
    loginBtn.setOpaque(true);
    loginBtn.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        loginBtnActionPerformed(evt);
      }
    });

    resetBtn.setFont(new java.awt.Font("Google Sans", 0, 14)); // NOI18N
    resetBtn.setForeground(new java.awt.Color(50, 49, 48));
    resetBtn.setText("Signup");
    resetBtn.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(50, 49, 48)));
    resetBtn.setFocusPainted(false);
    resetBtn.setOpaque(true);

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
                .addComponent(resetBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 80,
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
                    .addComponent(resetBtn)
                    .addComponent(loginBtn))
                .addContainerGap(63, Short.MAX_VALUE)));

    layout.linkSize(javax.swing.SwingConstants.VERTICAL,
        new java.awt.Component[] { loginBtn, resetBtn, usernameField });

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
    } else {
      JOptionPane.showMessageDialog(getContentPane(), "Login failed, please check your username and password.");
    }
  }

  private void loginBtnActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_loginBtnActionPerformed
    formSubmit();
  }// GEN-LAST:event_loginBtnActionPerformed

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

  /**
   * @param args the command line arguments
   */
  public static void main(String args[]) {
    try {
      UIManager.setLookAndFeel(new FlatArcIJTheme());
    } catch (javax.swing.UnsupportedLookAndFeelException ex) {
      java.util.logging.Logger.getLogger(formLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
    }

    /* Create and display the form */
    java.awt.EventQueue.invokeLater(new Runnable() {
      public void run() {
        new formLogin().setVisible(true);
      }
    });
  }

  // Variables declaration - do not modify//GEN-BEGIN:variables
  private javax.swing.JButton loginBtn;
  private javax.swing.JLabel panelLabel;
  private javax.swing.JPasswordField passwordField;
  private javax.swing.JLabel passwordLabel;
  private javax.swing.JButton resetBtn;
  private javax.swing.JTextField usernameField;
  private javax.swing.JLabel usernameLabel;
  // End of variables declaration//GEN-END:variables
}