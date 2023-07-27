
package Model;

import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class SendMailXacNhanDonHang {
	public boolean sendMail(String email, String name) {
        boolean test = false;


        final String fromEmail = "nhomcongnghephanmem1@gmail.com";
        final String passEmail = "gkzeixfkhdwtqdvl";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS

        Session session = Session.getInstance(prop,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(fromEmail, passEmail);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("nhomcongnghephanmem1@gmail.com"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(email)
            );
            message.setSubject("THEO DÕI TRẠNG THÁI ĐƠN HÀNG");
            message.setText("Chào " + name + ","
            		+ "n\n Cảm ơn bạn đã chọn mua hàng trên trang web của chúng tôi."
                    + "\n\n Hãy theo dõi đơn hàng của bạn qua: http://localhost:8080/Apple_store/shop/searchorder"
                    + "\n\n Thân ái.");

            Transport.send(message);

            //System.out.println("Done");

            test = true;

        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return test;
    }
}