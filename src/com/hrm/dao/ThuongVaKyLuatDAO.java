/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hrm.dao;

import com.hrm.entity.ThuongVaKyLuat;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface ThuongVaKyLuatDAO extends EntityDAO<ThuongVaKyLuat, Integer> {

    public List<ThuongVaKyLuat> getByMaNV(Object... keyword);

}
