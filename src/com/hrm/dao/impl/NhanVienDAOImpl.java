package com.hrm.dao.impl;

import com.hrm.dao.NhanVienDAO;
import com.hrm.entity.NhanVien;
import com.hrm.util.Jdbc;
import com.hrm.util.MsgBox;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NhanVienDAOImpl implements NhanVienDAO {

    String selectByIdSql = "SELECT * FROM NhanVien WHERE MaNV=?";
    String selectAllSql = "SELECT * FROM NhanVien";
    String insertSql = "INSERT INTO NhanVien(MaNV, HoTen, DiaChi, SDT, NgaySinh, GioiTinh, CCCD, QueQuan, Hinh, MaPB, MaCV, Luong, MatKhau, Email) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
    String updateSql = "UPDATE NhanVien SET HoTen=?, DiaChi=?, SDT=?, NgaySinh=?, GioiTinh=?, CCCD=?, QueQuan=?, Hinh=?, MaPB=?, MaCV=?, Luong=?, MatKhau=?, Email=? WHERE MaNV=?";
    String deleteSql = "DELETE FROM NhanVien WHERE MaNV=?";
    String selectLastIdSql = "SELECT max(MaNV) FROM NhanVien";
    String deleteAllSql = "DELETE FROM NhanVien";
    String searchByMaNV = "SELECT * FROM NhanVien WHERE MaNV LIKE CONCAT('%',?,'%') or HoTen LIKE CONCAT('%',?,'%')"
            + "or SDT LIKE CONCAT('%',?,'%')";
    String searchByHoTen = "SELECT * FROM NhanVien WHERE HoTen LIKE CONCAT('%',?,'%')";
    String deleteProcCall = "{call xoaNV (?)}";
    String selectByEmail = "Select * from NhanVien WHERE EMAIL=?";

    @Override
    public void deleteAll() {
        Jdbc.executeUpdate(deleteAllSql);

    }

    @Override
    public List<NhanVien> searchByMaNV(String keyword) {
        Object[] vals = {keyword, keyword, keyword};
        List<NhanVien> list = this.getBySql(searchByMaNV, vals);
        return list;
    }

    @Override
    public NhanVien getById(String id) {
        List<NhanVien> list = this.getBySql(selectByIdSql, id);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<NhanVien> getAll() {
        List<NhanVien> list = this.getBySql(selectAllSql);
        return list;
    }

    @Override
    public String create(NhanVien entity) {
        try {
            Object[] vals = {entity.getMaNV(), entity.getHoTen(), entity.getDiaChi(), entity.getSDT(), entity.getNgaySinh(), entity.getGioiTinh(), entity.getCCCD(), entity.getQueQuan(), entity.getHinh(), entity.getMaPB(), entity.getMaCV(), entity.getLuong(), entity.getMatKhau(), entity.getEmail()};
            Jdbc.executeUpdate(insertSql, vals);
            return Jdbc.executeScalar(selectLastIdSql);
        } catch (Exception e) {
            MsgBox.alert(null, "Mã nhân viên đã tồn tại !");

        }
        return null;
    }

    @Override
    public void update(NhanVien entity) {
        try {
            Object[] vals = {entity.getHoTen(), entity.getDiaChi(), entity.getSDT(), entity.getNgaySinh(), entity.getGioiTinh(), entity.getCCCD(), entity.getQueQuan(), entity.getHinh(), entity.getMaPB(), entity.getMaCV(), entity.getLuong(), entity.getMatKhau(), entity.getEmail(), entity.getMaNV()};
            Jdbc.executeUpdate(updateSql, vals);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteById(String id) {
        try {
            Jdbc.executeUpdate(deleteSql, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<NhanVien> getBySql(String sql, Object... vals) {
        List<NhanVien> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql, vals);
            while (rs.next()) {
                NhanVien entity = new NhanVien();
                entity.setMaNV(rs.getString("MaNV"));
                entity.setHoTen(rs.getString("HoTen"));
                entity.setDiaChi(rs.getString("DiaChi"));
                entity.setSDT(rs.getString("SDT"));
                entity.setNgaySinh(rs.getDate("NgaySinh"));
                entity.setGioiTinh(rs.getBoolean("GioiTinh"));
                entity.setCCCD(rs.getString("CCCD"));
                entity.setQueQuan(rs.getString("QueQuan"));
                entity.setHinh(rs.getString("Hinh"));
                entity.setMaPB(rs.getInt("MaPB"));
                entity.setMaCV(rs.getInt("MaCV"));
                entity.setLuong(rs.getDouble("Luong"));
                entity.setMatKhau(rs.getString("MatKhau"));
                entity.setEmail(rs.getString("Email"));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

 

    @Override
    public void deleteNVByProc(String id) {
        try {
            Jdbc.callProcDelete(deleteProcCall, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<NhanVien> searchByEmail(String email) {
        List<NhanVien> list = this.getBySql(selectByEmail, email);
        return  list;

    }

}
