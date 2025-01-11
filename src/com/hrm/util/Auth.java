package com.hrm.util;

import com.hrm.entity.NhanVien;

public class Auth {

    /**
     * Đối tượng này chứa thông tin người sử dụng sau khi đăng nhập
     */
    public static NhanVien user = null;

    /**
     * Xóa thông tin của người sử dụng khi có yêu cầu đăng xuất
     */
    public static void clear() {
        Auth.user = null;
    }

    /**
     * Kiểm tra xem đăng nhập hay chưa
     */
    public static boolean isLogin() {
        return Auth.user != null;
    }

    /**
     * Kiểm tra xem có phải là trưởng phòng hay không
     */
    public static String isManager() {
        if (user.getMaCV() == 1 && user.getMaPB() == 1) {
            return "Trưởng phòng kế toán";
        } else if (user.getMaCV() == 1 && user.getMaPB() == 2) {
            return "Trưởng phòng bán hàng";
        } else {
            return "Nhân viên";
        }
    }
}
