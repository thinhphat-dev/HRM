/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hrm.dao;

import com.hrm.entity.NhanVien;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface NhanVienDAO extends EntityDAO<NhanVien,String>{
    public void deleteAll();
    public void deleteNVByProc(String id);
    public List<NhanVien> searchByMaNV(String keyword);
    public List<NhanVien> searchByEmail(String keyword);


    
}
