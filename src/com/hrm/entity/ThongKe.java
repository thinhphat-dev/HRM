/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hrm.entity;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class ThongKe {

    public static class thongKeNV {

        private Integer maPB;
        private Integer tongNV;
        private Integer slNam;
        private Integer slNu;

        public thongKeNV() {
        }

        public thongKeNV(Integer maPB, Integer tongNV, Integer slNam, Integer slNu) {
            this.maPB = maPB;
            this.tongNV = tongNV;
            this.slNam = slNam;
            this.slNu = slNu;
        }

        public Integer getMaPB() {
            return maPB;
        }

        public void setMaPB(Integer maPB) {
            this.maPB = maPB;
        }

       

       

        public Integer getTongNV() {
            return tongNV;
        }

        public void setTongNV(Integer tongNV) {
            this.tongNV = tongNV;
        }

        public Integer getSlNam() {
            return slNam;
        }

        public void setSlNam(Integer slNam) {
            this.slNam = slNam;
        }

        public Integer getSlNu() {
            return slNu;
        }

        public void setSlNu(Integer slNu) {
            this.slNu = slNu;
        }

       

        

    }

    public static class thongKeLuongThang {

        private Date thoiGian;
        private String tenPB;
        private Double soTien;

        public thongKeLuongThang() {
        }

        public thongKeLuongThang(Date thoiGian, String tenPB, Double soTien) {
            this.thoiGian = thoiGian;
            this.tenPB = tenPB;
            this.soTien = soTien;
        }

        public Date getThoiGian() {
            return thoiGian;
        }

        public void setThoiGian(Date thoiGian) {
            this.thoiGian = thoiGian;
        }

        public String getTenPB() {
            return tenPB;
        }

        public void setTenPB(String tenPB) {
            this.tenPB = tenPB;
        }

        public Double getSoTien() {
            return soTien;
        }

        public void setSoTien(Double soTien) {
            this.soTien = soTien;
        }
        
        

    }

    
}
