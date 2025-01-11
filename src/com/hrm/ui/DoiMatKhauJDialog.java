/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hrm.ui;


import com.hrm.controlller.DoiMatKhauController;
import com.hrm.dao.impl.NhanVienDAOImpl;
import com.hrm.util.Auth;
import com.hrm.util.MsgBox;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class DoiMatKhauJDialog extends javax.swing.JDialog implements DoiMatKhauController{

    /**
     * Creates new form DoiMatKhauJDialog
     */
    public DoiMatKhauJDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        this.initialize();
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
        jLabel3 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtMaNV = new javax.swing.JTextField();
        txtMaXacNhan = new javax.swing.JPasswordField();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        txtMatKhauMoi = new javax.swing.JPasswordField();
        txtMatKhauMoi2 = new javax.swing.JPasswordField();
        jLabel6 = new javax.swing.JLabel();
        lblMaXacNhan = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        btnDoiMatKhau = new javax.swing.JButton();
        btnHuy = new javax.swing.JButton();
        btnDoiMa = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("EduSys - Đổi mật khẩu");

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Tick.png"))); // NOI18N
        jLabel3.setText("Mã xác nhận:");
        jLabel3.setVerticalAlignment(javax.swing.SwingConstants.BOTTOM);

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/User.png"))); // NOI18N
        jLabel2.setText("Tên đăng nhập");
        jLabel2.setVerticalAlignment(javax.swing.SwingConstants.BOTTOM);

        txtMaNV.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        txtMaNV.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtMaNVActionPerformed(evt);
            }
        });

        txtMaXacNhan.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        txtMaXacNhan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtMaXacNhanActionPerformed(evt);
            }
        });

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/login_1.png"))); // NOI18N
        jLabel4.setText("Mật khẩu mới");
        jLabel4.setVerticalAlignment(javax.swing.SwingConstants.BOTTOM);

        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/confirm.png"))); // NOI18N
        jLabel5.setText("Xác nhận mật khẩu mới");
        jLabel5.setVerticalAlignment(javax.swing.SwingConstants.BOTTOM);

        txtMatKhauMoi.setBorder(javax.swing.BorderFactory.createTitledBorder(""));

        txtMatKhauMoi2.setBorder(javax.swing.BorderFactory.createTitledBorder(""));

        jLabel6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/reset_password.gif"))); // NOI18N
        jLabel6.setBorder(javax.swing.BorderFactory.createTitledBorder(""));

        lblMaXacNhan.setBackground(new java.awt.Color(204, 204, 0));
        lblMaXacNhan.setFont(new java.awt.Font("Segoe UI", 3, 14)); // NOI18N
        lblMaXacNhan.setForeground(new java.awt.Color(255, 0, 51));
        lblMaXacNhan.setText("*****");

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 102, 51));
        jLabel1.setText("ĐỔI MẬT KHẨU");

        btnDoiMatKhau.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Accept.png"))); // NOI18N
        btnDoiMatKhau.setText("Đồng ý");
        btnDoiMatKhau.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDoiMatKhauActionPerformed(evt);
            }
        });

        btnHuy.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/No.png"))); // NOI18N
        btnHuy.setText("Hủy bỏ");
        btnHuy.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnHuyActionPerformed(evt);
            }
        });

        btnDoiMa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Refresh.png"))); // NOI18N
        btnDoiMa.setContentAreaFilled(false);
        btnDoiMa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDoiMaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addComponent(jLabel6)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(83, 83, 83)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jLabel2))
                                .addGap(89, 89, 89))
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                    .addComponent(btnDoiMatKhau)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(btnHuy))
                                .addGroup(jPanel1Layout.createSequentialGroup()
                                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                        .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGroup(jPanel1Layout.createSequentialGroup()
                                            .addGap(33, 33, 33)
                                            .addComponent(txtMaXacNhan, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGap(27, 27, 27)))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(32, 32, 32)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtMatKhauMoi, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtMaNV, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                            .addComponent(txtMatKhauMoi2, javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup()
                                                .addGap(129, 129, 129)
                                                .addComponent(lblMaXacNhan, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(btnDoiMa, javax.swing.GroupLayout.PREFERRED_SIZE, 21, javax.swing.GroupLayout.PREFERRED_SIZE))))
                            .addComponent(jLabel3))
                        .addGap(87, 87, 87))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(107, 107, 107)
                        .addComponent(jLabel1)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(32, 32, 32)
                        .addComponent(jLabel1)
                        .addGap(31, 31, 31)
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtMaNV, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtMatKhauMoi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtMatKhauMoi2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnDoiMa, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(jLabel3)
                                .addComponent(lblMaXacNhan)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtMaXacNhan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(20, 20, 20))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 302, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnDoiMatKhau)
                    .addComponent(btnHuy))
                .addContainerGap(7, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnHuyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnHuyActionPerformed
        // TODO add your handling code here:
        this.huyBo();
    }//GEN-LAST:event_btnHuyActionPerformed

    private void btnDoiMatKhauActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDoiMatKhauActionPerformed
        // TODO add your handling code here:
        this.doiMatKhau();
        
    }//GEN-LAST:event_btnDoiMatKhauActionPerformed

    private void txtMaXacNhanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtMaXacNhanActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtMaXacNhanActionPerformed

    private void txtMaNVActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtMaNVActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtMaNVActionPerformed

    private void btnDoiMaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDoiMaActionPerformed
        this.doiMa();
    }//GEN-LAST:event_btnDoiMaActionPerformed

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
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DoiMatKhauJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                DoiMatKhauJDialog dialog = new DoiMatKhauJDialog(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDoiMa;
    private javax.swing.JButton btnDoiMatKhau;
    private javax.swing.JButton btnHuy;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lblMaXacNhan;
    private javax.swing.JTextField txtMaNV;
    private javax.swing.JPasswordField txtMaXacNhan;
    private javax.swing.JPasswordField txtMatKhauMoi;
    private javax.swing.JPasswordField txtMatKhauMoi2;
    // End of variables declaration//GEN-END:variables
@Override
    public void initialize() {
        this.setLocationRelativeTo(null);
        txtMaNV.setText(Auth.user.getMaNV());
        txtMaNV.setEnabled(false);
        this.doiMa();

    }
@Override
    public int doiMa() {
        Random rd = new Random();
        int value = rd.nextInt((99999 - 10000) + 1) + 10000;
        lblMaXacNhan.setText(value + "");
        return value;
    }
    NhanVienDAOImpl dao = new NhanVienDAOImpl();
@Override
    public void doiMatKhau() {
        String maXacNhan = new String(txtMaXacNhan.getPassword());
        String matKhauMoi = new String(txtMatKhauMoi.getPassword());
        String matKhauMoi2 = new String(txtMatKhauMoi2.getPassword());

           if (!matKhauMoi.equals(matKhauMoi2)) {
            MsgBox.alert(this, "Xác nhận mật khẩu không đúng!");
        }else if (!maXacNhan.equals(lblMaXacNhan.getText())) {
            MsgBox.alert(this, "Sai mã xác nhận !");
            this.doiMa();
        } else {
            Auth.user.setMatKhau(matKhauMoi);
            dao.update(Auth.user);
            MsgBox.alert(this, "Đổi mật khẩu thành công!");
            this.dispose();
        }
    }

   @Override
    public void huyBo() {
        this.dispose();
    }

   
}
