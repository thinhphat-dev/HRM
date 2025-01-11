package com.hrm.dao.impl;

import com.hrm.dao.ChucVuDAO;
import com.hrm.entity.ChucVu;
import com.hrm.util.Jdbc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ChucVuDAOImpl implements ChucVuDAO {

    String selectByIdSql = "SELECT * FROM ChucVu WHERE MaCV=?";
    String selectAllSql = "SELECT * FROM ChucVu";
    String insertSql = "INSERT INTO ChucVu(MaCV, TenCV) VALUES(?, ?)";
    String updateSql = "UPDATE ChucVu SET TenCV=? WHERE MaCV=?";
    String deleteSql = "DELETE FROM ChucVu WHERE MaCV=?";
    String selectLastIdSql = "SELECT max(MaCV) FROM ChucVu";

//    public void insert(ChucVu model) {
//        String sql = "INSERT INTO ChucVu(MaCV, TenCV) VALUES(?,?)";
//        XJdbc.update(sql,
//                model.getMaCV(),
//                model.getTenCV()
//        );
//    }
//
//    public void update(ChucVu model) {
//        String sql = "UPDATE ChucVu SET TenCV=? WHERE MaCV=?";
//        XJdbc.update(sql,
//                model.getTenCV(),
//                model.getMaCV());
//    }
//
//    public void delete(Integer ChucVuid) {
//        String sql = "DELETE FROM ChucVu WHERE MaCV=?";
//        XJdbc.update(sql, ChucVuid);
//    }
//
//    public List<ChucVu> selectAll() {
//        String sql = "SELECT * FROM ChucVu";
//        return selectBySql(sql);
//    }
//
//    public ChucVu selectById(Integer ChucVuid) {
//        String sql = "SELECT * FROM ChucVu WHERE MaCV=?";
//        List<ChucVu> list = selectBySql(sql, ChucVuid);
//        return list.size() > 0 ? list.get(0) : null;
//    }
//
//    protected List<ChucVu> selectBySql(String sql, Object... args) {
//        List<ChucVu> list = new ArrayList<>();
//        try {
//            ResultSet rs = null;
//            try {
//                rs = XJdbc.query(sql, args);
//                while (rs.next()) {
//                    ChucVu entity = new ChucVu();
//                    entity.setMaCV(rs.getInt("MaCV"));
//                    entity.setTenCV(rs.getString("TenCV"));
//                    list.add(entity);
//                }
//            } finally {
//                rs.getStatement().getConnection().close();
//            }
//        } catch (SQLException ex) {
//            throw new RuntimeException(ex);
//        }
//        return list;
//    }
//
//    public List<ChucVu> selectByChucVu(int MaCV) {
//        String sql = "SELECT * FROM ChucVu WHERE MaCV=?";
//        return this.selectBySql(sql, MaCV);
//    }
    @Override
    public ChucVu getById(Integer id) {
        List<ChucVu> list = this.getBySql(selectByIdSql, id);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public Integer create(ChucVu entity) {
        try {
            Object[] vals = {entity.getMaCV(), entity.getTenCV()};
            Jdbc.executeUpdate(insertSql, vals);
            return Jdbc.executeScalar(selectLastIdSql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
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
    public List<ChucVu> getAll() {
        List<ChucVu> list = this.getBySql(selectAllSql);
        return list;
    }

    @Override
    public List<ChucVu> getBySql(String sql, Object... vals) {
        List<ChucVu> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql, vals);
            while (rs.next()) {
                ChucVu entity = new ChucVu();
                entity.setMaCV(rs.getInt("MaCV"));
                entity.setTenCV(rs.getString("TenCV"));
                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public void update(ChucVu entity) {
        try {
            Object[] vals = { entity.getTenCV(), entity.getMaCV()};
            Jdbc.executeUpdate(updateSql, vals);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
