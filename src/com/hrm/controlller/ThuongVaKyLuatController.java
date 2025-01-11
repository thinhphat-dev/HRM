package com.hrm.controlller;



import com.hrm.entity.NhanVien;
import com.hrm.entity.ThuongVaKyLuat;
import java.util.List;



public interface ThuongVaKyLuatController extends CrudController<ThuongVaKyLuat>{
    
    void getData(List<NhanVien> ListNV, List<ThuongVaKyLuat> ListTvkl, Integer Loai);
    
    @Override
    default void fillTable() {}
    
    public default void fillTable(Integer month, Integer year) {}
    
    @Override
    default void setForm(ThuongVaKyLuat entity) {}

    public default void setForm(NhanVien nv, ThuongVaKyLuat tvkl) {}
    void chonAnh(NhanVien nv);
    void timKiem();
    
      @Override
    public default void Print() {
    }
}
