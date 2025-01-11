/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hrm.dao;

import com.hrm.entity.ThongKe;
import com.hrm.entity.ThongKe.thongKeLuongThang;
import com.hrm.entity.ThongKe.thongKeNV;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface ThongKeDAO extends EntityDAO<ThongKe.thongKeLuongThang, Date> {

    List<thongKeNV> getListNV();

    List<thongKeLuongThang> getListLuongThang(Object... vals);

    List<thongKeLuongThang> getListLuongAll(Object... vals);

    @Override
    public default thongKeLuongThang getById(Date id) {
        return null;
    }

    @Override
    public default List<thongKeLuongThang> getAll() {
        return null;
    }

    @Override
    public default Date create(thongKeLuongThang entity) {
        return null;
    }

    @Override
    public default void update(thongKeLuongThang entity) {
    }

    @Override
    public default List<thongKeLuongThang> getBySql(String sql, Object... vals) {
        return null;
    }

}
