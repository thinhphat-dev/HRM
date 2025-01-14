/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hrm.ui;

import com.hrm.controlller.ThuongVaKyLuatController;
import com.hrm.dao.NhanVienDAO;
import com.hrm.dao.impl.NhanVienDAOImpl;
import com.hrm.dao.ThuongVaKyLuatDAO;
import com.hrm.dao.impl.ThuongVaKyLuatDAOImpl;
import com.hrm.entity.NhanVien;
import com.hrm.entity.ThuongVaKyLuat;

import com.hrm.util.MsgBox;
import com.hrm.util.XDate;
import com.hrm.util.XImage;
import java.util.Date;
import java.util.List;
import javax.swing.ImageIcon;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Admin
 */
public class ThuongVaKyLuatJDialog extends javax.swing.JDialog implements ThuongVaKyLuatController {

    /**
     * Creates new form HocVienJDialog
     */
    public ThuongVaKyLuatJDialog(java.awt.Frame parent, boolean modal) {
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

        buttonGroup1 = new javax.swing.ButtonGroup();
        tabs = new javax.swing.JTabbedPane();
        pnlTVKL = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtTGform = new com.toedter.calendar.JDateChooser();
        jLabel2 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        lblHinh = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        txtSoTien = new javax.swing.JTextField();
        cboLoaiForm = new javax.swing.JComboBox<>();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txtPhongBan = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        txtChucVu = new javax.swing.JTextField();
        btnFirst = new javax.swing.JButton();
        btnPrev = new javax.swing.JButton();
        btnNext = new javax.swing.JButton();
        btnLast = new javax.swing.JButton();
        btnMoi = new javax.swing.JButton();
        btnSua = new javax.swing.JButton();
        btnThem = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtLydo = new javax.swing.JTextArea();
        txtMaNV = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        lblHoTen = new javax.swing.JLabel();
        pnlNguoiHoc = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        btnXoa = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        tblTVKL = new javax.swing.JTable();
        jPanel6 = new javax.swing.JPanel();
        txtTimKiem = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        cboLoai = new javax.swing.JComboBox<>();
        jPanel5 = new javax.swing.JPanel();
        txtThoiGian = new com.toedter.calendar.JDateChooser();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("QLNS - Thưởng và Kỷ luật");
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        pnlTVKL.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel4.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.RIGHT));
        pnlTVKL.add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 419, 790, -1));

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 13)); // NOI18N
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Calendar.png"))); // NOI18N
        jLabel1.setText("Tháng");
        pnlTVKL.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 20, -1, -1));

        txtTGform.setDateFormatString("M/y");
        pnlTVKL.add(txtTGform, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 20, 220, 30));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 13)); // NOI18N
        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/User.png"))); // NOI18N
        jLabel2.setText("Họ và tên");
        pnlTVKL.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(620, 210, 100, -1));

        jLabel16.setFont(new java.awt.Font("Segoe UI", 1, 13)); // NOI18N
        jLabel16.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Clien list.png"))); // NOI18N
        jLabel16.setText("Mã nhân viên");
        pnlTVKL.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, -1, -1));

        lblHinh.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(51, 102, 255)));
        pnlTVKL.add(lblHinh, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 30, 170, 170));

        jLabel15.setFont(new java.awt.Font("Segoe UI", 1, 13)); // NOI18N
        jLabel15.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Add.png"))); // NOI18N
        jLabel15.setText("Số tiền");
        pnlTVKL.add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 220, -1, -1));

        txtSoTien.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        txtSoTien.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        txtSoTien.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtSoTienActionPerformed(evt);
            }
        });
        pnlTVKL.add(txtSoTien, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 210, 180, 40));

        cboLoaiForm.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Khen thưởng", "Kỷ luật" }));
        cboLoaiForm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cboLoaiFormActionPerformed(evt);
            }
        });
        pnlTVKL.add(cboLoaiForm, new org.netbeans.lib.awtextra.AbsoluteConstraints(122, 210, 110, 30));

        jLabel7.setFont(new java.awt.Font("Segoe UI", 1, 13)); // NOI18N
        jLabel7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Company.png"))); // NOI18N
        jLabel7.setText("Loại");
        pnlTVKL.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 210, -1, -1));

        jLabel8.setFont(new java.awt.Font("Segoe UI", 1, 13)); // NOI18N
        jLabel8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Company.png"))); // NOI18N
        jLabel8.setText("Phòng ban");
        pnlTVKL.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 150, -1, -1));

        txtPhongBan.setEditable(false);
        txtPhongBan.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        pnlTVKL.add(txtPhongBan, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 150, 110, 40));

        jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 13)); // NOI18N
        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Conference.png"))); // NOI18N
        jLabel4.setText("Chức vụ");
        pnlTVKL.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 150, -1, -1));

        txtChucVu.setEditable(false);
        txtChucVu.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        txtChucVu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtChucVuActionPerformed(evt);
            }
        });
        pnlTVKL.add(txtChucVu, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 150, 180, 40));

        btnFirst.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/first.png"))); // NOI18N
        btnFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFirstActionPerformed(evt);
            }
        });
        pnlTVKL.add(btnFirst, new org.netbeans.lib.awtextra.AbsoluteConstraints(540, 370, -1, -1));

        btnPrev.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/prevous.png"))); // NOI18N
        btnPrev.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrevActionPerformed(evt);
            }
        });
        pnlTVKL.add(btnPrev, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 370, -1, -1));

        btnNext.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Next.png"))); // NOI18N
        btnNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNextActionPerformed(evt);
            }
        });
        pnlTVKL.add(btnNext, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 370, -1, -1));

        btnLast.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/last.png"))); // NOI18N
        btnLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLastActionPerformed(evt);
            }
        });
        pnlTVKL.add(btnLast, new org.netbeans.lib.awtextra.AbsoluteConstraints(720, 370, -1, -1));

        btnMoi.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Refresh.png"))); // NOI18N
        btnMoi.setText("Mới");
        btnMoi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnMoiActionPerformed(evt);
            }
        });
        pnlTVKL.add(btnMoi, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 370, -1, -1));

        btnSua.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Edit.png"))); // NOI18N
        btnSua.setText("Sửa");
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });
        pnlTVKL.add(btnSua, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 370, -1, -1));

        btnThem.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Add.png"))); // NOI18N
        btnThem.setText("Thêm");
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });
        pnlTVKL.add(btnThem, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 370, -1, -1));

        txtLydo.setColumns(20);
        txtLydo.setRows(5);
        jScrollPane1.setViewportView(txtLydo);

        pnlTVKL.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 286, 520, 70));

        txtMaNV.setBorder(javax.swing.BorderFactory.createTitledBorder(""));
        txtMaNV.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtMaNVKeyReleased(evt);
            }
        });
        pnlTVKL.add(txtMaNV, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 90, 520, 30));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 3, 13)); // NOI18N
        jLabel3.setText("Nội dung");
        pnlTVKL.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 260, 70, 20));

        lblHoTen.setFont(new java.awt.Font("SansSerif", 1, 16)); // NOI18N
        lblHoTen.setForeground(new java.awt.Color(51, 153, 255));
        pnlTVKL.add(lblHoTen, new org.netbeans.lib.awtextra.AbsoluteConstraints(620, 240, 130, 40));

        tabs.addTab("CHI TIẾT", pnlTVKL);

        pnlNguoiHoc.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.RIGHT));

        jButton1.setText("Sắp xếp theo mã");
        jPanel3.add(jButton1);

        jButton2.setText("Sắp xếp theo tên");
        jPanel3.add(jButton2);

        jButton3.setText("Sắp xếp theo phòng ban");
        jPanel3.add(jButton3);

        btnXoa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/hrm/icon/Delete.png"))); // NOI18N
        btnXoa.setText("Xóa");
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });
        jPanel3.add(btnXoa);

        pnlNguoiHoc.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 383, 789, 40));

        tblTVKL.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "CHỌN", "ID", "MÃ NV", "HỌ VÀ TÊN", "PHÒNG BAN", "CHỨC VỤ", "LÝ DO", "SỐ TIỀN"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Boolean.class, java.lang.Integer.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class
            };
            boolean[] canEdit = new boolean [] {
                true, false, false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblTVKL.setRowHeight(22);
        tblTVKL.setSelectionMode(javax.swing.ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
        tblTVKL.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblTVKLMouseClicked(evt);
            }
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                tblTVKLMouseReleased(evt);
            }
        });
        jScrollPane3.setViewportView(tblTVKL);

        pnlNguoiHoc.add(jScrollPane3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 190, 789, 190));

        jPanel6.setBorder(javax.swing.BorderFactory.createTitledBorder("Tìm kiếm"));
        jPanel6.setLayout(new java.awt.GridLayout(1, 0));

        txtTimKiem.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtTimKiemKeyReleased(evt);
            }
        });
        jPanel6.add(txtTimKiem);

        pnlNguoiHoc.add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 100, 790, 80));

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("LOẠI"));
        jPanel2.setLayout(new java.awt.GridLayout(1, 0));

        cboLoai.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Tất cả", "Khen thưởng", "Kỷ luật" }));
        cboLoai.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cboLoaiActionPerformed(evt);
            }
        });
        jPanel2.add(cboLoai);

        pnlNguoiHoc.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 10, 400, 80));

        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder("THỜI GIAN"));
        jPanel5.setLayout(new java.awt.GridLayout(1, 0));

        txtThoiGian.setDateFormatString("M/y");
        txtThoiGian.addPropertyChangeListener(new java.beans.PropertyChangeListener() {
            public void propertyChange(java.beans.PropertyChangeEvent evt) {
                txtThoiGianPropertyChange(evt);
            }
        });
        jPanel5.add(txtThoiGian);

        pnlNguoiHoc.add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 10, 394, 80));

        tabs.addTab("DANH SÁCH", pnlNguoiHoc);

        getContentPane().add(tabs, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 6, -1, 460));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cboLoaiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cboLoaiActionPerformed
        // TODO add your handling code here:
        this.getData(listNV, listTVKLbyMonth, cboLoai.getSelectedIndex());
    }//GEN-LAST:event_cboLoaiActionPerformed

    private void txtTimKiemKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtTimKiemKeyReleased
