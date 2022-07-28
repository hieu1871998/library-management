package com.aptech.library.management.views;

import java.awt.Color;
import java.sql.Connection;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.UIManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.kordamp.ikonli.fluentui.FluentUiRegularAL;
import org.kordamp.ikonli.swing.FontIcon;

import com.aptech.library.management.utils.DatabaseUtil;
import com.formdev.flatlaf.intellijthemes.FlatArcIJTheme;

public class dialogDb extends JDialog {
  private JPanel jPanel1;
  private JLabel panelLabel;
  private JTextField passwordField;
  private JLabel passwordLabel;
  private JLabel statusLabel;
  private JButton submitBtn;
  private JTextField urlField;
  private JLabel urlFieldLabel;
  private JTextField usernameField;
  private JLabel usernameFieldLabel;

  private FontIcon submitIcon;
  private FontIcon successIcon;
  private FontIcon errorIcon;

  private static final Logger LOGGER = LogManager.getLogger();

  public dialogDb(JFrame parent) {
    super(parent, "Database configuration", true);
    setLocationRelativeTo(parent);
    prepareIcons();
    initComponents();
    loadSettings();
    submitSettings();
  }

  private void prepareIcons() {
    submitIcon = FontIcon.of(FluentUiRegularAL.ARROW_RIGHT_CIRCLE_24, 16, Color.white);
    successIcon = FontIcon.of(FluentUiRegularAL.CHECKMARK_CIRCLE_24, 24, Color.green);
    errorIcon = FontIcon.of(FluentUiRegularAL.ERROR_CIRCLE_24, 24, Color.red);
  }

