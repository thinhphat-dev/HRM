package com.hrm.entity;


import java.util.Date;

public class NhanVien {

    private String maNV;
    private String hoTen;
    private String diaChi;
    private String SDT;
    private Date ngaySinh;
    private Boolean gioiTinh;
    private String CCCD;
    private String queQuan;
    private String Hinh;
    private Integer maPB;
    private Integer maCV;
    private Double luong;
    private String matKhau;
    private String Email;
    
    public NhanVien() {
    }

    public NhanVien(String maNV, String hoTen, String diaChi, String SDT, Date ngaySinh, Boolean gioiTinh, String CCCD, String queQuan, String Hinh, Integer maPB, Integer maCV, Double luong, String matKhau, String Email) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
        this.SDT = SDT;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.CCCD = CCCD;
        this.queQuan = queQuan;
        this.Hinh = Hinh;
        this.maPB = maPB;
        this.maCV = maCV;
        this.luong = luong;
        this.matKhau = matKhau;
        this.Email = Email;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public Boolean getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(Boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getCCCD() {
        return CCCD;
    }

    public void setCCCD(String CCCD) {
        this.CCCD = CCCD;
    }

    public String getQueQuan() {
        return queQuan;
    }

    public void setQueQuan(String queQuan) {
        this.queQuan = queQuan;
    }

    public String getHinh() {
        return Hinh;
    }

    public void setHinh(String Hinh) {
        this.Hinh = Hinh;
    }

    public Integer getMaPB() {
        return maPB;
    }

    public void setMaPB(Integer maPB) {
        this.maPB = maPB;
    }

    public Integer getMaCV() {
        return maCV;
    }

    public void setMaCV(Integer maCV) {
        this.maCV = maCV;
    }

    public Double getLuong() {
        return luong;
    }

    public void setLuong(Double luong) {
        this.luong = luong;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    

}
