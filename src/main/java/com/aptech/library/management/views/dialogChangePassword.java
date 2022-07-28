package com.aptech.library.management.views;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;

import java.awt.Color;

import org.kordamp.ikonli.fluentui.FluentUiRegularAL;
import org.kordamp.ikonli.swing.FontIcon;

import com.aptech.library.management.services.LoginService;

public class dialogChangePassword extends JDialog {
  private JPanel changePwPane;
  private JLabel changePwPaneLabel;
  private JPasswordField confirmPwField;
  private JLabel confirmPwFieldLabel;
  private JPasswordField currentPwField;
  private JLabel currentPwFieldLabel;
  private JPasswordField newPwField;
  private JLabel newPwFieldLabel;
  private JButton submitBtn;

  private FontIcon submitIcon;

  public dialogChangePassword(JFrame parent) {
    super(parent, "Change password", true);
    setLocationRelativeTo(parent);
    prepareIcons();
    initComponents();
  }

  private void prepareIcons() {
    submitIcon = FontIcon.of(FluentUiRegularAL.ARROW_RIGHT_CIRCLE_24, 16, Color.white);
  }

  private void initComponents() {

    changePwPane = new javax.swing.JPanel();
    changePwPaneLabel = new javax.swing.JLabel();
    currentPwFieldLabel = new javax.swing.JLabel();
    currentPwField = new javax.swing.JPasswordField();
    newPwFieldLabel = new javax.swing.JLabel();
    newPwField = new javax.swing.JPasswordField();
    confirmPwFieldLabel = new javax.swing.JLabel();
    confirmPwField = new javax.swing.JPasswordField();
    submitBtn = new javax.swing.JButton();

    setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
    setTitle("Change password");

    changePwPane.setBackground(new java.awt.Color(255, 255, 255));

    changePwPaneLabel.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
    changePwPaneLabel.setForeground(new java.awt.Color(50, 49, 48));
    changePwPaneLabel.setText("Change password");

    currentPwFieldLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    currentPwFieldLabel.setForeground(new java.awt.Color(50, 49, 48));
    currentPwFieldLabel.setText("Current password");

    currentPwField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    currentPwField.setForeground(new java.awt.Color(50, 49, 48));

    newPwFieldLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    newPwFieldLabel.setForeground(new java.awt.Color(50, 49, 48));
    newPwFieldLabel.setText("New password");

    newPwField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    newPwField.setForeground(new java.awt.Color(50, 49, 48));

    confirmPwFieldLabel.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    confirmPwFieldLabel.setForeground(new java.awt.Color(50, 49, 48));
    confirmPwFieldLabel.setText("Confirm password");

    confirmPwField.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    confirmPwField.setForeground(new java.awt.Color(50, 49, 48));

    submitBtn.setBackground(new java.awt.Color(0, 120, 212));
    submitBtn.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    submitBtn.setForeground(new java.awt.Color(255, 255, 255));
    submitBtn.setIcon(submitIcon);
    submitBtn.setText("Submit");
    submitBtn.setBorderPainted(false);
    submitBtn.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(java.awt.event.ActionEvent evt) {
        submitBtnActionPerformed(evt);
      }
    });

    javax.swing.GroupLayout changePwPaneLayout = new javax.swing.GroupLayout(changePwPane);
    changePwPane.setLayout(changePwPaneLayout);
    changePwPaneLayout.setHorizontalGroup(
        changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(changePwPaneLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(changePwPaneLabel)
                    .addGroup(changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(submitBtn)
                        .addGroup(changePwPaneLayout.createSequentialGroup()
                            .addGroup(changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(changePwPaneLayout
                                    .createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(currentPwFieldLabel, javax.swing.GroupLayout.DEFAULT_SIZE,
                                        javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(confirmPwFieldLabel, javax.swing.GroupLayout.DEFAULT_SIZE,
                                        javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addComponent(newPwFieldLabel))
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addGroup(changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(newPwField, javax.swing.GroupLayout.PREFERRED_SIZE, 200,
                                    javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(confirmPwField, javax.swing.GroupLayout.PREFERRED_SIZE, 200,
                                    javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(currentPwField, javax.swing.GroupLayout.PREFERRED_SIZE, 200,
                                    javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)));
    changePwPaneLayout.setVerticalGroup(
        changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(changePwPaneLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(changePwPaneLabel)
                .addGap(18, 18, 18)
                .addGroup(changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(currentPwFieldLabel)
                    .addComponent(currentPwField, javax.swing.GroupLayout.PREFERRED_SIZE, 28,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(newPwFieldLabel)
                    .addComponent(newPwField, javax.swing.GroupLayout.PREFERRED_SIZE, 28,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(changePwPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(confirmPwFieldLabel)
                    .addComponent(confirmPwField, javax.swing.GroupLayout.PREFERRED_SIZE, 28,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(submitBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 28,
                    javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)));

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(changePwPane, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE,
                Short.MAX_VALUE));
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(changePwPane, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE,
                Short.MAX_VALUE));

    pack();
  }

  private void submitBtnActionPerformed(java.awt.event.ActionEvent evt) {// GEN-FIRST:event_submitBtnActionPerformed
    submit();
  }// GEN-LAST:event_submitBtnActionPerformed

  private void submit() {
    String currentPw = String.valueOf(currentPwField.getPassword());
    String newPw = String.valueOf(newPwField.getPassword());
    String confirmPw = String.valueOf(confirmPwField.getPassword());
    String result = "";

    if (newPw.equals(confirmPw)) {
      result = LoginService.getInstance().changePassword(currentPw, newPw);
      JOptionPane.showMessageDialog(getRootPane(), result);
    } else {
      JOptionPane.showMessageDialog(getRootPane(), "Password mismatch.");
    }
  }
}
