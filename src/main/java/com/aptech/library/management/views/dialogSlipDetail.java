package com.aptech.library.management.views;

import java.text.NumberFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Currency;

import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import com.aptech.library.management.models.Book;
import com.aptech.library.management.models.BorrowingSlip;
import com.aptech.library.management.models.Student;
import com.aptech.library.management.services.BookService;
import com.aptech.library.management.services.StudentService;
import com.aptech.library.management.types.SlipStatus;

public class dialogSlipDetail extends JDialog {
  private javax.swing.JLabel bookIdLabel;
  private JLabel bookIdPlaceholder;
  private JLabel bookInfoLabel;
  private JLabel bookNameLabel;
  private JLabel bookNamePlaceholder;
  private JLabel bookRentLabel;
  private JLabel bookRentPlaceholder;
  private JLabel borrowDateLabel;
  private JLabel borrowDatePlaceholder;
  private JLabel borrowInfoLabel;
  private JLabel returnDateLabel;
  private JLabel returnDatePlaceholder;
  private JPanel slipDetailPane;
  private JLabel slipDetailPaneLabel;
  private JLabel slipIdLabel;
  private JLabel slipIdPlaceHolder;
  private JLabel statusLabel;
  private JLabel statusPlaceholder;
  private JLabel studentAddressLabel;
  private JLabel studentAddressPlaceholder;
  private JLabel studentEmailLabel;
  private JLabel studentEmailPlaceholder;
  private JLabel studentIdLabel;
  private JLabel studentIdPlaceholder;
  private JLabel studentInfoLabel;
  private JLabel studentNameLabel;
  private JLabel studentNamePlaceholder;
  private JLabel studentPhoneLabel;
  private JLabel studentPhonePlaceholder;

  private Currency vnd = Currency.getInstance("VND");
  private NumberFormat currencyFormat = NumberFormat.getCurrencyInstance();
  private DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

  public dialogSlipDetail(JFrame parent, BorrowingSlip slip) {
    super(parent, "Borrowing slip detail", true);
    initComponents();
    loadData(slip);
  }

