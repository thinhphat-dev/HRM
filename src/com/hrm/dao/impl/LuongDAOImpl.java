/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hrm.dao.impl;

import com.hrm.dao.LuongDAO;
import com.hrm.entity.Luong;
import com.hrm.util.Jdbc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class LuongDAOImpl implements LuongDAO {

    String selectByIdSql = "SELECT * FROM Luong WHERE MaLuong=?";
    String selectAllSql = "SELECT * FROM Luong";
    String insertSql = "INSERT INTO Luong( MaNV, Thang, PCCOM, PCXANG, PCKHAC, BHYT, BHXH) VALUES( ?, ?, ?, ?, ?, ?, ?)";
    String updateSql = "UPDATE Luong SET PCCOM=?, PCXANG=?, PCKHAC=?, BHYT=?, BHXH=? WHERE MaNV=? and Thang=?";
    String deleteSql = "DELETE FROM Luong WHERE MaLuong=?";
    String selectLastIdSql = "SELECT max(MaLuong) FROM Luong";
    String selectbykeyword = "SELECT * from Luong where MaNV=? and Month(thang)=? and Year(thang)=?";
    
    String searchByMaNV = 
            "SELECT lg.* FROM Luong lg join NhanVien nv \n" +
"on lg.MaNV = nv.MaNV\n" +
"WHERE MONTH(thang)=? and year(thang)=? and \n" +
"(lg.MaNV LIKE CONCAT('%',?,'%') or nv.HoTen LIKE CONCAT('%',?,'%'))";

    @Override
    public Luong getById(Integer id) {
        List<Luong> list = this.getBySql(selectByIdSql, id);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;

    }

    @Override
    public Integer create(Luong entity) {
        try {
            Object[] vals = {entity.getMaNV(), entity.getThang(), entity.getPCCOM(), entity.getPCXang(), entity.getPCKhac(), entity.getBHYT(), entity.getBHXH()};
            Jdbc.executeUpdate(insertSql, vals);
            return Jdbc.executeScalar(selectLastIdSql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(Luong entity) {
        try {
            Object[] vals = {entity.getPCCOM(), entity.getPCXang(), entity.getPCKhac(), entity.getBHYT(), entity.getBHXH(), entity.getMaNV(), entity.getThang()};
            Jdbc.executeUpdate(updateSql, vals);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteById(Integer id) {
        try {
            Jdbc.executeUpdate(deleteSql, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Luong> getAll() {
        List<Luong> list = this.getBySql(selectAllSql);
        return list;
    }

    @Override
    public List<Luong> getBySql(String sql, Object... vals) {
        List<Luong> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql, vals);
            while (rs.next()) {
                Luong entity = new Luong();
                entity.setMaLuong(rs.getInt("MaLuong"));
                entity.setMaNV(rs.getString("MaNV"));
                entity.setThang(rs.getDate("Thang"));
                entity.setPCCOM(rs.getInt("PCCOM"));
                entity.setPCXang(rs.getInt("PCXANG"));
                entity.setPCKhac(rs.getInt("PCKHAC"));
                entity.setBHYT(rs.getInt("BHYT"));
                entity.setBHXH(rs.getInt("BHXH"));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Luong getByMaNV(Object... vals) {
        List<Luong> list = this.getBySql(selectbykeyword, vals);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;

    }

    @Override
    public void deleteByKeyword(String sql, Object... vals) {
        try {
            Jdbc.executeUpdate(sql, vals);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Luong> searchByKeyword(Object... vals) {
        List<Luong> list = this.getBySql(searchByMaNV, vals);
        return list;
    }

}
