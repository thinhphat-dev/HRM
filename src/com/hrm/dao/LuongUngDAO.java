/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hrm.dao;

import com.hrm.entity.LuongUng;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface LuongUngDAO extends EntityDAO<LuongUng, Integer>{

    @Override
    public Integer create(LuongUng entity);

    @Override
    public List<LuongUng> getBySql(String sql, Object... vals);

    @Override
    public void deleteById(Integer id);

    @Override
    public void update(LuongUng entity);

    @Override
    public List<LuongUng> getAll();

    @Override
    public LuongUng getById(Integer id);
    
    public LuongUng getByMaNV(Object... vals);
    
     public Double getByKeyword(Object... vals);
}