  private void initComponents() {

    slipDetailPane = new javax.swing.JPanel();
    slipDetailPaneLabel = new javax.swing.JLabel();
    slipIdLabel = new javax.swing.JLabel();
    slipIdPlaceHolder = new javax.swing.JLabel();
    studentInfoLabel = new javax.swing.JLabel();
    studentIdLabel = new javax.swing.JLabel();
    studentNameLabel = new javax.swing.JLabel();
    studentPhoneLabel = new javax.swing.JLabel();
    studentEmailLabel = new javax.swing.JLabel();
    studentAddressLabel = new javax.swing.JLabel();
    bookInfoLabel = new javax.swing.JLabel();
    bookIdLabel = new javax.swing.JLabel();
    bookNameLabel = new javax.swing.JLabel();
    bookRentLabel = new javax.swing.JLabel();
    borrowInfoLabel = new javax.swing.JLabel();
    borrowDateLabel = new javax.swing.JLabel();
    returnDateLabel = new javax.swing.JLabel();
    statusLabel = new javax.swing.JLabel();
    studentIdPlaceholder = new javax.swing.JLabel();
    studentNamePlaceholder = new javax.swing.JLabel();
    studentPhonePlaceholder = new javax.swing.JLabel();
    studentEmailPlaceholder = new javax.swing.JLabel();
    studentAddressPlaceholder = new javax.swing.JLabel();
    bookIdPlaceholder = new javax.swing.JLabel();
    bookNamePlaceholder = new javax.swing.JLabel();
    bookRentPlaceholder = new javax.swing.JLabel();
    borrowDatePlaceholder = new javax.swing.JLabel();
    returnDatePlaceholder = new javax.swing.JLabel();
    statusPlaceholder = new javax.swing.JLabel();

    setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

    slipDetailPane.setBackground(new java.awt.Color(255, 255, 255));

    slipDetailPaneLabel.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
    slipDetailPaneLabel.setForeground(new java.awt.Color(50, 49, 48));
    slipDetailPaneLabel.setText("Slip detail");

    slipIdLabel.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
    slipIdLabel.setForeground(new java.awt.Color(50, 49, 48));
    slipIdLabel.setText("Slip ID:");

    slipIdPlaceHolder.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
    slipIdPlaceHolder.setForeground(new java.awt.Color(50, 49, 48));

    studentInfoLabel.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
    studentInfoLabel.setForeground(new java.awt.Color(50, 49, 48));
    studentInfoLabel.setText("Student info:");

    studentIdLabel.setForeground(new java.awt.Color(50, 49, 48));
    studentIdLabel.setText("Student ID:");

    studentNameLabel.setForeground(new java.awt.Color(50, 49, 48));
    studentNameLabel.setText("Name:");

    studentPhoneLabel.setForeground(new java.awt.Color(50, 49, 48));
    studentPhoneLabel.setText("Phone:");

    studentEmailLabel.setForeground(new java.awt.Color(50, 49, 48));
    studentEmailLabel.setText("Email:");

    studentAddressLabel.setForeground(new java.awt.Color(50, 49, 48));
    studentAddressLabel.setText("Address:");

    bookInfoLabel.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
    bookInfoLabel.setForeground(new java.awt.Color(50, 49, 48));
    bookInfoLabel.setText("Book info:");

    bookIdLabel.setForeground(new java.awt.Color(50, 49, 48));
    bookIdLabel.setText("Book ID:");

    bookNameLabel.setForeground(new java.awt.Color(50, 49, 48));
    bookNameLabel.setText("Name:");

    bookRentLabel.setForeground(new java.awt.Color(50, 49, 48));
    bookRentLabel.setText("Rent:");

    borrowInfoLabel.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
    borrowInfoLabel.setForeground(new java.awt.Color(50, 49, 48));
    borrowInfoLabel.setText("Borrow info:");

    borrowDateLabel.setForeground(new java.awt.Color(50, 49, 48));
    borrowDateLabel.setText("Borrow date:");

    returnDateLabel.setForeground(new java.awt.Color(50, 49, 48));
    returnDateLabel.setText("Return date:");

    statusLabel.setForeground(new java.awt.Color(50, 49, 48));
    statusLabel.setText("Status:");

    studentIdPlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    studentIdPlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    studentNamePlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    studentNamePlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    studentPhonePlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    studentPhonePlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    studentEmailPlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    studentEmailPlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    studentAddressPlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    studentAddressPlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    bookIdPlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    bookIdPlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    bookNamePlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    bookNamePlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    bookRentPlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    bookRentPlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    borrowDatePlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    borrowDatePlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    returnDatePlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    returnDatePlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    statusPlaceholder.setBackground(new java.awt.Color(244, 244, 244));
    statusPlaceholder.setForeground(new java.awt.Color(50, 49, 48));

    javax.swing.GroupLayout slipDetailPaneLayout = new javax.swing.GroupLayout(slipDetailPane);
    slipDetailPane.setLayout(slipDetailPaneLayout);
    slipDetailPaneLayout.setHorizontalGroup(
        slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(slipDetailPaneLayout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(borrowDateLabel)
                                .addGap(9, 9, 9)
                                .addComponent(borrowDatePlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(studentNameLabel)
                                .addGap(41, 41, 41)
                                .addComponent(studentNamePlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(studentIdLabel)
                                .addGap(18, 18, 18)
                                .addComponent(studentIdPlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE,
                                    javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(studentPhoneLabel)
                                .addGap(39, 39, 39)
                                .addComponent(studentPhonePlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(studentEmailLabel)
                                .addGap(44, 44, 44)
                                .addComponent(studentEmailPlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(studentAddressLabel)
                                .addGap(31, 31, 31)
                                .addComponent(studentAddressPlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(bookIdLabel)
                                .addGap(32, 32, 32)
                                .addComponent(bookIdPlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(bookNameLabel)
                                .addGap(41, 41, 41)
                                .addComponent(bookNamePlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(bookRentLabel)
                                .addGap(49, 49, 49)
                                .addComponent(bookRentPlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(returnDateLabel)
                                .addGap(12, 12, 12)
                                .addComponent(returnDatePlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(statusLabel)
                                .addGap(41, 41, 41)
                                .addComponent(statusPlaceholder, javax.swing.GroupLayout.DEFAULT_SIZE, 286,
                                    Short.MAX_VALUE))))
                    .addGroup(slipDetailPaneLayout.createSequentialGroup()
                        .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(slipDetailPaneLabel)
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addComponent(slipIdLabel)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(slipIdPlaceHolder))
                            .addComponent(studentInfoLabel)
                            .addComponent(bookInfoLabel)
                            .addComponent(borrowInfoLabel))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap()));

    slipDetailPaneLayout.linkSize(javax.swing.SwingConstants.HORIZONTAL,
        new java.awt.Component[] { slipIdLabel, slipIdPlaceHolder });

    slipDetailPaneLayout.setVerticalGroup(
        slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(slipDetailPaneLabel)
                .addGap(18, 18, 18)
                .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(slipIdLabel)
                    .addComponent(slipIdPlaceHolder))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(slipDetailPaneLayout.createSequentialGroup()
                        .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addGroup(
                                    slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                            .addGroup(slipDetailPaneLayout
                                                .createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                                    .addComponent(studentInfoLabel)
                                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                    .addGroup(slipDetailPaneLayout
                                                        .createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                                        .addComponent(studentIdLabel)
                                                        .addComponent(studentIdPlaceholder,
                                                            javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                                            javax.swing.GroupLayout.PREFERRED_SIZE))
                                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                    .addComponent(studentNameLabel))
                                                .addComponent(studentNamePlaceholder,
                                                    javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                                    javax.swing.GroupLayout.PREFERRED_SIZE))
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(studentPhoneLabel))
                                        .addComponent(studentPhonePlaceholder, javax.swing.GroupLayout.PREFERRED_SIZE,
                                            16, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(studentEmailLabel))
                            .addComponent(studentEmailPlaceholder, javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(studentAddressLabel))
                    .addComponent(studentAddressPlaceholder, javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(slipDetailPaneLayout.createSequentialGroup()
                        .addComponent(bookInfoLabel)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                .addGroup(
                                    slipDetailPaneLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                        .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                            .addGroup(slipDetailPaneLayout
                                                .createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                                    .addGroup(slipDetailPaneLayout
                                                        .createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                                        .addGroup(slipDetailPaneLayout.createSequentialGroup()
                                                            .addGroup(slipDetailPaneLayout
                                                                .createParallelGroup(
                                                                    javax.swing.GroupLayout.Alignment.TRAILING)
                                                                .addComponent(bookIdLabel)
                                                                .addComponent(bookIdPlaceholder,
                                                                    javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                                                    javax.swing.GroupLayout.PREFERRED_SIZE))
                                                            .addPreferredGap(
                                                                javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                            .addComponent(bookNameLabel))
                                                        .addComponent(bookNamePlaceholder,
                                                            javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                                            javax.swing.GroupLayout.PREFERRED_SIZE))
                                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                                    .addComponent(bookRentLabel))
                                                .addComponent(bookRentPlaceholder,
                                                    javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                                    javax.swing.GroupLayout.PREFERRED_SIZE))
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                            .addComponent(borrowInfoLabel)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(borrowDateLabel))
                                        .addComponent(borrowDatePlaceholder, javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                            javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(returnDateLabel))
                            .addComponent(returnDatePlaceholder, javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                                javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(statusLabel))
                    .addComponent(statusPlaceholder, javax.swing.GroupLayout.PREFERRED_SIZE, 16,
                        javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)));

    slipDetailPaneLayout.linkSize(javax.swing.SwingConstants.VERTICAL,
        new java.awt.Component[] { slipIdLabel, slipIdPlaceHolder });

    javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
    getContentPane().setLayout(layout);
    layout.setHorizontalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(slipDetailPane, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE,
                Short.MAX_VALUE));
    layout.setVerticalGroup(
        layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(slipDetailPane, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE,
                Short.MAX_VALUE));

    pack();
  }

  private void loadData(BorrowingSlip slip) {
    currencyFormat.setCurrency(vnd);
    long slipId = slip.getId();
    LocalDate borrowDate = slip.getBorrowDate();
    LocalDate returnDate = slip.getReturnDate();
    int status = slip.getStatus();

    long studentId = slip.getStudentId();
    Student student = StudentService.getInstance().getStudent(studentId);
    String studentName = student.getName();
    long phone = student.getPhone();
    String email = student.getEmail();
    String address = student.getAddress();

    long bookId = slip.getBookId();
    Book book = BookService.getInstance().getBook(bookId);
    String bookName = book.getName();
    float rent = book.getRent();

    slipDetailPaneLabel.setText("Borrowing slip #" + slipId);
    slipIdPlaceHolder.setText(slipId + "");
    studentIdPlaceholder.setText(studentId + "");
    studentNamePlaceholder.setText(studentName);
    studentPhonePlaceholder.setText(phone + "");
    studentEmailPlaceholder.setText(email);
    studentAddressPlaceholder.setText(address);
    bookIdPlaceholder.setText(bookId + "");
    bookNamePlaceholder.setText(bookName);
    bookRentPlaceholder.setText(currencyFormat.format(rent));
    borrowDatePlaceholder.setText(borrowDate.format(dateTimeFormatter).toString());
    returnDatePlaceholder.setText(returnDate.format(dateTimeFormatter).toString());
    statusPlaceholder.setText(SlipStatus.getById(status).value());
  }
}
