/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hrm.controlller;

/**
 *
 * @author ADMIN
 */
public interface ThongKeController extends CrudController<Object> {

    @Override
    public default Object getForm() {
        return null;
    }

    @Override
    public default void setForm(Object entity) {
    }

    @Override
    public default void fillTable() {
    }

    @Override
    public default Object getEntityFromSelectedRow() {
        return null;
    }

    @Override
    public default void setSelectedRow(int index) {
    }

    @Override
    public default void updateStatus() {
    }

    @Override
    public default boolean isValidated() {
        return false;
    }

    @Override
    public default void initialize() {
    }

    @Override
    public default void create() {
    }

    @Override
    public default void update() {
    }

    @Override
    public default void delete() {
    }

    @Override
    public default void edit() {
    }

    @Override
    public default void resetForm() {
    }

    @Override
    public default void moveFirst() {
    }

    @Override
    public default void movePrev() {
    }

    @Override
    public default void moveNext() {
    }

    @Override
    public default void moveLast() {
    }

    public void fillTableNV();

    public void fillTableLuongThang();

    public void fillTableLuongAll();

    @Override
    public default void Print() {
    }
    
    

}
