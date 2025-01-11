/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hrm.dao;

import com.hrm.entity.ChamCong;

/**
 *
 * @author ADMIN
 */
public interface ChamCongDAO extends EntityDAO<ChamCong, Integer> {

    public Integer getByKeyword(Object... vals);

    public String getMaNVfromChamCong(Object... vals);

    public void deleteByKeyword(String sql, Object... vals);
}
