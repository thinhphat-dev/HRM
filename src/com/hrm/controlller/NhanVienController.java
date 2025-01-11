package com.hrm.controlller;


import com.hrm.entity.NhanVien;
import java.util.List;



public interface NhanVienController extends CrudController<NhanVien>{
    void chonAnh();
    void showListOnTable(List<NhanVien> list);
    void editSelectedEntity();
      @Override
    public default void Print() {
    }
}