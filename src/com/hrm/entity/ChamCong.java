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
public class ChamCong {

    private Integer MaBCC; // The identity number of the report
    private String MaNV; // The employee code
    private Date Thang; // The month of the report
    private Date NgayLam; // The working date

    public ChamCong() {
    }

    public ChamCong(Integer MaBCC, String MaNV, Date Thang, Date NgayLam) {
        this.MaBCC = MaBCC;
        this.MaNV = MaNV;
        this.Thang = Thang;
        this.NgayLam = NgayLam;
    }

    public Integer getMaBCC() {
        return MaBCC;
    }

    public void setMaBCC(Integer MaBCC) {
        this.MaBCC = MaBCC;
    }

    public String getMaNV() {
        return MaNV;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public Date getThang() {
        return Thang;
    }

    public void setThang(Date Thang) {
        this.Thang = Thang;
    }

    public Date getNgayLam() {
        return NgayLam;
    }

    public void setNgayLam(Date NgayLam) {
        this.NgayLam = NgayLam;
    }

    
}
