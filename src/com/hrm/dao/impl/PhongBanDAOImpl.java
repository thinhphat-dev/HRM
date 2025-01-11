package com.hrm.dao.impl;

import com.hrm.dao.PhongBanDAO;
import com.hrm.entity.PhongBan;
import com.hrm.util.Jdbc;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PhongBanDAOImpl implements PhongBanDAO {

    String selectByIdSql = "SELECT * FROM PhongBan WHERE MaPB=?";
    String selectAllSql = "SELECT * FROM PhongBan";
    String insertSql = "INSERT INTO PhongBan(MaPB, TenPB) VALUES(?, ?)";
    String updateSql = "UPDATE PhongBan SET TenPB=?  WHERE MaPB=?";
    String deleteSql = "DELETE FROM PhongBan WHERE MaPB=?";
    String selectLastIdSql = "SELECT max(MaPB) FROM PhongBan";

    @Override
    public PhongBan getById(Integer id) {
        List<PhongBan> list = this.getBySql(selectByIdSql, id);
        if (!list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<PhongBan> getAll() {
        List<PhongBan> list = this.getBySql(selectAllSql);
        return list;
    }

    @Override
    public Integer create(PhongBan entity) {
        try {
            Object[] vals = {entity.getMaPB(), entity.getTenPB()};
            Jdbc.executeUpdate(insertSql, vals);
            return Jdbc.executeScalar(selectLastIdSql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(PhongBan entity) {
        try {
            Object[] vals = { entity.getTenPB(),entity.getMaPB()};
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
    public List<PhongBan> getBySql(String sql, Object... vals) {
        List<PhongBan> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql, vals);
            while (rs.next()) {
                PhongBan entity = new PhongBan();
                entity.setMaPB(rs.getInt("MaPB"));
                entity.setTenPB(rs.getString("TenPB"));
                list.add(entity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
//
//    public void insert(ChuyenDe model){
//        String sql="INSERT INTO ChuyenDe (MaCD, TenCD, HocPhi, ThoiLuong, Hinh, MoTa) VALUES (?, ?, ?, ?, ?, ?)";
//        XJdbc.update(sql, 
//                model.getMaCD(), 
//                model.getTenCD(), 
//                model.getHocPhi(), 
//                model.getThoiLuong(), 
//                model.getHinh(),
//                model.getMoTa());
//    }
//    
//    public void update(ChuyenDe model){
//        String sql="UPDATE ChuyenDe SET TenCD=?, HocPhi=?, ThoiLuong=?, Hinh=?, MoTa=? WHERE MaCD=?";
//        XJdbc.update(sql, 
//                model.getTenCD(), 
//                model.getHocPhi(), 
//                model.getThoiLuong(), 
//                model.getHinh(), 
//                model.getMoTa(),
//                model.getMaCD());
//    }
//    
//    public void delete(String MaCD){
//        String sql="DELETE FROM ChuyenDe WHERE MaCD=?";
//        XJdbc.update(sql, MaCD);
//    }
//    
//    public List<ChuyenDe> selectAll(){
//        String sql="SELECT * FROM ChuyenDe";
//        return selectBySql(sql);
//    }
//    
//    public ChuyenDe selectById(String macd){
//        String sql="SELECT * FROM ChuyenDe WHERE MaCD=?";
//        List<ChuyenDe> list = selectBySql(sql, macd);
//        return list.size() > 0 ? list.get(0) : null;
//    }
//    
//    protected List<ChuyenDe> selectBySql(String sql, Object...args){
//        List<ChuyenDe> list=new ArrayList<>();
//        try {
//            ResultSet rs = null;
//            try {
//                rs = XJdbc.query(sql, args);
//                while(rs.next()){
//                    ChuyenDe entity=new ChuyenDe();
//                    entity.setMaCD(rs.getString("MaCD"));
//                    entity.setHinh(rs.getString("Hinh"));
//                    entity.setHocPhi(rs.getDouble("HocPhi"));
//                    entity.setMoTa(rs.getString("MoTa"));
//                    entity.setTenCD(rs.getString("TenCD"));
//                    entity.setThoiLuong(rs.getInt("ThoiLuong"));
//                    list.add(entity);
//                }
//            }
//            finally{
//                rs.getStatement().getConnection().close();
//            }
//        } 
//        catch (SQLException ex) {
//            throw new RuntimeException(ex);
//        }
//        return list;
//    }
//
//   

}