//        try {
//            if (txtTimKiem.getText().equals("")) {
//                this.fillTable();
//                return;
//            }
//            if (txtTimKiem.getText().trim().substring(0, 2).equalsIgnoreCase("ps")) {
//                this.fillTableByKeyWord(0);
//            } else if (txtTimKiem.getText().trim().substring(0, 1).equalsIgnoreCase("0")) {
//                this.fillTableByKeyWord(1);
//            } else {
//                this.fillTable();
//
//            }
//        } catch (Exception e) {
//        }
    }//GEN-LAST:event_txtTimKiemKeyReleased

    private void txtThoiGianPropertyChange(java.beans.PropertyChangeEvent evt) {//GEN-FIRST:event_txtThoiGianPropertyChange
        if (evt.getPropertyName().equals("date")) {
            Date date = txtThoiGian.getDate();
            fillTable(date.getMonth() + 1, date.getYear() + 1900);

        }

    }//GEN-LAST:event_txtThoiGianPropertyChange

    private void txtSoTienActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtSoTienActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtSoTienActionPerformed

    private void cboLoaiFormActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cboLoaiFormActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cboLoaiFormActionPerformed

    private void txtChucVuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtChucVuActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtChucVuActionPerformed

    private void btnFirstActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFirstActionPerformed
        // TODO add your handling code here:
        this.moveFirst();
    }//GEN-LAST:event_btnFirstActionPerformed

    private void btnPrevActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPrevActionPerformed
        // TODO add your handling code here:
        this.movePrev();
    }//GEN-LAST:event_btnPrevActionPerformed

    private void btnNextActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNextActionPerformed
        // TODO add your handling code here:
        this.moveNext();
    }//GEN-LAST:event_btnNextActionPerformed

    private void btnLastActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLastActionPerformed
        // TODO add your handling code here:
        this.moveLast();
    }//GEN-LAST:event_btnLastActionPerformed

    private void btnMoiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnMoiActionPerformed
        // TODO add your handling code here:
        this.resetForm();
    }//GEN-LAST:event_btnMoiActionPerformed

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuaActionPerformed
        // TODO add your handling code here:
        this.update();
    }//GEN-LAST:event_btnSuaActionPerformed

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        // TODO add your handling code here:
        this.create();
    }//GEN-LAST:event_btnThemActionPerformed

    private void txtMaNVKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtMaNVKeyReleased
        try {
            this.timKiem();
        } catch (Exception e) {
        }
    }//GEN-LAST:event_txtMaNVKeyReleased

    private void tblTVKLMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblTVKLMouseClicked
        if (evt.getClickCount() == 2) {
            this.row = tblTVKL.getSelectedRow();
            this.edit();

        }
    }//GEN-LAST:event_tblTVKLMouseClicked

    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        this.delete();
    }//GEN-LAST:event_btnXoaActionPerformed
    int checkxoa = 0;
    private void tblTVKLMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblTVKLMouseReleased
        // TODO add your handling code here:
        for (int i = 0; i < tblTVKL.getRowCount(); i++) {

            if (tblTVKL.getValueAt(i, 0).equals(true)) {
                checkxoa++;
            }
        }
        updateStatus();
        checkxoa = 0;
    }//GEN-LAST:event_tblTVKLMouseReleased

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
            java.util.logging.Logger.getLogger(ThuongVaKyLuatJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ThuongVaKyLuatJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ThuongVaKyLuatJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ThuongVaKyLuatJDialog.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                ThuongVaKyLuatJDialog dialog = new ThuongVaKyLuatJDialog(new javax.swing.JFrame(), true);
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
    private javax.swing.JButton btnFirst;
    private javax.swing.JButton btnLast;
    private javax.swing.JButton btnMoi;
    private javax.swing.JButton btnNext;
    private javax.swing.JButton btnPrev;
    private javax.swing.JButton btnSua;
    private javax.swing.JButton btnThem;
    private javax.swing.JButton btnXoa;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JComboBox<String> cboLoai;
    private javax.swing.JComboBox<String> cboLoaiForm;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JLabel lblHinh;
    private javax.swing.JLabel lblHoTen;
    private javax.swing.JPanel pnlNguoiHoc;
    private javax.swing.JPanel pnlTVKL;
    private javax.swing.JTabbedPane tabs;
    private javax.swing.JTable tblTVKL;
    private javax.swing.JTextField txtChucVu;
    private javax.swing.JTextArea txtLydo;
    private javax.swing.JTextField txtMaNV;
    private javax.swing.JTextField txtPhongBan;
    private javax.swing.JTextField txtSoTien;
    private com.toedter.calendar.JDateChooser txtTGform;
    private com.toedter.calendar.JDateChooser txtThoiGian;
    private javax.swing.JTextField txtTimKiem;
    // End of variables declaration//GEN-END:variables

    int row = -1;
    NhanVienDAO nvdao = new NhanVienDAOImpl();
    List<NhanVien> listNV;

    ThuongVaKyLuatDAO tvkldao = new ThuongVaKyLuatDAOImpl();
    List<ThuongVaKyLuat> listTVKL;

    List<ThuongVaKyLuat> listTVKLbyMonth;

    @Override
    public void initialize() {
        this.setLocationRelativeTo(null);
        this.fillTable(null, null);
        updateStatus();
    }

    @Override
    public void edit() {
        String manv = (String) tblTVKL.getValueAt(this.row, 2);
        NhanVien nv = nvdao.getById(manv);
        ThuongVaKyLuat tvkl = this.getEntityFromSelectedRow();
        this.setForm(nv, tvkl);
        tabs.setSelectedIndex(0);
        updateStatus();

    }

    @Override
    public void setForm(NhanVien nv, ThuongVaKyLuat tvkl) {
        txtMaNV.setText(nv.getMaNV());
        lblHoTen.setText(nv.getHoTen());
        txtPhongBan.setText(nv.getMaPB() == null ? "" : nv.getMaPB() == 1 ? "Phòng kế toán" : "Phòng bán hàng");
        txtChucVu.setText(nv.getMaPB() == null ? "" : nv.getMaPB() == 1 ? "Trưởng phòng" : "Nhân viên");
        cboLoaiForm.setSelectedIndex(tvkl.getLoai() == true ? 0 : 1);
        txtSoTien.setText(tvkl.getSoTien() + "");
        txtLydo.setText(tvkl.getLyDo());
        txtTGform.setDate(tvkl.getThang());
        chonAnh(nv);
        updateStatus();
    }

    @Override
    public void fillTable(Integer month, Integer year) {

        listNV = nvdao.getAll();
        listTVKL = tvkldao.getAll();

        listTVKLbyMonth = tvkldao.getBySql("select * from ThuongVaKyLuat where MONTH(thang)=? and year(thang)=?", month, year);

        if (month == null || year == null) {
            getData(listNV, listTVKL, cboLoai.getSelectedIndex());
        } else {
            getData(listNV, listTVKLbyMonth, cboLoai.getSelectedIndex());

        }
        updateStatus();

    }

    @Override
    public void getData(List<NhanVien> ListNV, List<ThuongVaKyLuat> ListTvkl, Integer Loai) {
        DefaultTableModel model = (DefaultTableModel) tblTVKL.getModel();
        model.setRowCount(0);
        for (ThuongVaKyLuat tvkl : ListTvkl) {
            for (NhanVien nhanVien : ListNV) {
                if (tvkl.getMaNV().equalsIgnoreCase(nhanVien.getMaNV())) {

                    Object[] row = {
                        false,
                        tvkl.getMaTVKL(),
                        nhanVien.getMaNV(),
                        nhanVien.getHoTen(),
                        nhanVien.getMaPB() == 1 ? "Phòng kế toán" : "Phòng bán hàng",
                        nhanVien.getMaCV() == 1 ? "Trưởng phòng" : "Nhân viên",
                        tvkl.getLyDo(),
                        tvkl.getSoTien()
                    };
                    if (Loai == 0) {
                        model.addRow(row);

                    } else if (Loai == 1) {
                        if (tvkl.getLoai()) {
                            model.addRow(row);
                        }
                    } else {
                        if (!tvkl.getLoai()) {
                            model.addRow(row);
                        }
                    }

                }

            }

        }
    }

    @Override
    public void delete() {
        Integer month;
        Integer year;
        try {
            try {
                month = txtThoiGian.getDate().getMonth() + 1;
                year = txtThoiGian.getDate().getYear() + 1900;
            } catch (Exception e) {
                month = null;
                year = null;
            }

            for (int i = 0; i < tblTVKL.getRowCount(); i++) {
                Integer maTVKL = (Integer) tblTVKL.getValueAt(i, 1);
                if (tblTVKL.getValueAt(i, 0).equals(true)) {
                    tvkldao.deleteById(maTVKL);
                }
            }
            this.fillTable(month, year);

            this.resetForm();

            MsgBox.alert(this, "Cập nhật thành công!");

        } catch (Exception e) {
            e.printStackTrace();
        }
        updateStatus();
    }

    @Override
    public void resetForm() {
        ThuongVaKyLuat tvkl = new ThuongVaKyLuat(0, "", false, 0.0, new Date(), "");
        NhanVien entity = new NhanVien("", "", "", "", new Date(),
                true, "", "", "", null, null, 0.0, "","");
        setForm(entity, tvkl);
        row =-1;
        updateStatus();
    }

    @Override
    public void timKiem() {
        try {
            String timKiem = txtMaNV.getText();
            NhanVien nv = nvdao.getById(timKiem);
            lblHoTen.setText(nv.getHoTen());
            txtChucVu.setText(nv.getMaCV() == 1 ? "Trưởng phòng" : "Nhân viên");
            txtPhongBan.setText(nv.getMaPB() == 1 ? "Phòng kế toán" : "Phòng bán hàng");
            chonAnh(nv);
        } catch (Exception e) {
        }
        updateStatus();
    }

    @Override
    public void chonAnh(NhanVien nv) {

        ImageIcon icon = XImage.read(nv.getHinh(), lblHinh); // đọc hình từ logos
        lblHinh.setIcon(icon);
    }

    @Override
    public ThuongVaKyLuat getForm() {
        ThuongVaKyLuat entity = new ThuongVaKyLuat();
        entity.setMaNV(txtMaNV.getText());
        entity.setThang(XDate.toDate(String.valueOf(txtTGform.getDate().getYear() + 1900)
                + "-" + String.valueOf(txtTGform.getDate().getMonth() + 1) + "-" + "01", "yyyy-MM-dd"));
        if (cboLoai.getSelectedIndex() == 0) {
            entity.setLoai(true);
        } else {
            entity.setLoai(false);
        }
        entity.setSoTien(Double.valueOf(txtSoTien.getText()));
        entity.setLyDo(txtLydo.getText());
        return entity;
    }

    @Override
    public void create() {
        int month = txtTGform.getDate().getMonth() + 1;
        int year = txtTGform.getDate().getYear() + 1900;
        ThuongVaKyLuat entity = getForm();
        tvkldao.create(entity);
        this.fillTable(month, year);
        txtThoiGian.setDate(XDate.toDate(month + "" + "/" + year + "", "M/y"));
        this.resetForm();
        updateStatus();
    }

    @Override
    public ThuongVaKyLuat getEntityFromSelectedRow() {
        int rowIndex = tblTVKL.getSelectedRow();
        int colIndex = 1;
        Integer id = (Integer) tblTVKL.getValueAt(rowIndex, colIndex);
        ThuongVaKyLuat entity = tvkldao.getById(id);
        return entity;
    }

    @Override
    public void update() {
        int month = txtTGform.getDate().getMonth() + 1;
        int year = txtTGform.getDate().getYear() + 1900;
        ThuongVaKyLuat entity = getForm();
        ThuongVaKyLuat e = this.getEntityFromSelectedRow();
        entity.setMaTVKL(e.getMaTVKL());
        tvkldao.update(entity);
        this.fillTable(month, year);
        txtThoiGian.setDate(XDate.toDate(month + "" + "/" + year + "", "M/y"));
        updateStatus();
    }

    @Override
    public void moveFirst() {
        row = 0;
        this.setSelectedRow(row);
        this.edit();
        updateStatus();
    }

    @Override
    public void setSelectedRow(int rowIndex) {
        tblTVKL.clearSelection();
        tblTVKL.setRowSelectionInterval(rowIndex, rowIndex);
        updateStatus();
    }

    @Override
    public void movePrev() {

        if (tblTVKL.getSelectedRow() == 0) {
            row = tblTVKL.getRowCount() - 1;
        } else {
            row = tblTVKL.getSelectedRow() - 1;
        }

        this.setSelectedRow(row);
        this.edit();
        updateStatus();
    }

    @Override
    public void moveNext() {

        if (tblTVKL.getSelectedRow() == tblTVKL.getRowCount() - 1) {
            row = 0;
        } else {
            row = tblTVKL.getSelectedRow() + 1;
        }

        this.setSelectedRow(row);
        this.edit();
        updateStatus();
    }

    @Override
    public void moveLast() {
        row = tblTVKL.getRowCount() - 1;
        this.setSelectedRow(row);
        this.edit();
        updateStatus();
    }

    @Override
    public void updateStatus() {
        boolean xoa = checkxoa == 0;
        boolean edit = (this.row >= 0); //flase
        boolean first = (this.row == 0);//false
        boolean last = (this.row == tblTVKL.getRowCount() - 1);//flase
        // Trạng thái form
        txtMaNV.setEditable(!edit);
        btnThem.setEnabled(!edit);
        btnSua.setEnabled(edit);
        btnXoa.setEnabled(!xoa);
        btnMoi.setEnabled(edit);

        // Trạng thái điều hướng
        btnFirst.setEnabled(edit && !first);
        btnPrev.setEnabled(edit);
        btnNext.setEnabled(edit);
        btnLast.setEnabled(edit && !last);
    }

    @Override
    public boolean isValidated() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
