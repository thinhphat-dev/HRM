/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hrm.ui;

import com.hrm.controlller.DangNhapController;
import com.hrm.dao.impl.NhanVienDAOImpl;
import com.hrm.entity.NhanVien;
import com.hrm.util.Auth;
import com.hrm.util.MsgBox;
import java.awt.Color;

/**
 *
 * @author Asus k550j
 */
public class DangNhapJDialog extends javax.swing.JDialog implements DangNhapController {

    /**
     * Creates new form LoginJDialog
     */
    public DangNhapJDialog(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        init();
        this.setLocationRelativeTo(null);
    }
    
    @Override
    public void openQuenMatKhau() {
        new QuenMatKhauJDialog(null, true).setVisible(true);
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
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txtMaNV = new javax.swing.JTextField();
        txtMatKhau = new javax.swing.JPasswordField();
        jLabel4 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        chkShowPass = new javax.swing.JCheckBox();
        TbtnShowPass = new javax.swing.JToggleButton();
        TbtnQuenMatKhau = new javax.swing.JToggleButton();
        pnlDN = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        pnlKT = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("QLNS - Đăng nhập");
        setAlwaysOnTop(true);
        setBackground(new java.awt.Color(255, 255, 255));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(0, 49, 64));

        jLabel6.setBackground(new java.awt.Color(255, 255, 255));
        jLabel6.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(255, 255, 255), 1, true));

        jLabel7.setBackground(new java.awt.Color(255, 255, 255));
        jLabel7.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(255, 255, 255), 1, true));

        txtMaNV.setBackground(new java.awt.Color(0, 49, 64));
        txtMaNV.setFont(new java.awt.Font("Montserrat", 1, 14)); // NOI18N
        txtMaNV.setForeground(new java.awt.Color(255, 255, 255));
        txtMaNV.setText("nv001");
        txtMaNV.setBorder(null);
        txtMaNV.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtMaNVActionPerformed(evt);
            }
        });

        txtMatKhau.setBackground(new java.awt.Color(0, 49, 64));
        txtMatKhau.setFont(new java.awt.Font("Segoe UI Emoji", 1, 14)); // NOI18N
        txtMatKhau.setForeground(new java.awt.Color(255, 255, 255));
        txtMatKhau.setText("123456");
        txtMatKhau.setBorder(null);

        jLabel4.setBackground(new java.awt.Color(255, 255, 255));
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/login-animate.gif"))); // NOI18N
        jLabel4.setOpaque(true);
        jLabel4.setPreferredSize(new java.awt.Dimension(150, 160));

        jLabel1.setFont(new java.awt.Font("Calibri", 1, 40)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("LOGIN");

        chkShowPass.setForeground(new java.awt.Color(255, 255, 255));
        chkShowPass.setText("Ghi nhớ đăng nhập");
        chkShowPass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                chkShowPassActionPerformed(evt);
            }
        });

        TbtnShowPass.setBackground(new java.awt.Color(0, 49, 64));
        TbtnShowPass.setForeground(new java.awt.Color(255, 255, 255));
        TbtnShowPass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/showPass.png"))); // NOI18N
        TbtnShowPass.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 0), 4, true));
        TbtnShowPass.setBorderPainted(false);
        TbtnShowPass.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TbtnShowPassActionPerformed(evt);
            }
        });

        TbtnQuenMatKhau.setFont(new java.awt.Font("Segoe UI", 3, 14)); // NOI18N
        TbtnQuenMatKhau.setForeground(new java.awt.Color(255, 255, 255));
        TbtnQuenMatKhau.setText("Quên mật khẩu?");
        TbtnQuenMatKhau.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        TbtnQuenMatKhau.setBorderPainted(false);
        TbtnQuenMatKhau.setContentAreaFilled(false);
        TbtnQuenMatKhau.setFocusPainted(false);
        TbtnQuenMatKhau.setFocusable(false);
        TbtnQuenMatKhau.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                TbtnQuenMatKhauActionPerformed(evt);
            }
        });

        pnlDN.setBackground(new java.awt.Color(74, 163, 92));
        pnlDN.setToolTipText("");
        pnlDN.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        pnlDN.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                pnlDNMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pnlDNMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pnlDNMouseExited(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                pnlDNMousePressed(evt);
            }
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                pnlDNMouseReleased(evt);
            }
        });
        pnlDN.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                pnlDNKeyPressed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("Đăng nhập");

        javax.swing.GroupLayout pnlDNLayout = new javax.swing.GroupLayout(pnlDN);
        pnlDN.setLayout(pnlDNLayout);
        pnlDNLayout.setHorizontalGroup(
            pnlDNLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlDNLayout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 108, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(14, Short.MAX_VALUE))
        );
        pnlDNLayout.setVerticalGroup(
            pnlDNLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlDNLayout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pnlKT.setBackground(new java.awt.Color(215, 61, 61));
        pnlKT.setToolTipText("");
        pnlKT.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        pnlKT.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                pnlKTMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                pnlKTMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                pnlKTMouseExited(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                pnlKTMousePressed(evt);
            }
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                pnlKTMouseReleased(evt);
            }
        });
        pnlKT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                pnlKTKeyPressed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Kết Thúc");

        javax.swing.GroupLayout pnlKTLayout = new javax.swing.GroupLayout(pnlKT);
        pnlKT.setLayout(pnlKTLayout);
        pnlKTLayout.setHorizontalGroup(
            pnlKTLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlKTLayout.createSequentialGroup()
                .addContainerGap(28, Short.MAX_VALUE)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 108, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        pnlKTLayout.setVerticalGroup(
            pnlKTLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlKTLayout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 473, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 111, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addGap(166, 166, 166))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(pnlDN, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(pnlKT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addGroup(jPanel1Layout.createSequentialGroup()
                                    .addComponent(chkShowPass, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(TbtnQuenMatKhau))
                                .addComponent(txtMatKhau, javax.swing.GroupLayout.PREFERRED_SIZE, 305, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(txtMaNV, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 304, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(TbtnShowPass)
                        .addGap(32, 32, 32))))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addContainerGap(583, Short.MAX_VALUE)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 305, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(63, Short.MAX_VALUE)))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addContainerGap(581, Short.MAX_VALUE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 309, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(61, 61, 61)))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 360, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(jLabel1)
                .addGap(34, 34, 34)
                .addComponent(txtMaNV, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(TbtnShowPass, javax.swing.GroupLayout.PREFERRED_SIZE, 17, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(16, 16, 16))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(txtMatKhau, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(chkShowPass, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(TbtnQuenMatKhau, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(pnlDN, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(pnlKT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                    .addContainerGap(142, Short.MAX_VALUE)
                    .addComponent(jLabel6)
                    .addContainerGap(216, Short.MAX_VALUE)))
            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel1Layout.createSequentialGroup()
                    .addGap(188, 188, 188)
                    .addComponent(jLabel7)
                    .addContainerGap(170, Short.MAX_VALUE)))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void chkShowPassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_chkShowPassActionPerformed

    }//GEN-LAST:event_chkShowPassActionPerformed

    private void TbtnShowPassActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TbtnShowPassActionPerformed
        this.hienMK();
    }//GEN-LAST:event_TbtnShowPassActionPerformed

    private void TbtnQuenMatKhauActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_TbtnQuenMatKhauActionPerformed
        this.quenMK();
    }//GEN-LAST:event_TbtnQuenMatKhauActionPerformed

    private void txtMaNVActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtMaNVActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtMaNVActionPerformed

    private void pnlDNMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlDNMouseClicked
        this.dangNhap();

    }//GEN-LAST:event_pnlDNMouseClicked

    private void pnlDNMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlDNMouseEntered
        // TODO add your handling code here:
        pnlDN.setBackground(Color.GREEN);
    }//GEN-LAST:event_pnlDNMouseEntered

    private void pnlDNMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlDNMouseExited
        // TODO add your handling code here:
        pnlDN.setBackground(new Color(74, 163, 92));

    }//GEN-LAST:event_pnlDNMouseExited

    private void pnlDNMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlDNMousePressed
        // TODO add your handling code here:

    }//GEN-LAST:event_pnlDNMousePressed

    private void pnlDNMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlDNMouseReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_pnlDNMouseReleased

    private void pnlDNKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pnlDNKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_pnlDNKeyPressed

    private void pnlKTMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlKTMouseClicked

        // TODO add your handling code here:
        System.exit(0);
    }//GEN-LAST:event_pnlKTMouseClicked

    private void pnlKTMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlKTMouseEntered
        // TODO add your handling code here:
                pnlKT.setBackground(Color.RED);

    }//GEN-LAST:event_pnlKTMouseEntered

    private void pnlKTMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlKTMouseExited
        // TODO add your handling code here:
        pnlKT.setBackground(new Color(215,61,61));
    }//GEN-LAST:event_pnlKTMouseExited

    private void pnlKTMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlKTMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_pnlKTMousePressed

    private void pnlKTMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_pnlKTMouseReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_pnlKTMouseReleased

    private void pnlKTKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pnlKTKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_pnlKTKeyPressed

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
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(DangNhapJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                DangNhapJDialog dialog = new DangNhapJDialog(new javax.swing.JFrame(), true);
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
    private javax.swing.JToggleButton TbtnQuenMatKhau;
    private javax.swing.JToggleButton TbtnShowPass;
    private javax.swing.JCheckBox chkShowPass;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel pnlDN;
    private javax.swing.JPanel pnlKT;
    private javax.swing.JTextField txtMaNV;
    private javax.swing.JPasswordField txtMatKhau;
    // End of variables declaration//GEN-END:variables

    void init() {
        setLocationRelativeTo(null);
    }
    
    NhanVienDAOImpl dao = new NhanVienDAOImpl();
    
    @Override
    public void dangNhap() {
        String manv = txtMaNV.getText().trim();
        String matKhau = new String(txtMatKhau.getPassword());
        NhanVien nhanVien = dao.getById(manv);
        if (nhanVien == null) {
            MsgBox.alert(this, "Sai tên đăng nhập!");
        } else if (!matKhau.equals(nhanVien.getMatKhau())) {
            MsgBox.alert(this, "Sai mật khẩu!");
            
        } else {
            Auth.user = nhanVien;
            this.dispose();
        }
    }
    
    @Override
    public void ketThuc() {
        if (MsgBox.confirm(this, "Bạn muốn kết thúc ứng dụng?")) {
            System.exit(0);
        }
    }
    
    @Override
    public void hienMK() {
        if (TbtnShowPass.isSelected()) {
            txtMatKhau.setEchoChar((char) 0);
        } else {
            txtMatKhau.setEchoChar('*');
        }
    }
    
    @Override
    public void quenMK() {
        if (TbtnQuenMatKhau.isSelected()) {
            this.dispose();
            new QuenMatKhauJDialog(null, true).setVisible(true);
        }
    }
}
