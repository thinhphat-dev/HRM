/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hrm.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.swing.table.DefaultTableModel;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
/**
 *
 * @author ADMIN
 */
public class XPrint {

    public static void Print(DefaultTableModel model) {

        try {
            String name = MsgBox.prompt(null, "Nhập tên file: ");
            XSSFWorkbook wb = new XSSFWorkbook();
            XSSFSheet sh = wb.createSheet(name);
            XSSFRow row = null;
            Cell cell = null;
            int rowCount = 3;
            
            row = sh.createRow(rowCount++);
            for (int i = 0; i < model.getColumnCount(); i++) {
                cell = row.createCell(i, CellType.STRING);
                cell.setCellValue(model.getColumnName(i));
            }
            for (int i = 0; i < model.getRowCount(); i++) {
                row = sh.createRow(rowCount++);
                for (int j = 0; j < model.getColumnCount(); j++) {
                    cell = row.createCell(j, CellType.STRING);
                    cell.setCellValue(String.valueOf(model.getValueAt(i, j)));
                }
            }
            File f = new File("C:\\Users\\ADMIN\\Desktop\\" + name + ".xlsx");
            try {
                FileOutputStream fis = new FileOutputStream(f);
                wb.write(fis);
                fis.close();
                wb.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        } catch (NoClassDefFoundError ex) {
            ex.printStackTrace();

        }

}
}
