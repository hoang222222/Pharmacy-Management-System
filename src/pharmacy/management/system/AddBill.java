/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pharmacy.management.system;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import static pharmacy.management.system.DBProvider.add;
import static pharmacy.management.system.DBProvider.check;
import static pharmacy.management.system.DBProvider.closeConnect;
import static pharmacy.management.system.DBProvider.excuteAdd;
import static pharmacy.management.system.DBProvider.excuteCheck;
import static pharmacy.management.system.DBProvider.excuteGet;
import static pharmacy.management.system.DBProvider.get;
import static pharmacy.management.system.DBProvider.getConnect;
import static pharmacy.management.system.DBProvider.insertID;
import static pharmacy.management.system.Signin.txtUsername;
import static pharmacy.management.system.DBProvider.rs;

/**
 *
 * @author HOANG
 */
public class AddBill extends javax.swing.JFrame {

    public static List<Bill_Class> listBill;
    String username = txtUsername.getText();
    String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());

    //String titlebill ="              *********             " +"\n"+"\n"+"\t    PHARMACY BILL"+"\n\n"+"  Medicine Name              Amount\n"+"===================================\n";
    /**
     * Creates new form AddReport
     */
    public AddBill() {
        initComponents();
        jdateCurrentReport();
        txtBillID.disable();
        txtBillID.disable();
        txtDateBill.disable();
        txtHH.disable();
        txtMM.disable();
        txtSS.disable();
        setBillID();
        setEmpID();
        txtEmID.disable();
        headerBill();
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
        jSplitPane1 = new javax.swing.JSplitPane();
        pnlReportInfo = new javax.swing.JPanel();
        jLabel31 = new javax.swing.JLabel();
        txtBillID = new javax.swing.JTextField();
        jLabel32 = new javax.swing.JLabel();
        jLabel33 = new javax.swing.JLabel();
        txtEmID = new javax.swing.JTextField();
        jLabel34 = new javax.swing.JLabel();
        txtCuPhone = new javax.swing.JTextField();
        jLabel36 = new javax.swing.JLabel();
        txtHH = new javax.swing.JTextField();
        jLabel37 = new javax.swing.JLabel();
        txtMM = new javax.swing.JTextField();
        jLabel38 = new javax.swing.JLabel();
        txtSS = new javax.swing.JTextField();
        btnAddBill = new javax.swing.JButton();
        btnCancelBill = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        txtMedName = new javax.swing.JTextField();
        txtAmount = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        textAreaBill = new javax.swing.JTextArea();
        txtDateBill = new javax.swing.JTextField();
        btnPrintBill = new javax.swing.JButton();

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Adding Bill");
        setBackground(new java.awt.Color(255, 255, 255));

        pnlReportInfo.setBackground(new java.awt.Color(255, 255, 255));

        jLabel31.setText("Bill ID:");

        jLabel32.setText("Date:");

        jLabel33.setText("Empployee ID:");

        jLabel34.setText("Customer Phone:");

        jLabel36.setText("Time:");

        txtHH.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtHHKeyTyped(evt);
            }
        });

        jLabel37.setText("/");

        txtMM.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtMMKeyTyped(evt);
            }
        });

        jLabel38.setText("/");

        txtSS.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtSSKeyTyped(evt);
            }
        });

        btnAddBill.setText("Add");
        btnAddBill.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddBillActionPerformed(evt);
            }
        });

        btnCancelBill.setText("Cancel");
        btnCancelBill.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelBillActionPerformed(evt);
            }
        });

        jLabel1.setText("Medicine name:");

        txtMedName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtMedNameActionPerformed(evt);
            }
        });

        txtAmount.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtAmountActionPerformed(evt);
            }
        });

        jLabel2.setText("Amount:");

        jPanel2.setBackground(new java.awt.Color(0, 153, 102));
        jPanel2.setForeground(new java.awt.Color(0, 153, 102));

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 8, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        textAreaBill.setEditable(false);
        textAreaBill.setColumns(20);
        textAreaBill.setFont(new java.awt.Font("Courier New", 0, 13)); // NOI18N
        textAreaBill.setRows(5);
        jScrollPane1.setViewportView(textAreaBill);

        btnPrintBill.setText("Print");
        btnPrintBill.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrintBillActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlReportInfoLayout = new javax.swing.GroupLayout(pnlReportInfo);
        pnlReportInfo.setLayout(pnlReportInfoLayout);
        pnlReportInfoLayout.setHorizontalGroup(
            pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlReportInfoLayout.createSequentialGroup()
                .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlReportInfoLayout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(pnlReportInfoLayout.createSequentialGroup()
                                .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(jLabel31, javax.swing.GroupLayout.DEFAULT_SIZE, 83, Short.MAX_VALUE)
                                        .addComponent(jLabel32, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addComponent(jLabel36))
                                .addGap(43, 43, 43)
                                .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(pnlReportInfoLayout.createSequentialGroup()
                                        .addComponent(txtHH, javax.swing.GroupLayout.PREFERRED_SIZE, 49, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel37)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtMM, javax.swing.GroupLayout.PREFERRED_SIZE, 49, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel38)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtSS, javax.swing.GroupLayout.PREFERRED_SIZE, 49, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(txtBillID)
                                    .addComponent(txtDateBill)))
                            .addGroup(pnlReportInfoLayout.createSequentialGroup()
                                .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel34, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel33, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addGap(27, 27, 27)
                                .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addComponent(txtMedName, javax.swing.GroupLayout.DEFAULT_SIZE, 177, Short.MAX_VALUE)
                                    .addComponent(txtCuPhone, javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtEmID)
                                    .addComponent(txtAmount)))))
                    .addGroup(pnlReportInfoLayout.createSequentialGroup()
                        .addGap(57, 57, 57)
                        .addComponent(btnAddBill)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btnPrintBill)
                        .addGap(10, 10, 10)
                        .addComponent(btnCancelBill)))
                .addGap(18, 18, 18)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 314, Short.MAX_VALUE)
                .addContainerGap())
        );
        pnlReportInfoLayout.setVerticalGroup(
            pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(pnlReportInfoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlReportInfoLayout.createSequentialGroup()
                        .addComponent(jScrollPane1)
                        .addContainerGap())
                    .addGroup(pnlReportInfoLayout.createSequentialGroup()
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel31)
                            .addComponent(txtBillID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel32)
                            .addComponent(txtDateBill, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(21, 21, 21)
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel36)
                            .addComponent(txtHH, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel37)
                            .addComponent(txtMM, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel38)
                            .addComponent(txtSS, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel33)
                            .addComponent(txtEmID, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel34)
                            .addComponent(txtCuPhone, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtMedName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1))
                        .addGap(18, 18, 18)
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtAmount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 120, Short.MAX_VALUE)
                        .addGroup(pnlReportInfoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnAddBill)
                            .addComponent(btnCancelBill)
                            .addComponent(btnPrintBill))
                        .addGap(30, 30, 30))))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlReportInfo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(pnlReportInfo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents
    public void headerBill() {
        String titlebill = "              *********             " + "\n" + "\n" + "\t    PHARMACY BILL" + "\n\n" + "  Medicine Name              Amount\n" + "===================================\n";
        textAreaBill.setText(titlebill);
    }

    public void setEmpID() {
        try {
            getConnect();
            String sql = "select EmployeesID from employees where Username=?";
            excuteCheck(sql);
            check.setString(1, username);
            rs = check.executeQuery();
            if (rs.next()) {
                txtEmID.setText(rs.getString("EmployeesID"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AddBill.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void setBillID() {
        getConnect();
        String sql = "SELECT BillID FROM bill ORDER BY BillID DESC LIMIT 1";
        String colname = "BillID";
        String type = "BIL";
        String bill_id = insertID(type, sql, colname);
        txtBillID.setText(bill_id);
        closeConnect();
    }

    public void jdateCurrentReport() {
        String[] parts = timeStamp.split(" ");
        String parts1 = parts[0];
        String parts2 = parts[1];
        //String date = new SimpleDateFormat("yyyy-MM-dd").parse(parts1).toString();
        //String setdate = date.toString();
        txtDateBill.setText(parts1);
        String[] part = parts2.split(":");
        String part1 = part[0];
        String part2 = part[1];
        String part3 = part[2];
        txtHH.setText(part1);
        txtMM.setText(part2);
        txtSS.setText(part3);
    }
    private void txtSSKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtSSKeyTyped
        // TODO add your handling code here:
        char char_input = evt.getKeyChar();
        if (!Character.isDigit(char_input) && (char_input != '\b')) {
            JOptionPane.showMessageDialog(this, "Only Positive Numbers Allowed");
            txtSS.requestFocus();
        }
    }//GEN-LAST:event_txtSSKeyTyped

    private void txtMMKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtMMKeyTyped
        // TODO add your handling code here:
        char char_input = evt.getKeyChar();
        if (!Character.isDigit(char_input) && (char_input != '\b')) {
            JOptionPane.showMessageDialog(this, "Only Positive Numbers Allowed");
            txtMM.requestFocus();
        }
    }//GEN-LAST:event_txtMMKeyTyped

    private void txtHHKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtHHKeyTyped
        // TODO add your handling code here:
        char char_input = evt.getKeyChar();
        if (!Character.isDigit(char_input) && (char_input != '\b')) {
            JOptionPane.showMessageDialog(this, "Only Positive Numbers Allowed");
            txtHH.requestFocus();
        }
    }//GEN-LAST:event_txtHHKeyTyped

    private void txtMedNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtMedNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtMedNameActionPerformed

    private void txtAmountActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtAmountActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtAmountActionPerformed
    
    private void btnAddBillActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddBillActionPerformed
        // TODO add your handling code here:
        if (txtCuPhone.getText().equals("")) {
            JOptionPane.showMessageDialog(this, "Customer Phone is null");
        } else {
            try {
                getConnect();
                String cus_name = "";
                String sql_check = "select * from customer where CustomerPhone=?";
                excuteCheck(sql_check);
                check.setInt(1, Integer.valueOf(txtCuPhone.getText()));
                rs = check.executeQuery();
                if (rs.next()) {
                    cus_name = rs.getString("CustomerName");
                    textAreaBill.setText(textAreaBill.getText() + " " + txtMedName.getText() + "                        " + txtAmount.getText() + "\n");
                    String time = txtDateBill.getText() + " " + txtHH.getText() + ":" + txtHH.getText() + ":" + txtSS.getText();
                    Bill_Class bill = new Bill_Class();
                    bill.setBillID(txtBillID.getText());
                    bill.setBillDate(time);
                    bill.setCusName(cus_name);
                    bill.setCusPhone(txtCuPhone.getText());
                    bill.setMedName(txtMedName.getText());
                    bill.setAmount(Integer.valueOf(txtAmount.getText()));
                    bill.setEmpID(txtEmID.getText());
                    listBill.add(bill);

                } else {
                    int n = JOptionPane.showConfirmDialog(this, "This is new customer.", "Warning", JOptionPane.YES_NO_OPTION);
                    if (n == JOptionPane.YES_OPTION) {
                    }
                    JOptionPane.showMessageDialog(this, "This is a new customer!");
                    InputCusName ip = new InputCusName();
                    ip.setVisible(true);

//                    String sql = "SELECT CustomerID FROM customer ORDER BY CustomerID DESC LIMIT 1";
//                    String colname = "CustomerID";
//                    String type = "CUS";
//                    String cus_id = insertID(type, sql, colname);
//                    String sql_add = "insert into customer (CustomerID,CustomerName,CustomerPhone) values (?,?,?)";
//                    excuteAdd(sql_add);
//                    add.setString(1, cus_id);
//                    add.setString(2, );
                }
            } catch (SQLException ex) {
                Logger.getLogger(AddBill.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        closeConnect();
        txtMedName.setText("");
        txtAmount.setText("");
    }//GEN-LAST:event_btnAddBillActionPerformed

    private void btnCancelBillActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelBillActionPerformed
        try {
            // TODO add your handling code here:
            String tmp = "";
            getConnect();
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
    }//GEN-LAST:event_btnCancelBillActionPerformed

    private void btnPrintBillActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPrintBillActionPerformed
        try {
            // TODO add your handling code here:
            JasperDesign jd = JRXmlLoader.load("E:\\PharmacyManagementSystem\\src\\reports\\report_bill.jrxml");
            
        } catch (JRException ex) {
            Logger.getLogger(AddBill.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }//GEN-LAST:event_btnPrintBillActionPerformed

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
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(AddBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AddBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AddBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AddBill.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
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
                new AddBill().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAddBill;
    private javax.swing.JButton btnCancelBill;
    private javax.swing.JButton btnPrintBill;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel31;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel33;
    private javax.swing.JLabel jLabel34;
    private javax.swing.JLabel jLabel36;
    private javax.swing.JLabel jLabel37;
    private javax.swing.JLabel jLabel38;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSplitPane jSplitPane1;
    private javax.swing.JPanel pnlReportInfo;
    private javax.swing.JTextArea textAreaBill;
    private javax.swing.JTextField txtAmount;
    private javax.swing.JTextField txtBillID;
    private javax.swing.JTextField txtCuPhone;
    private javax.swing.JTextField txtDateBill;
    private javax.swing.JTextField txtEmID;
    private javax.swing.JTextField txtHH;
    private javax.swing.JTextField txtMM;
    private javax.swing.JTextField txtMedName;
    private javax.swing.JTextField txtSS;
    // End of variables declaration//GEN-END:variables
}
