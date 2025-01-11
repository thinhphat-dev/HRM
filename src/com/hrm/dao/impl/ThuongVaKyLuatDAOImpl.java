package com.hrm.dao.impl;

import com.hrm.dao.ThuongVaKyLuatDAO;
import com.hrm.entity.ThuongVaKyLuat;
import com.hrm.util.Jdbc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ThuongVaKyLuatDAOImpl implements ThuongVaKyLuatDAO {

    String selectByIdSql = "SELECT * FROM ThuongVaKyLuat WHERE MaTVKL=?";
    String selectAllSql = "SELECT * FROM ThuongVaKyLuat";
    String insertSql = "INSERT INTO ThuongVaKyLuat( MaNV, Loai, SoTien, Thang, LyDo) VALUES(?, ?, ?, ?,?)";
    String updateSql = "UPDATE ThuongVaKyLuat SET Loai=? ,SoTien=?, Thang=?,LyDo=?   WHERE MaTVKL=?";
    String deleteSql = "DELETE FROM ThuongVaKyLuat WHERE MaTVKL=?";
    String selectLastIdSql = "SELECT max(MaTVKL) FROM ThuongVaKyLuat";
    String selectByMaNV = "SELECT * FROM ThuongVaKyLuat WHERE MaNV=? and MONTH(thang)=? and YEAR(thang)=?";

    @Override
    public ThuongVaKyLuat getById(Integer id) {
        List<ThuongVaKyLuat> list = this.getBySql(selectByIdSql, id);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<ThuongVaKyLuat> getAll() {
        List<ThuongVaKyLuat> list = this.getBySql(selectAllSql);
        return list;
    }

    @Override
    public Integer create(ThuongVaKyLuat entity) {
        try {
            Object[] vals = { entity.getMaNV(), entity.getLoai(), entity.getSoTien(),entity.getThang(), entity.getLyDo()};
            Jdbc.executeUpdate(insertSql, vals);
            return Jdbc.executeScalar(selectLastIdSql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(ThuongVaKyLuat entity) {
        try {
            Object[] vals = { entity.getLoai(), entity.getSoTien(), entity.getThang(), entity.getLyDo(), entity.getMaTVKL()};
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
    public List<ThuongVaKyLuat> getBySql(String sql, Object... vals) {
        List<ThuongVaKyLuat> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql, vals);
            while (rs.next()) {
                ThuongVaKyLuat entity = new ThuongVaKyLuat();
                entity.setMaTVKL(rs.getInt("MaTVKL"));
                entity.setMaNV(rs.getString("MaNV"));
                entity.setLoai(rs.getBoolean("Loai"));
                entity.setSoTien(rs.getDouble("SoTien"));
                entity.setThang(rs.getDate("Thang"));
                entity.setLyDo(rs.getString("LyDo"));
                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }



    @Override
    public List<ThuongVaKyLuat> getByMaNV(Object... keyword) {
        List<ThuongVaKyLuat> list = this.getBySql(selectByMaNV, keyword);
        if (!list.isEmpty()) {
            return list;
        }
        return null;
    }
}
