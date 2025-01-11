package com.hrm.dao.impl;

import com.hrm.dao.ChamCongDAO;
import com.hrm.entity.ChamCong;
import com.hrm.util.Jdbc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ChamCongDAOImpl implements ChamCongDAO {

    String selectByIdSql = "SELECT * FROM BangChamCong WHERE MaBCC=?";
    String selectAllSql = "SELECT * FROM BangChamCong";
    String insertSql = "INSERT INTO BangChamCong(MaNV, Thang, NgayLam) VALUES( ?, ?, ?)";
    String updateSql = "UPDATE BangChamCong SET MaNV=?, Thang=?, NgayLam=?  WHERE MaBCC=?";
    String deleteSql = "DELETE FROM BangChamCong WHERE MaBCC=?";
    String selectLastIdSql = "SELECT max(MaBCC) FROM BangChamCong";
    String selectCount = "select count(manv) as Tong from BangChamCong where MaNV=? and MONTH(Thang)= ? and YEAR(thang)=?";
    String selectMaNVfromChamCong = "select MaNV as mnv from BANGCHAMCONG where MaNV=? and NgayLam=?";

    @Override
    public ChamCong getById(Integer id) {
        List<ChamCong> list = this.getBySql(selectByIdSql, id);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ChamCong> getAll() {
        List<ChamCong> list = this.getBySql(selectAllSql);
        return list;
    }

    @Override
    public Integer create(ChamCong entity) {
        try {
            Object[] vals = { entity.getMaNV(), entity.getThang(), entity.getNgayLam()};
            Jdbc.executeUpdate(insertSql, vals);
            return Jdbc.executeScalar(selectLastIdSql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(ChamCong entity) {
        try {
            Object[] vals = {entity.getMaNV(), entity.getThang(), entity.getNgayLam(), entity.getMaBCC()};
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
    public List<ChamCong> getBySql(String sql, Object... vals) {
        List<ChamCong> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql, vals);
            while (rs.next()) {
                ChamCong entity = new ChamCong();
                entity.setMaBCC(rs.getInt("MaBCC"));
                entity.setMaNV(rs.getString("MaNV"));
                entity.setThang(rs.getDate("Thang"));
                entity.setNgayLam(rs.getDate("Ngaylam"));
                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Integer getByKeyword(Object... vals) {
        Integer value = null;
        try {
            ResultSet rs = Jdbc.executeQuery(selectCount, vals);
            while (rs.next()) {
                value = rs.getInt("Tong");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return value;
    }

    @Override
    public String getMaNVfromChamCong(Object... vals) {
        String value = null;
        try {
            ResultSet rs = Jdbc.executeQuery(selectMaNVfromChamCong, vals);
            while (rs.next()) {
                value = rs.getString("mnv");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return value;
    }

    @Override
    public void deleteByKeyword(String sql, Object... vals) {
        try {
            Jdbc.executeUpdate(sql, vals);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
