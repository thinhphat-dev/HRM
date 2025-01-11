/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hrm.dao.impl;

import com.hrm.dao.LuongUngDAO;
import com.hrm.entity.LuongUng;
import com.hrm.util.Jdbc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class LuongUngDAOImpl implements LuongUngDAO {

    String selectByMaNV = "SELECT * from LuongUng where  MaNV=? and MONTH(Thang)= ? and YEAR(thang)=?";
    String insertSql = "INSERT INTO LuongUng(Thang, MaNV, SoTien) VALUES( ?, ?, ?)";
    String selectCount = "select sum(SoTien) as SoTien from LuongUng where MaNV=? and MONTH(Thang)= ? and YEAR(thang)=?";

    @Override
    public Integer create(LuongUng entity) {
        try {
            Object[] vals = {entity.getThang(), entity.getMaNV(), entity.getSoTien()};
            Jdbc.executeUpdate(insertSql, vals);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }

    @Override
    public List<LuongUng> getBySql(String sql, Object... vals) {
        List<LuongUng> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql, vals);
            while (rs.next()) {
                LuongUng entity = new LuongUng();
                entity.setId(rs.getInt("id"));
                entity.setThang(rs.getDate("Thang"));
                entity.setMaNV(rs.getString("MaNV"));
                entity.setSoTien(rs.getDouble("Sotien"));

                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public void deleteById(Integer id) {
    }

    @Override
    public void update(LuongUng entity) {
    }

    @Override
    public List<LuongUng> getAll() {

        return null;
    }

    @Override
    public LuongUng getByMaNV(Object... vals) {
        List<LuongUng> list = this.getBySql(selectByMaNV, vals);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public LuongUng getById(Integer id) {
        return null;
    }

    @Override
    public Double getByKeyword(Object... vals) {
      Double value = null;
        try {
            ResultSet rs = Jdbc.executeQuery(selectCount, vals);
            while (rs.next()) {
                value = rs.getDouble("SoTien");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (value == null ) {
            return 0.0;
        }else {
            return  value;
        }
        
    }

}
