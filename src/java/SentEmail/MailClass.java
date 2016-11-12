package SentEmail;

import static java.lang.System.out;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.stream.Stream;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailClass {

    private Map<String, String> hash;
    private Map<String, String> hashObser;

    public Map<String, String> getHashObser() {
        return hashObser;
    }

    public void setHashObser(Map<String, String> hashObser) {
        this.hashObser = hashObser;
    }

    public Map<String, String> getHash() {
        return hash;
    }

    public void setHash(Map<String, String> hash) {
        this.hash = hash;
    }

    String host = "correo.telesurtv.net";
    String to = "serviciosweb@telesurtv.net";
    String from = "alertas@telesurtv.net";
    final String username = "webtelesurt@telesurtv.net";
    final String password = "/W3b-Tele$ur..";
    String result;
    String de;

    public void SendAlertToMail() {

        // La dirección de envío (to)
        String para = "ysanchez@telesurtv.net";

        de = "serviciosweb@telesurtv.net";

        // El servidor (host). En este caso usamos localhost
        String host = "correo.telesurtv.net";

        // Obtenemos las propiedades del sistema
        Properties propiedades = System.getProperties();

        // Configuramos el servidor de correo
        propiedades.setProperty("mail.smtp.host", host);

        // Obtenemos la sesión por defecto
        Session sesion = Session.getDefaultInstance(propiedades);

        try {
            // Creamos un objeto mensaje tipo MimeMessage por defecto.
            MimeMessage mensaje = new MimeMessage(sesion);

            // Asignamos el “de o from” al header del correo.
            mensaje.setFrom(new InternetAddress(de));

            // Asignamos el “para o to” al header del correo.
            mensaje.addRecipient(Message.RecipientType.TO, new InternetAddress(para));

            // Asignamos el asunto
            mensaje.setSubject("Revision de servicios diariamente.");

            // Asignamos el mensaje como tal
            //  mensaje.setText("Esto es una pruba");
            mensaje.setContent("<h1>Revision de servicios diariamente</h1> "
                    + "<hr>"
                    + "<table style=\"width:100%\">\n"
                    + "  <tr>\n"
                    + "    <td><i><strong>Servicio</strong></i></td>\n"
                    + "    <td><i><strong>Estatus</strong></i></td> \n"
                    + "    <td><i><strong>Observación</strong></i></td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Boletín Diario Español</td>\n"
                    + "    <td>" + hash.get("boletinEsp") + "</td> \n"
                    + "    <td>" + hashObser.get("bolEspObser") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Boletín Diario Inglés</td>\n"
                    + "    <td>" + hash.get("boletinIng") + "</td> \n"
                    + "    <td>" + hashObser.get("bolIngObser") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Streaming Pincipal</td>\n"
                    + "    <td>" + hash.get("sp") + "</td> \n"
                    + "    <td>" + hashObser.get("spObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Streaming Backup</td>\n"
                    + "    <td>" + hash.get("sb") + "</td> \n"
                    + "    <td>" + hashObser.get("sbObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Streaming Alterno 1</td>\n"
                    + "    <td>" + hash.get("sAlt1") + "</td> \n"
                    + "    <td>" + hashObser.get("sAlt1Observ") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Streaming Alterno 2</td>\n"
                    + "    <td>" + hash.get("sAlt2") + "</td> \n"
                    + "    <td>" + hashObser.get("sAlt2Observ") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Streaming App Android/iOS</td>\n"
                    + "    <td>" + hash.get("sApp") + "</td> \n"
                    + "    <td>" + hashObser.get("sAppObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Home Español</td>\n"
                    + "    <td>" + hash.get("homeEspanol") + "</td> \n"
                    + "    <td>" + hashObser.get("homeEspanolObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Secciones Español</td>\n"
                    + "    <td>" + hash.get("seccionesEspanol") + "</td> \n"
                    + "    <td>" + hashObser.get("seccionesEspanolObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Sitio Videos Español</td>\n"
                    + "    <td>" + hash.get("videosEspanol") + "</td> \n"
                    + "    <td>" + hashObser.get("videosEspanolObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>AddThis notas Español</td>\n"
                    + "    <td>" + hash.get("addThisEspanol") + "</td> \n"
                    + "    <td>" + hashObser.get("addThisEspanolObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Home Inglés</td>\n"
                    + "    <td>" + hash.get("homeIngles") + "</td> \n"
                    + "    <td>" + hashObser.get("homeInglesObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Secciones Inglés</td>\n"
                    + "    <td>" + hash.get("seccionesIngles") + "</td> \n"
                    + "    <td>" + hashObser.get("seccionesInglesObser") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>Sitio Videos Inglés</td>\n"
                    + "    <td>" + hash.get("videosIngles") + "</td> \n"
                    + "    <td>" + hashObser.get("videosInglesObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "  <tr>\n"
                    + "    <td>AddThis inglés</td>\n"
                    + "    <td>" + hash.get("addThisIngles") + "</td> \n"
                    + "    <td>" + hashObser.get("AddThisInglesObserv") + "</td>\n"
                    + "  </tr>\n"
                    + "</table>", "text/html; charset=utf-8");

            // Enviamos el correo
            Transport.send(mensaje);
            out.println(hash);
            System.out.println("Mensaje enviado");
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

}
