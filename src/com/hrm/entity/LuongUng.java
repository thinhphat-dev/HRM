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
public class LuongUng {
    private Integer id;
    private Date thang;
    private String MaNV;
    private Double soTien;

    public LuongUng() {
    }

    public LuongUng(Integer id, Date thang, String MaNV, Double soTien) {
        this.id = id;
        this.thang = thang;
        this.MaNV = MaNV;
        this.soTien = soTien;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getThang() {
        return thang;
    }

    public void setThang(Date thang) {
        this.thang = thang;
    }

    public String getMaNV() {
        return MaNV;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public Double getSoTien() {
        return soTien;
    }

    public void setSoTien(Double soTien) {
        this.soTien = soTien;
    }
    
    
}
