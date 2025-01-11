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
public class Luong {

    private Integer MaLuong; // The identity number of the salary
    private String MaNV; // The employee code
    private Date Thang; // The month of the salary
    private Integer PCCOM; // The computer allowance
    private Integer PCXang; // The gasoline allowance
    private Integer PCKhac; // The other allowance
    private Integer BHYT; // The health insurance
    private Integer BHXH; // The social insurance

    public Luong() {
    }

    public Luong(Integer MaLuong, String MaNV, Date Thang, Integer PCCOM, Integer PCXang, Integer PCKhac, Integer BHYT, Integer BHXH) {
        this.MaLuong = MaLuong;
        this.MaNV = MaNV;
        this.Thang = Thang;
        this.PCCOM = PCCOM;
        this.PCXang = PCXang;
        this.PCKhac = PCKhac;
        this.BHYT = BHYT;
        this.BHXH = BHXH;
    }

    public Integer getMaLuong() {
        return MaLuong;
    }

    public void setMaLuong(Integer MaLuong) {
        this.MaLuong = MaLuong;
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

    public Integer getPCCOM() {
        return PCCOM;
    }

    public void setPCCOM(Integer PCCOM) {
        this.PCCOM = PCCOM;
    }

    public Integer getPCXang() {
        return PCXang;
    }

    public void setPCXang(Integer PCXang) {
        this.PCXang = PCXang;
    }

    public Integer getPCKhac() {
        return PCKhac;
    }

    public void setPCKhac(Integer PCKhac) {
        this.PCKhac = PCKhac;
    }

    public Integer getBHYT() {
        return BHYT;
    }

    public void setBHYT(Integer BHYT) {
        this.BHYT = BHYT;
    }

    public Integer getBHXH() {
        return BHXH;
    }

    public void setBHXH(Integer BHXH) {
        this.BHXH = BHXH;
    }

 
    
    
}
