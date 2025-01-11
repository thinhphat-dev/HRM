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
public class ThuongVaKyLuat {

    private Integer MaTVKL; // The identity number of the reward or discipline
    private String MaNV; // The employee code
    private Boolean Loai; // The type of the reward or discipline (true for reward, false for discipline)
    private Double SoTien; // The amount of money involved
    private Date thang;
    private String LyDo;

    public ThuongVaKyLuat() {
    }

    public ThuongVaKyLuat(Integer MaTVKL, String MaNV, Boolean Loai, Double SoTien, Date thang, String LyDo) {
        this.MaTVKL = MaTVKL;
        this.MaNV = MaNV;
        this.Loai = Loai;
        this.SoTien = SoTien;
        this.thang = thang;
        this.LyDo = LyDo;
    }

    public Integer getMaTVKL() {
        return MaTVKL;
    }

    public void setMaTVKL(Integer MaTVKL) {
        this.MaTVKL = MaTVKL;
    }

    public String getMaNV() {
        return MaNV;
    }

    public void setMaNV(String MaNV) {
        this.MaNV = MaNV;
    }

    public Boolean getLoai() {
        return Loai;
    }

    public void setLoai(Boolean Loai) {
        this.Loai = Loai;
    }

    public Double getSoTien() {
        return SoTien;
    }

    public void setSoTien(Double SoTien) {
        this.SoTien = SoTien;
    }

    public Date getThang() {
        return thang;
    }

    public void setThang(Date thang) {
        this.thang = thang;
    }

    public String getLyDo() {
        return LyDo;
    }

    public void setLyDo(String LyDo) {
        this.LyDo = LyDo;
    }

    
    
    
}
