/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hrm.util;

import java.util.Date;
import javax.mail.PasswordAuthentication;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author ADMIN
 */
public class Mail {

    public Mail(String user) {
        try {

            //Tao doi tuong
            Properties p = new Properties();
            p.put("mail.smtp.auth", "true");
            p.put("mail.smtp.starttls.enable", "true");
            p.put("mail.smtp.host", "smtp.gmail.com");
            p.put("mail.smtp.port", 587);
            p.put("mail.smtp.ssl.trust", "*");
            p.put("mail.smtp.ssl.protocols", "TLSv1.2");
            
            //Khai bao user, pass 
            String accountName = "nguyentheanhasd1@gmail.com";
            String accountPass = "ndxceamumkrvrbjx";

            Session s = Session.getInstance(p,
                    new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(accountName, accountPass);
                }
            });

            String from = accountName;
            String to = user.trim();
            String subject = "HRM - HỆ THỐNG QUẢN LÝ NHÂN SỰ - MÃ XÁC NHẬN ĐẶT LẠI MẬT KHẨU";
            String body = "Dưới đây là Mã xác nhận đặt lại mật khẩu mới.      "
                    + "VUI LÒNG KHÔNG CHIA SẺ MÃ NÀY CHO BẤT KỲ AI:           "
                    + "190420";

            Message msg = new MimeMessage(s);
            msg.setFrom(new InternetAddress(from));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

            MimeBodyPart textPart = new MimeBodyPart();
            textPart.setContent(body, "text/html; charset=utf-8");
            msg.setSubject(subject);
            msg.setText(body);
            msg.setSentDate(new Date());

            MimeMultipart mp = new MimeMultipart();
            mp.addBodyPart(textPart);
            msg.setContent(mp);
            Transport.send(msg);
            MsgBox.alert(null, "Chúng tôi đã gửi một mã xác nhận đến Email của bạn !");

        } catch (MessagingException e) {
            System.out.println(e);
        }
    }

}
