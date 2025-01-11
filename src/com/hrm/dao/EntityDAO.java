package com.hrm.dao;

import java.util.List;

public interface EntityDAO<Entity, ID> {
    /**
     * Truy vấn thực thể theo khóa chính
     */
    Entity getById(ID id);
    /**
     * Truy vấn tất cả thực thể
     */
    List<Entity> getAll();
    /**
     * Thêm mới dữ liệu từ thực thể
     */
    ID create(Entity entity);
    /**
     * Cập nhật dữ liệu từ thực thể
     */
    void update(Entity entity);
    /**
     * Xóa thực thể theo khóa
     */
    void deleteById(ID id);
    
    List<Entity> getBySql(String sql, Object...vals);
}