  private void initComponents() {

    jPanel1 = new javax.swing.JPanel();
    panelLabel = new javax.swing.JLabel();
    urlFieldLabel = new javax.swing.JLabel();
    usernameFieldLabel = new javax.swing.JLabel();
    passwordLabel = new javax.swing.JLabel();
    passwordField = new javax.swing.JTextField();
    usernameField = new javax.swing.JTextField();
    urlField = new javax.swing.JTextField();
    submitBtn = new javax.swing.JButton();
    statusLabel = new javax.swing.JLabel();

    setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
    setTitle("Database configurations");

    jPanel1.setBackground(new java.awt.Color(255, 255, 255));

    panelLabel.setBackground(new java.awt.Color(255, 255, 255));
    panelLabel.setFont(new java.awt.Font("Segoe UI Medium", 1, 18)); // NOI18N
    panelLabel.setForeground(new java.awt.Color(50, 49, 48));
    panelLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
    panelLabel.setText("Database configurations");

    urlFieldLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    urlFieldLabel.setForeground(new java.awt.Color(50, 49, 48));
    urlFieldLabel.setText("URL");

    usernameFieldLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    usernameFieldLabel.setForeground(new java.awt.Color(50, 49, 48));
    usernameFieldLabel.setText("Username");

    passwordLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    passwordLabel.setForeground(new java.awt.Color(50, 49, 48));
    passwordLabel.setText("Password");

    passwordField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    passwordField.setForeground(new java.awt.Color(50, 49, 48));
    passwordField.setToolTipText("Enter username");
    passwordField.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        passwordFieldActionPerformed(evt);
      }
    });
    passwordField.addKeyListener(new java.awt.event.KeyAdapter() {
      public void keyPressed(java.awt.event.KeyEvent evt) {
        passwordFieldKeyPressed(evt);
      }
    });

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

    urlField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    urlField.setForeground(new java.awt.Color(50, 49, 48));
    urlField.setToolTipText("Enter username");
    urlField.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        urlFieldActionPerformed(evt);
      }
    });
    urlField.addKeyListener(new java.awt.event.KeyAdapter() {
      public void keyPressed(java.awt.event.KeyEvent evt) {
        urlFieldKeyPressed(evt);
      }
    });

    submitBtn.setBackground(new java.awt.Color(0, 120, 212));
    submitBtn.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    submitBtn.setForeground(new java.awt.Color(255, 255, 255));
    submitBtn.setIcon(submitIcon);
    submitBtn.setText("Submit");
    submitBtn.setBorder(null);
    submitBtn.setFocusPainted(false);
    submitBtn.setOpaque(true);
    submitBtn.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        submitBtnActionPerformed(evt);
      }
    });

    javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
    jPanel1.setLayout(jPanel1Layout);
    jPanel1Layout.setHorizontalGroup(
        jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(panelLabel)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(passwordLabel)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED,
                                javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(passwordField, javax.swing.GroupLayout.PREFERRED_SIZE, 288,
                                javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(usernameFieldLabel)
                                .addComponent(urlFieldLabel))
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(urlField, javax.swing.GroupLayout.PREFERRED_SIZE, 288,
                                    javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(usernameField, javax.swing.GroupLayout.PREFERRED_SIZE, 288,
                                    javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(statusLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 28,
                                javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(submitBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 80,
                                javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(7, Short.MAX_VALUE)));
    jPanel1Layout.setVerticalGroup(
        jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(panelLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 44,
                    javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(urlFieldLabel)
                    .addComponent(urlField, javax.swing.GroupLayout.PREFERRED_SIZE, 32,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(usernameField, javax.swing.GroupLayout.PREFERRED_SIZE, 32,
                        javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(usernameFieldLabel))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(passwordField, javax.swing.GroupLayout.PREFERRED_SIZE, 32,
                        javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(passwordLabel))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(submitBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 28,
                        javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(statusLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 28,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 12, Short.MAX_VALUE)));

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE,
                javax.swing.GroupLayout.PREFERRED_SIZE));
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE,
                Short.MAX_VALUE));

    pack();
  }

  private void loadSettings() {
    String dbUrl = DatabaseUtil.getInstance().getDbUrl();
    String username = DatabaseUtil.getInstance().getUsername();
    String password = DatabaseUtil.getInstance().getPassword();

    urlField.setText(dbUrl);
    usernameField.setText(username);
    passwordField.setText(password);
  }

  private void submitSettings() {
    String dbUrl = urlField.getText();
    String username = usernameField.getText();
    String password = passwordField.getText();

    DatabaseUtil.getInstance().setDbUrl(dbUrl);
    DatabaseUtil.getInstance().setUsername(username);
    DatabaseUtil.getInstance().setPassword(password);
    Connection connection = DatabaseUtil.getInstance().getConnection();

    try {
      if (connection.isValid(500)) {
        statusLabel.setIcon(successIcon);
      } else {
        statusLabel.setIcon(errorIcon);
      }
    } catch (Exception e) {
      LOGGER.error("Error verifying connection.", e);
      statusLabel.setIcon(errorIcon);
    } finally {
      DatabaseUtil.getInstance().closeConnection(connection);
    }
  }

  private void usernameFieldActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_usernameFieldActionPerformed
    // TODO add your handling code here:
  }// GEN-LAST:event_usernameFieldActionPerformed

  private void usernameFieldKeyPressed(java.awt.event.KeyEvent evt) {// GEN-FIRST:event_usernameFieldKeyPressed
    // TODO add your handling code here:
  }// GEN-LAST:event_usernameFieldKeyPressed

  private void passwordFieldActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_passwordFieldActionPerformed
    // TODO add your handling code here:
  }// GEN-LAST:event_passwordFieldActionPerformed

  private void submitBtnActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_submitBtnActionPerformed
    submitSettings();
  }// GEN-LAST:event_submitBtnActionPerformed

  private void urlFieldActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_urlFieldActionPerformed
    // TODO add your handling code here:
  }// GEN-LAST:event_urlFieldActionPerformed

  /**
   * @param args the command line arguments
   */
  public static void main(String args[]) {
    try {
      UIManager.setLookAndFeel(new FlatArcIJTheme());
      UIManager.put("TabbedPane.selectedBackground", Color.white);
      UIManager.put("TabbedPane.selectedForeground", new Color(0, 120, 212));
      UIManager.put("Button.arc", 4);
      UIManager.put("Component.arc", 4);
      UIManager.put("CheckBox.arc", 4);
      UIManager.put("ProgressBar.arc", 4);
      UIManager.put("TextComponent.arc", 4);
      UIManager.put("ScrollBar.showButtons", false);
      UIManager.put("ScrollBar.width", 8);
      UIManager.put("ScrollBar.thumbInsets", new java.awt.Insets(2, 2, 2, 2));
      UIManager.put("ScrollBar.thumbArc", 2);
      UIManager.put("ScrollBar.thumb", new Color(0, 120, 210));
      UIManager.put("ScrollBar.track", new Color(255, 255, 255));
    } catch (javax.swing.UnsupportedLookAndFeelException ex) {
      java.util.logging.Logger.getLogger(dialogDb.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
    }
  }

  private void passwordFieldKeyPressed(java.awt.event.KeyEvent evt) {// GEN-FIRST:event_passwordFieldKeyPressed
    // TODO add your handling code here:
  }// GEN-LAST:event_passwordFieldKeyPressed

  private void urlFieldKeyPressed(java.awt.event.KeyEvent evt) {// GEN-FIRST:event_urlFieldKeyPressed
    // TODO add your handling code here:
  }// GEN-LAST:event_urlFieldKeyPressed
}
