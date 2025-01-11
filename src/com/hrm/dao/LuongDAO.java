/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hrm.dao;

import com.hrm.entity.Luong;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface LuongDAO extends EntityDAO<Luong, Integer> {

    public Luong getByMaNV(Object... vals);
    public List<Luong> searchByKeyword(Object... vals);

    public void deleteByKeyword(String sql, Object... vals);

}
