package com.hrm.controlller;

import com.hrm.entity.Luong;
import com.hrm.entity.NhanVien;

public interface LuongController extends CrudController<Luong> {

    void chonAnh(NhanVien nv);

    @Override
    public default void Print() {
    }

    @Override
    default void setForm(Luong entity) {
    }

    public default void setForm(Luong entity, NhanVien nv) {
    }

    @Override
    default void fillTable() {
    }

    public default void showListOnTable(Integer month, Integer year, String MaNV) {
    }

    @Override
    default void create() {
    }

    @Override
    public default void edit() {
    }

    public default void edit(int rowsl) {
    }

    @Override
    default Luong getEntityFromSelectedRow() {
        return null;
    }

    public Luong getEntityFromSelectedRow(int rowsl);

    public void createTable();

    public void timKiem();

    public void selectAll();

    public void tinhTP(NhanVien nv);

    public void setOnOffTxtFields(boolean value);

    public void putDataToThongKe();

}
