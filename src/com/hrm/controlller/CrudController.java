package com.hrm.controlller;

public interface CrudController<Entity> {
    /*
     * Đọc/ghi dữ liệu trên giao diện
     */
    Entity getForm();
    void setForm(Entity entity);
    void fillTable();
     Entity getEntityFromSelectedRow();
    void setSelectedRow(int index);
    void updateStatus();
    boolean isValidated();
    /*
     * Mã điều khiển sự kiện CRUD
     */
    void initialize();
    void create();
    void update();
    void delete();
    void edit();
    void resetForm();
    /*
     * Mã điều khiển sự kiện điều hướng
     */
    void moveFirst();
    void movePrev();
    void moveNext();
    void moveLast();
    
    /*
     * In danh sách
     */
    void Print();
}