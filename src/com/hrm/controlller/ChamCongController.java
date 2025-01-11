package com.hrm.controlller;

import com.hrm.entity.ChamCong;

public interface ChamCongController extends CrudController<ChamCong> {

    @Override
    public default void Print() {
    }

    @Override
    default void setForm(ChamCong entity) {
    }

    @Override
    default void fillTable() {
    }

    public default void fillTable(String date, String keyword) {
    }

    @Override
    default void create() {
    }

    @Override
    default void setSelectedRow(int index) {
    }

    @Override
    default ChamCong getForm() {
        return null;
    }

    @Override
    default boolean isValidated() {
        return false;
    }

    @Override
    default void edit() {
    }

    @Override
    default void resetForm() {
    }

    @Override
    default ChamCong getEntityFromSelectedRow() {
        return null;
    }

    public void timKiem();

    public void selectAll();

    @Override
    default void moveFirst() {
    }

    @Override
    default void movePrev() {
    }

    @Override
    default void moveNext() {
    }

    @Override
    default void moveLast() {
    }

}
