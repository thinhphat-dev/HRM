/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hrm.entity;


/**
 *
 * @author ADMIN
 */
public class PhongBan {
    private Integer maPB;
    private String tenPB;

    public PhongBan() {
    }

    public PhongBan(Integer maPB, String tenPB) {
        this.maPB = maPB;
        this.tenPB = tenPB;
    }

    public Integer getMaPB() {
        return maPB;
    }

    public void setMaPB(Integer maPB) {
        this.maPB = maPB;
    }

    public String getTenPB() {
        return tenPB;
    }

    public void setTenPB(String tenPB) {
        this.tenPB = tenPB;
    }
    
    
}
