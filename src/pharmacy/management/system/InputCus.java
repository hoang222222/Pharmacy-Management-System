/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pharmacy.management.system;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Date;

import javax.swing.JOptionPane;
import static pharmacy.management.system.DBProvider.add;
import static pharmacy.management.system.DBProvider.check;
import static pharmacy.management.system.DBProvider.closeConnect;
import static pharmacy.management.system.DBProvider.excuteAdd;
import static pharmacy.management.system.DBProvider.excuteCheck;
import static pharmacy.management.system.DBProvider.excuteGet;
import static pharmacy.management.system.DBProvider.get;
import static pharmacy.management.system.DBProvider.getConnect;
import static pharmacy.management.system.DBProvider.insertID;
import static pharmacy.management.system.DBProvider.rs;
import static pharmacy.management.system.Signin.txtUsername;
//import static pharmacy.management.system.AddBill.input_cus_phone;

/**
 *
 * @author HOANG
 */
public class InputCus extends javax.swing.JFrame {

    java.sql.Date date_cus;
    String username = txtUsername.getText();

    /**
     * Creates new form InputCusName
     */
    public InputCus() {
        initComponents();
        jdateCurrentCus();

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtCusname = new javax.swing.JTextField();
        btnOk = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        txtPhone = new javax.swing.JTextField();
        btnCancel = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        txtCusAdd = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        cus_birth = new com.toedter.calendar.JDateChooser();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));
        setUndecorated(true);
        setResizable(false);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 153, 102)));

        jLabel1.setForeground(new java.awt.Color(0, 153, 102));
        jLabel1.setText("Customer Name:");

        btnOk.setBackground(new java.awt.Color(0, 204, 102));
        btnOk.setText("OK");
        btnOk.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOkActionPerformed(evt);
            }
        });

        jLabel2.setForeground(new java.awt.Color(0, 153, 102));
        jLabel2.setText("Phone:");

        txtPhone.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtPhoneKeyTyped(evt);
            }
        });

        btnCancel.setBackground(new java.awt.Color(0, 204, 102));
        btnCancel.setText("Cancel");
        btnCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelActionPerformed(evt);
            }
        });

        jLabel3.setForeground(new java.awt.Color(0, 153, 102));
        jLabel3.setText("Address:");

        jLabel4.setForeground(new java.awt.Color(0, 153, 102));
        jLabel4.setText("Birthday:");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(73, 73, 73)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 97, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 97, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 97, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(91, 91, 91)
                        .addComponent(btnOk, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(45, 45, 45)
                        .addComponent(btnCancel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(231, 231, 231))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(35, 35, 35)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(txtCusname, javax.swing.GroupLayout.PREFERRED_SIZE, 452, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(txtCusAdd, javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(cus_birth, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(txtPhone, javax.swing.GroupLayout.PREFERRED_SIZE, 452, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addGap(76, 76, 76))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(49, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtCusname, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtPhone, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtCusAdd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4)
                    .addComponent(cus_birth, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(34, 34, 34)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnOk)
                    .addComponent(btnCancel))
                .addGap(30, 30, 30))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    public static String input_cus_name;
    public static String input_cus_phone;

    public void jdateCurrentCus() {
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        cus_birth.setDate(date);
    }
    private void btnOkActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOkActionPerformed
        if (txtCusname.getText().equals("") || txtPhone.getText().equals("")) {
            JOptionPane.showMessageDialog(this, "Somthing is empty");
        } else {
            try {
                String c_name = "";
                input_cus_name = txtCusname.getText();
                input_cus_phone = txtPhone.getText();
                Date birth = cus_birth.getDate();
                date_cus = new java.sql.Date(birth.getTime());
                String sql_check = "select * from customer where CustomerPhone = ?";
                excuteCheck(sql_check);
                check.setString(1, txtPhone.getText());
                rs = check.executeQuery();
                if (rs.next()) {
                    c_name = rs.getString("CustomerName");
                    if (c_name.equals(txtCusname.getText()) == true) {
                        AddBill ab = new AddBill();
                        ab.setVisible(true);
                        this.dispose();
                    } else {
                        JOptionPane.showMessageDialog(this, "Phone doesn't match Name");
                    }
                } else {
                    JOptionPane.showMessageDialog(this, "This is a new customer.");
                    String sql = "SELECT CustomerID FROM customer ORDER BY CustomerID DESC LIMIT 1";
                    String colname = "CustomerID";
                    String type = "CUS";
                    String cus_id = insertID(type, sql, colname);
                    String sql_add = "insert into customer values (?,?,?,?,?)";
                    excuteAdd(sql_add);
                    add.setString(1, cus_id);
                    add.setString(2, txtCusname.getText());
                    add.setString(3, txtCusAdd.getText());
                    add.setString(4, txtPhone.getText());
                    add.setDate(5, date_cus);
                    int row = add.executeUpdate();
                    AddBill ab = new AddBill();
                    ab.setVisible(true);
                    this.dispose();
                }

            } catch (SQLException ex) {
                Logger.getLogger(InputCus.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }//GEN-LAST:event_btnOkActionPerformed

    private void btnCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelActionPerformed
        // TODO add your handling code here:
        try {
            // TODO add your handling code here:
            String tmp = "";
            getConnect();
            //delBill();
            String sql = "select EmployeesPosition from employees where Username=?";
            excuteGet(sql);
            get.setString(1, username);
            rs = get.executeQuery();
            if (rs.next()) {
                tmp = rs.getString("EmployeesPosition");
            }

            if (username.equals("admin") == true) {
                StartScreenAdmin sa = new StartScreenAdmin();
                sa.setVisible(true);
                this.dispose();
            } else {
                StartScreenUser su = new StartScreenUser();
                su.setVisible(true);
                this.dispose();
            }
            closeConnect();
        } catch (SQLException ex) {
            Logger.getLogger(AddBill.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.disable();
    }//GEN-LAST:event_btnCancelActionPerformed

    private void txtPhoneKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtPhoneKeyTyped
         // TODO add your handling code here:
         char char_input = evt.getKeyChar();
        if (!Character.isDigit(char_input) && (char_input != '\b')) {
            JOptionPane.showMessageDialog(this, "Only Positive Numbers Allowed");
            txtPhone.requestFocus();
        }
    }//GEN-LAST:event_txtPhoneKeyTyped

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(InputCus.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new InputCus().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancel;
    private javax.swing.JButton btnOk;
    private com.toedter.calendar.JDateChooser cus_birth;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField txtCusAdd;
    private javax.swing.JTextField txtCusname;
    private javax.swing.JTextField txtPhone;
    // End of variables declaration//GEN-END:variables
}
