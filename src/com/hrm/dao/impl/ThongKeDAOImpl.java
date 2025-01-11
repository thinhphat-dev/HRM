package com.hrm.dao.impl;

import com.hrm.dao.ThongKeDAO;
import com.hrm.entity.ThongKe;
import com.hrm.util.Jdbc;
import com.hrm.util.MsgBox;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ThongKeDAOImpl implements ThongKeDAO {

    String getNVProcCall = "{call thongkeNV}";
    String getLuongThangProcCall = "{call thongKeLuongThang(?)}";
    String InsertSQL = "INSERT INTO ThongKe(Thang, TenPB, TongChi) VALUES(?, ?, ?)";
    String deleteSql = "DELETE FROM ThongKe WHERE Thang=?";
    @Override

    public List<ThongKe.thongKeNV> getListNV() {
        List<ThongKe.thongKeNV> list = new ArrayList<>();

        try {
            ResultSet rs = Jdbc.callProc(getNVProcCall);
            while (rs.next()) {
                ThongKe.thongKeNV tkNV = new ThongKe.thongKeNV();
                tkNV.setMaPB(rs.getInt("MaPB"));
                tkNV.setTongNV(rs.getInt("Tong"));
                tkNV.setSlNu(rs.getInt("Nu"));
                tkNV.setSlNam(rs.getInt("Nam"));
                list.add(tkNV);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<ThongKe.thongKeLuongThang> getListLuongThang(Object... vals) {
        List<ThongKe.thongKeLuongThang> list = new ArrayList<>();

        try {
            ResultSet rs = Jdbc.callProc(getLuongThangProcCall,vals);

            while (rs.next()) {
                ThongKe.thongKeLuongThang tkLT = new ThongKe.thongKeLuongThang();
                tkLT.setThoiGian(rs.getDate("Thang"));
                tkLT.setTenPB(rs.getString("TenPB"));
                tkLT.setSoTien(rs.getDouble("TongChi"));
                list.add(tkLT);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Date create(ThongKe.thongKeLuongThang entity) {
        try {
            Object[] vals = {entity.getThoiGian(), entity.getTenPB(), entity.getSoTien()};
            Jdbc.executeUpdate(InsertSQL, vals);
        } catch (Exception e) {
            MsgBox.alert(null, "Dữ liệu thống kê đã tồn tại !");

        }
        return null;
    }

    @Override
    public void deleteById(Date id) {
        try {
            Jdbc.executeUpdate(deleteSql, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<ThongKe.thongKeLuongThang> getListLuongAll(Object... vals) {
         List<ThongKe.thongKeLuongThang> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.callProc(getLuongThangProcCall,vals);
            while (rs.next()) {
                ThongKe.thongKeLuongThang tkLT = new ThongKe.thongKeLuongThang();
                tkLT.setTenPB(rs.getString("TenPB"));
                tkLT.setSoTien(rs.getDouble("TongChi"));
                list.add(tkLT);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    

    

}
