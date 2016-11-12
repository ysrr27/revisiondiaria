<%-- 
    Document   : index
    Created on : 19/01/2015, 01:08:28 PM
    Author     : ysanchez
--%>


<%@page import="javax.print.attribute.HashPrintJobAttributeSet"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="SentEmail.*" %>



<%

    //  Items del checklist
    String boletinEsp = (request.getParameter("boletinEsp") != null) ? request.getParameter("boletinEsp") : "OK";
    String boletinIng = (request.getParameter("boletinIng") != null) ? request.getParameter("boletinIng") : "OK";
    String sp = (request.getParameter("sp") != null) ? request.getParameter("sp") : "OK";
    String sb = (request.getParameter("sb") != null) ? request.getParameter("sb") : "OK";
    String sAlt1 = (request.getParameter("sAlt1") != null) ? request.getParameter("sAlt1") : "OK";
    String sAlt2 = (request.getParameter("sAlt2") != null) ? request.getParameter("sAlt2") : "OK";
    String sApp = (request.getParameter("sApp") != null) ? request.getParameter("sApp") : "OK";
    String homeEspanol = (request.getParameter("homeEspanol") != null) ? request.getParameter("homeEspanol") : "OK";
    String seccionesEspanol = (request.getParameter("seccionesEspanol") != null) ? request.getParameter("seccionesEspanol") : "OK";
    String videosEspanol = (request.getParameter("videosEspanol") != null) ? request.getParameter("videosEspanol") : "OK";
    String AddThisEspanol = (request.getParameter("AddThisEspanol") != null) ? request.getParameter("AddThisEspanol") : "OK";
    String homeIngles = (request.getParameter("homeIngles") != null) ? request.getParameter("homeIngles") : "OK";
    String seccionesIngles = (request.getParameter("seccionesIngles") != null) ? request.getParameter("seccionesIngles") : "OK";
    String videosIngles = (request.getParameter("videosIngles") != null) ? request.getParameter("videosIngles") : "OK";
    String AddThisIngles = (request.getParameter("AddThisIngles") != null) ? request.getParameter("AddThisIngles") : "OK";

    //   item  obervacion
    String bolEspObser = (request.getParameter("bolEspObser") != null) ? request.getParameter("bolEspObser") : "OK";
    String bolIngObser = (request.getParameter("bolIngObser") != null) ? request.getParameter("bolIngObser") : "OK";
    String spObserv = (request.getParameter("spObserv") != null) ? request.getParameter("spObserv") : "OK";
    String sbObserv = (request.getParameter("sbObserv") != null) ? request.getParameter("sbObserv") : "OK";
    String sAlt1Observ = (request.getParameter("sAlt1Observ") != null) ? request.getParameter("sAlt1Observ") : "OK";
    String sAlt2Observ = (request.getParameter("sAlt2Observ") != null) ? request.getParameter("sAlt2Observ") : "OK";
    String sAppObserv = (request.getParameter("sAppObserv") != null) ? request.getParameter("sAppObserv") : "OK";
    String homeEspanolObserv = (request.getParameter("homeEspanolObserv") != null) ? request.getParameter("homeEspanolObserv") : "OK";
    String seccionesEspanolObserv = (request.getParameter("seccionesEspanolObserv") != null) ? request.getParameter("seccionesEspanolObserv") : "OK";
    String videosEspanolObserv = (request.getParameter("videosEspanolObserv") != null) ? request.getParameter("videosEspanolObserv") : "OK";
    String AddThisEspanolObserv = (request.getParameter("AddThisEspanolObserv") != null) ? request.getParameter("AddThisEspanolObserv") : "OK";
    String homeInglesObserv = (request.getParameter("homeInglesObserv") != null) ? request.getParameter("homeInglesObserv") : "OK";
    String seccionesInglesObserv = (request.getParameter("seccionesInglesObserv") != null) ? request.getParameter("seccionesInglesObserv") : "OK";
    String videosInglesObserv = (request.getParameter("videosInglesObserv") != null) ? request.getParameter("videosInglesObserv") : "OK";
    String AddThisInglesObserv = (request.getParameter("AddThisInglesObserv") != null) ? request.getParameter("AddThisInglesObserv") : "OK";

    MailClass correo = new MailClass();

    // Create an ArrayList with test data
    ArrayList list = new ArrayList();

    //  Map Items checklist
    Map hash = new HashMap();
    hash.put("boletinEsp", boletinEsp);
    hash.put("boletinIng", boletinIng);
    hash.put("sp", sp);
    hash.put("sb", sb);
    hash.put("sAlt1", sAlt1);
    hash.put("sAlt2", sAlt2);
    hash.put("sApp", sApp);
    hash.put("homeEspanol", homeEspanol);
    hash.put("seccionesEspanol", seccionesEspanol);
    hash.put("videosEspanol", videosEspanol);
    hash.put("addThisEspanol", AddThisEspanol);
    hash.put("homeIngles", homeIngles);
    hash.put("seccionesIngles", seccionesIngles);
    hash.put("videosIngles", videosIngles);
    hash.put("addThisIngles", AddThisIngles);

    list.add(hash);

    //  Map Items Observaciones
    Map hashObser = new HashMap();
    hashObser.put("bolEspObser", bolEspObser);
    hashObser.put("bolIngObser", bolIngObser);
    hashObser.put("spObserv", spObserv);
    hashObser.put("sbObserv", sbObserv);
    hashObser.put("sAlt1Observ", sAlt1Observ);
    hashObser.put("sAlt2Observ", sAlt2Observ);
    hashObser.put("sAppObserv", sAppObserv);
    hashObser.put("homeEspanolObserv", homeEspanolObserv);
    hashObser.put("seccionesEspanolObserv", seccionesEspanolObserv);
    hashObser.put("videosEspanolObserv", videosEspanolObserv);
    hashObser.put("addThisEspanolObserv", AddThisEspanolObserv);
    hashObser.put("homeInglesObserv", homeInglesObserv);
    hashObser.put("seccionesInglesObser", seccionesInglesObserv);
    hashObser.put("videosInglesObserv", videosInglesObserv);
    hashObser.put("AddThisInglesObserv", AddThisInglesObserv);

    pageContext.setAttribute("authors", list);

    // correo.setIdioma(idioma);
    correo.setHash(hash);
    correo.setHashObser(hashObser);

    correo.SendAlertToMail();

          //  out.println(author1.get("bole"));

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


    </body>
</html>
