

<%--<%@ include file="TS_Common_Libraries.jsp" %>--%>

<%
//org.opencms.jsp.CmsJspXmlContentBean cms = new org.opencms.jsp.CmsJspXmlContentBean(pageContext, request, response);

%>

<style type="text/css">
    .ui-draggable .ui-dialog-titlebar{
        background: #191F43 !important;
        border: 1px solid !important;
    }
    .panel-primary>.panel-heading{
        background: #191F43 !important;
        border: 1px solid !important; 
    }
    .thumbnail{
        background: transparent !important;
        border: none !important;
    }
    input[type=checkbox], input[type=radio] {
        cursor: pointer;
    }
</style>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.css">

<div class="container panel panel-primary">
    <div class="panel-heading">
        <h1 class="text-center panel-title ">
            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <a href="#" class="thumbnail">
                      <img src="http://www.telesurtv.net/arte/logo-telesur.png" alt="...">
                  </a>
              </div>
              <div class="col-md-2 col-md-offset-2"><br><br><br><label>Revisión Diaria</label></div>
          </div>

          <div id="mensaje"  class="alert alert-success" style="display: none;"></div>
          <div id="mensajeError" class="alert alert-danger"  style="display: none;"></div></h1>
      </div>
      <div class="panel-body">
        <form action="/system/modules/com.tfsla.diario.telesur/elements/z_procesar_rd.jsp" method ="post" id="formRevisionDiaria">

            <div class="comtainer">
                <div class="row">
                    <div class="col-md-3 col-md-offset-3">
                        <H4><span class="label label-info">SERVICIO</span></H4>
                    </div>
                    <div class="col-md-1"><H4><span class="label label-info">OK</span></H4></div>
                    <div class="col-md-1"><H4><span class="label label-info">ERROR!</span></H4></div>
                    <div class="col-md-3"><H4><span class="label label-info">OBSERVACIÓN</span></H4></div>    
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Boletín Diario Español</label></div>
                    <div class="col-md-1"><input type="checkbox" name="boletinEsp" id="boletinEsp_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="boletinEsp" id="boletinEsp_no" value="ERROR!" class="ventana" data-item="item-bde" title="Boletín Diario Español"></div>
                    <div class="col-md-3"><input type="text" name="bolEspObser" id="bolEspObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Boletín Diario Inglés</label></div>
                    <div class="col-md-1"><input type="checkbox" name="boletinIng" id="boletinIng_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="boletinIng" id="boletinIng_no" value="ERROR!" class="ventana" data-item="item-bdi" title="Boletín Diario Inglés"></div>
                    <div class="col-md-3"><input type="text" name="bolIngObser" id="bolIngObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Streaming Pincipal</label></div>
                    <div class="col-md-1"><input type="checkbox" name="sp" id="sp_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="sp" id="sp_no" value="ERROR!" class="ventana" data-item="item-sp" title="Streaming Pincipal"></div>
                    <div class="col-md-3"><input type="text" name="spObserv" id="spObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Streaming Backup</label></div>
                    <div class="col-md-1"><input type="checkbox" name="sb" id="sb_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="sb" id="sb_no" value="ERROR!" class="ventana" data-item="item-sb" title="Streaming Pincipal"></div>
                    <div class="col-md-3"><input type="text" name="sbObserv" id="sbObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Streaming Alterno 1</label></div>
                    <div class="col-md-1"><input type="checkbox" name="sAlt1" id="sAlt1_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="sAlt1" id="sAlt1_no" value="ERROR!" class="ventana" data-item="item-sAlt1" title="Streaming Alterno 1"></div>
                    <div class="col-md-3"><input type="text" name="sAlt1Observ" id="sAlt1Obser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Streaming Alterno 2 </label></div>
                    <div class="col-md-1"><input type="checkbox" name="sAlt2" id="sAlt2_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="sAlt2" id="sAlt2_no" value="ERROR!" class="ventana" data-item="item-sAlt2" title="Streaming Alterno 2"></div>
                    <div class="col-md-3"><input type="text" name="sAlt2Observ" id="sAlt2Obser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Streaming App Android/iOS</label></div>
                    <div class="col-md-1"><input type="checkbox" name="sApp" id="sApp_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="sApp" id="sApp_no" value="ERROR!" class="ventana" data-item="item-sApp" title="Streaming App Android/iOS"></div>
                    <div class="col-md-3"><input type="text" name="sAppObserv" id="sAppObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Home Español</label></div>
                    <div class="col-md-1"><input type="checkbox" name="homeEspanol" id="homeEspanol_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="homeEspanol" id="homeEspanol_no" value="ERROR!" class="ventana" data-item="item-homeEspanol" title="Home Español"></div>
                    <div class="col-md-3"><input type="text" name="homeEspanolObserv" id="homeEspanolObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Secciones Español</label></div>
                    <div class="col-md-1"><input type="checkbox" name="seccionesEspanol" id="seccionesEspanol_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="seccionesEspanol" id="seccionesEspanol_no" value="ERROR!" class="ventana" data-item="item-seccionesEspanol" title="Secciones Español"></div>
                    <div class="col-md-3"><input type="text" name="seccionesEspanolObserv" id="seccionesEspanolObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Sitio Videos Español</label> </div>
                    <div class="col-md-1"><input type="checkbox" name="videosEspanol" id="videosEspanol_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="videosEspanol" id="videosEspanol_no" value="ERROR!" class="ventana" data-item="item-videosEspanol" title = "Sitio Videos Español"></div>
                    <div class="col-md-3"><input type="text" name="videosEspanolObserv" id="videosEspanolObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>AddThis notas Español</label></div>
                    <div class="col-md-1"><input type="checkbox" name="AddThisEspanol" id="AddThisEspanol_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="AddThisEspanol" id="AddThisEspanol_no" value="ERROR!" class="ventana" data-item="item-AddThisEspanol" title = "AddThis notas Español"></div>
                    <div class="col-md-3"><input type="text" name="AddThisEspanolObserv" id="AddThisEspanolObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Home Inglés</label></div>
                    <div class="col-md-1"><input type="checkbox" name="homeIngles" id="homeIngles_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="homeIngles" id="homeIngles_no" value="0" class="ventana" data-item="item-homeIngles" title="Home Inglés"></div>
                    <div class="col-md-3"><input type="text" name="homeInglesObserv" id="homeInglesObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Secciones Inglés</label></div>
                    <div class="col-md-1"><input type="checkbox" name="seccionesIngles" id="seccionesIngles_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="seccionesIngles" id="seccionesIngles_no" value="ERROR!" class="ventana" data-item="item-seccionesIngles" title="Secciones Inglés"></div>
                    <div class="col-md-3"><input type="text" name="seccionesInglesObserv" id="seccionesInglesObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>Sitio Videos Inglés</label></div>
                    <div class="col-md-1"><input type="checkbox" name="videosIngles" id="videosIngles_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="videosIngles" id="videosIngles_no" value="ERROR!" class="ventana" data-item="item-videosIngles" title="Sitio Videos Inglés"></div>
                    <div class="col-md-3"><input type="text" name="videosInglesObserv" id="videosInglesObser" class="hide"></div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3"><label>AddThis inglés</label></div>
                    <div class="col-md-1"><input type="checkbox" name="AddThisIngles" id="AddThisIngles_yes" value="OK"></div>
                    <div class="col-md-1"><input type="checkbox" name="AddThisIngles" id="AddThisIngles_no" value="ERROR!" class="ventana" data-item="item-AddThisIngles" tile="AddThis inglés"></div>
                    <div class="col-md-3"><input type="text" name="AddThisInglesObserv" id="AddThisInglesObser" class="hide"></div>
                </div>
            </div>
            <div><hr>
             <div class="row">
                <div class="col-md-1 col-md-offset-6"><input class="btn btn-default" type="submit" name="enviar" id="enviar"></div>
                <div class="col-md-3"><input type="reset" class="btn btn-default" name="borrar" id="borrar"></div>
            </div>
        </div>
    </form>
</div>
</div>
<div class="container panel panel-default">
  <div class="panel-body">
      <div class="row">
          <div class="col-md-3"><i><b>Enlaces de interes:</em></b></div>
      </div>
      <div class="row">
          <ol class="breadcrumb">
              <li><a href="http://www.telesurtv.net/"  target="_blank">teleSUR</a></li>
              <li><a href="http://www.telesurtv.net/english/index.html" target="_blank">teleSUR Inglés</a></li>
              <li><a href="http://www.telesurtv.net/seccion/programas/index.html" target="_blank">Señal Principal</a></li>
              <li><a href="http://telesur.movipbox.com" target="_blank">Señal Backup</a></li>
              <li><a href="http://mblivealterna.telesur.ultrabase.net/" target="_blank">Alterno 1</a></li>
              <li><a href="http://mbliveocasional.telesur.ultrabase.net/" target="_blank">Alterno 2</a></li>
              <li><a href="http://videos.telesurtv.net/" target="_blank">Videos Español</a></li>
              <li><a href="http://videos.telesurtv.net/en" target="_blank">Videos Inglés</a></li>
              <li><a href="http://aplicaciones.telesurtv.net/sait/web/usuario/login" target="_blank">Progis</a></li>
          </ol>
      </div>
  </div>
</div>
</html>
<div id="divObservacion" class="hide">
    <div id = "mensajeIncidencia" class="alert alert-info">
        <p>Describa la incidencia que esta presentado este Servicio.</p>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="space-6"></div>
        </div>
        <div class="col-md-12">
            <label for="descripcionInicidencia">Describa la incidencia que presento este servicio</label>
            <textarea class="span-12 form-control" id="descripcionInicidencia" rows="9" name="descripcionInicidencia" ></textarea>
        </div>              
    </div>
</div>
<!-- jQUERY -->
<script   src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.js"> </script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


<script type="text/javascript">
    $(document).ready(function () { 
        $('input:checkbox').on("change", function () {
            mostrarCaja();
        });
        $('.ventana').on("change", function () {
            var item = $(this).attr("data-item");
            $("#mensajeIncidencia").removeClass("alert alert-danger").addClass("alert alert-info");
            $("#mensajeIncidencia").html("Describa la incidencia que esta presentado este Servicio.");
            $("#descripcionInicidencia").val("");
//  mostrarCaja();
//console.log (item);
var dialog =  $("#divObservacion").removeClass('hide').dialog({
    modal: true,
    width: '500px',
    draggale:false,
    resizable: false,
    title: "Revisión Diaria",
    title_html: true,
    buttons: [{
        html: "<i class='fa fa-arrow-left bigger-110'></i>&nbsp; Cancelar",
        "class": "btn btn-default",
        "id": "botonCancelarObservacion",
        "click": function() {

            $(this).dialog("close");


        }
    },
    {
        html: "Aceptar &nbsp;<i class='fa fa-exclamation-triangle bigger-110'></i>",
        "class": "btn btn-default",
        "id": "botonAceptarObservacion",
        "click": function() {
            if ($("#descripcionInicidencia").val()==0){
                $("#mensajeIncidencia").addClass("alert alert-danger");
                $("#mensajeIncidencia").html("Debe indicar una observación");

            }
            else{
                actualizarTextArea(item);
                $(this).dialog("close");
            }   

        }
    }]
});//fin dialog
});

// MANEJO DEL FORMULARIO 

$("#formRevisionDiaria").on('submit', function(evt){
    evt.preventDefault();
    submitForm($(this));
}); 
});

    function mostrarCaja (){

        if( $("#boletinEsp_yes").prop('checked')==true){
            $("#bolEspObser").val("OK");
            $("#bolEspObser").addClass("hide"); 
            $("#boletinEsp_no").prop('checked', false);       
        }
        if ($("#boletinEsp_no").prop('checked')==true ){
           $("#boletinEsp_yes").prop('checked', false);  
           $("#bolEspObser").removeClass("hide");  

       } 

        if( $("#boletinIng_yes").prop('checked')==true){
            $("#bolIngObser").val("OK");
            $("#bolIngObser").addClass("hide");
            $("#boletinIng_no").prop('checked', false);        
        }

        if ($("#boletinIng_no").prop('checked')==true){
            $("#bolIngObser").removeClass("hide");  
            $("#boletinIng_yes").prop('checked', false);
        }

        if( $("#sp_yes").prop('checked')==true){
            $("#spObser").val("OK");
            $("#spObser").addClass("hide");
            $("#sp_no").prop('checked', false);        
        }

        if ($("#sp_no").prop('checked')==true){
            $("#spObser").removeClass("hide"); 
            $("#sp_yes").prop('checked', false);

        }

        if( $("#sb_yes").prop('checked')==true){
            $("#sbObser").val("OK");
            $("#sbObser").addClass("hide");
            $("#sb_no").prop('checked', false);        
        }

        if ($("#sb_no").prop('checked')==true){
            $("#sbObser").removeClass("hide"); 
            $("#sb_yes").prop('checked', false); 
        }

        if( $("#sAlt1_yes").prop('checked')==true){
            $("#sAlt1Obser").val("OK");
            $("#sAlt1Obser").addClass("hide");
            $("#sAlt1_no").prop('checked', false);     
        }

        if ($("#sAlt1_no").prop('checked')==true){
            $("#sAlt1Obser").removeClass("hide");
            $("#sAlt1_yes").prop('checked', false);   
        }

        if( $("#sAlt2_yes").prop('checked')==true){
            $("#sAlt2Obser").val("OK");
            $("#sAlt2Obser").addClass("hide"); 
            $("#sAlt2_no").prop('checked', false);    
        }

        if ($("#sAlt2_no").prop('checked')==true){
            $("#sAlt2Obser").removeClass("hide");
            $("#sAlt2_yes").prop('checked', false);   
        }


        if( $("#sApp_yes").prop('checked')==true){
            $("#sAppObser").val("OK");
            $("#sAppObser").addClass("hide");  
            $("#sApp_no").prop('checked', false);    
        }

        if ($("#sApp_no").prop('checked')==true){
            $("#sAppObser").removeClass("hide"); 
            $("#sApp_yes").prop('checked', false);   
        }

        if( $("#homeEspanol_yes").prop('checked')==true){
            $("#homeEspanolObser").val("OK");
            $("#homeEspanolObser").addClass("hide");
            $("#homeEspanol_no").prop('checked', false);       
        }

        if ($("#homeEspanol_no").prop('checked')==true){
            $("#homeEspanolObser").removeClass("hide");
            $("#homeEspanol_yes").prop('checked', false);     
        }

        if( $("#seccionesEspanol_yes").prop('checked')==true){
            $("#seccionesEspanolObser").val("OK");
            $("#seccionesEspanolObser").addClass("hide");   
            $("#seccionesEspanol_no").prop('checked', false);   
        }

        if ($("#seccionesEspanol_no").prop('checked')==true){
            $("#seccionesEspanolObser").removeClass("hide"); 
            $("#seccionesEspanol_yes").prop('checked', false);   
        }

        if( $("#videosEspanol_yes").prop('checked')==true){
            $("#videosEspanolObser").val("OK");
            $("#videosEspanolObser").addClass("hide");
            $("#videosEspanol_no").prop('checked', false);     
        }

        if ($("#videosEspanol_no").prop('checked')==true){
            $("#videosEspanolObser").removeClass("hide");   
            $("#videosEspanol_yes").prop('checked', false);
        }

        if( $("#AddThisEspanol_yes").prop('checked')==true){
            $("#AddThisEspanolObser").val("OK");
            $("#AddThisEspanolObser").addClass("hide"); 
            $("#AddThisEspanol_no").prop('checked', false);       
        }

        if ($("#AddThisEspanol_no").prop('checked')==true){
            $("#AddThisEspanolObser").removeClass("hide");  
            $("#AddThisEspanol_yes").prop('checked', false);
        }

        if( $("#homeIngles_yes").prop('checked')==true){
            $("#homeInglesObser").val("OK");
            $("#homeInglesObser").addClass("hide");
            $("#homeIngles_no").prop('checked', false);        
        }

        if ($("#homeIngles_no").prop('checked')==true){
            $("#homeInglesObser").removeClass("hide"); 
            $("#homeIngles_yes").prop('checked', false); 
        }

        if( $("#seccionesIngles_yes").prop('checked')==true){
            $("#seccionesInglesObser").val("OK");
            $("#seccionesInglesObser").addClass("hide");
            $("#seccionesIngles_no").prop('checked', false);       
        }

        if ($("#seccionesIngles_no").prop('checked')==true){
            $("#seccionesInglesObser").removeClass("hide"); 
            $("#seccionesIngles_yes").prop('checked', false);    
        }

        if( $("#videosIngles_yes").prop('checked')==true){
            $("#videosInglesObser").val("OK");
            $("#videosInglesObser").addClass("hide");  
            $("#videosIngles_no").prop('checked', false);    
        }

        if ($("#videosIngles_no").prop('checked')==true){
            $("#videosInglesObser").removeClass("hide"); 
            $("#videosIngles_yes").prop('checked', false);   
        }

        if( $("#AddThisIngles_yes").prop('checked')==true){
            $("#AddThisInglesObser").val("OK");
            $("#AddThisInglesObser").addClass("hide");
            $("#AddThisIngles_no").prop('checked', false);     
        }

        if ($("#AddThisIngles_no").prop('checked')==true){
            $("#AddThisInglesObser").removeClass("hide"); 
            $("#AddThisIngles_yes").prop('checked', false);  
        }

}// fin funcion mostrar caja

function submitForm(form){
    var mensaje ='';
    var errorObserv =0;

// Validaciones para verificar que al menos seleccione uno de los checkbox buttons



if( $("#boletinEsp_yes").prop('checked')==false && $("#boletinEsp_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong>Boletín Español</strong><br/>"; 
}
if ($("#boletinIng_yes").prop('checked')==false && $("#boletinIng_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> Boletín Inglés </strong><br/>"; 
}  
if ($("#sp_yes").prop('checked')==false && $("#sp_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong>Streaming Principal </strong><br/>";  
} 
if ($("#sb_yes").prop('checked')==false && $("#sb_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> Streaming Backup </strong><br/>";
}
if( $("#sAlt1_yes").prop('checked')==false && $("#sAlt1_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong>Streaming Alterno 1"; 
}
if( $("#sAlt2_yes").prop('checked')==false && $("#sAlt2_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong>Streaming Alterno 2 </strong><br/>"; 
}
if( $("#sApp_yes").prop('checked')==false && $("#sApp_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> Streaming App Android/iOS </strong><br/>"; 
}
if( $("#homeEspanol_yes").prop('checked')==false && $("#homeEspanol_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> Home Español </strong><br/>"; 
}
if( $("#seccionesEspanol_yes").prop('checked')==false && $("#seccionesEspanol_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> Secciones Español </strong><br/>"; 
}
if( $("#videosEspanol_yes").prop('checked')==false && $("#videosEspanol_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong>Site Videos Español</strong><br/>"; 
}
if( $("#AddThisEspanol_yes").prop('checked')==false && $("#AddThisEspanol_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> AddThis Notas español</strong><br/>"; 
}
if( $("#homeIngles_yes").prop('checked')==false && $("#homeIngles_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong>Home Inglés</strong><br/>"; 
}
if( $("#seccionesIngles_yes").prop('checked')==false && $("#seccionesIngles_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong>Secciones Inglés </strong><br/>"; 
}
if( $("#videosIngles_yes").prop('checked')==false && $("#videosIngles_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> Site Videos Inglés</strong><br/>"; 
}
if( $("#AddThisIngles_yes").prop('checked')==false && $("#AddThisIngles_no").prop('checked')==false) {
    mensaje = mensaje + "- Debe indicar el status del campo <strong> AddThis Notas Inglés</strong><br/>"; 
}


// Validaciones para verificar que indique la observación si  selecciono que existe un error en el servicio  

if( $("#boletinEsp_no").prop('checked')==true && $("#bolEspObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#boletinEsp_no").attr("title")+"</strong><br/>";  

}

if( $("#boletinIng_no").prop('checked')==true && $("#bolIngObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#boletinIng_no").attr("title")+"</strong><br/>";  

}

if( $("#sp_no").prop('checked')==true && $("#spObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#sp_no").attr("title")+"</strong><br/>";          
}

if( $("#sb_no").prop('checked')==true && $("#sbObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#sb_no").attr("title")+"</strong><br/>";          
}

if( $("#sAlt1_no").prop('checked')==true && $("#sAlt1Obser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#sAlt1_no").attr("title")+"</strong><br/>";          
}

if( $("#sAlt2_no").prop('checked')==true && $("#sAlt2Obser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#sAlt2_no").attr("title")+"</strong><br/>";          
}

if( $("#sApp_no").prop('checked')==true && $("#sAppObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#sApp_no").attr("title")+"</strong><br/>";          
}

if( $("#homeEspanol_no").prop('checked')==true && $("#homeEspanolObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#homeEspanol_no").attr("title")+"</strong><br/>";          
}

if( $("#seccionesEspanol_no").prop('checked')==true && $("#seccionesEspanolObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#seccionesEspanol_no").attr("title")+"</strong><br/>";          
}

if( $("#videosEspanol_no").prop('checked')==true && $("#videosEspanolObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#videosEspanol_no").attr("title")+"</strong><br/>";          
}

if( $("#AddThisEspanol_no").prop('checked')==true && $("#AddThisEspanolObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#AddThisEspanol_no").attr("title")+"</strong><br/>";          
}

if( $("#homeIngles_no").prop('checked')==true && $("#homeInglesObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#homeIngles_no").attr("title")+"</strong><br/>";          
}

if( $("#seccionesIngles_no").prop('checked')==true && $("#seccionesInglesObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#seccionesIngles_no").attr("title")+"</strong><br/>";          
}

if( $("#videosIngles_no").prop('checked')==true && $("#videosInglesObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#videosIngles_no").attr("title")+"</strong><br/>";          
}

if( $("#AddThisIngles_no").prop('checked')==true && $("#AddThisInglesObser").val()=="ERROR!" ) {
    mensaje = mensaje + "- Debe indicar la observación para el item <strong>"+ $("#AddThisIngles_no").attr("title")+"</strong><br/>";          
}


if (mensaje.length>0){
    console.log (mensaje);
    $("#mensajeError").html(mensaje);
    $("#mensajeError").fadeIn("slow");
    $("#mensajeError").fadeOut(6000);

}else {
    // realizo el envio por ajax          
    var data = form.serialize();
    console.log(data);
    $.ajax({
        type: "POST",
        dataType: "json",
        url: "index.jsp", 
        data: data,
        success: function(data) {
            if (data["success"]) {
                //$("#formRevisionDiaria")[0].reset();
                $("#mensaje").html("");
                $("#mensaje").show();
                // $('#mensajes').fadeOut(10000);
                $("#mensaje").html(data["message"]);
                window.scrollTo(1, 1);
            } else{
                $("#mensaje").fadeOut();
                $("#mensajeError").html("");
                $("#mensajeError").show();
            // $('#mensajeError').fadeOut(10000);
            $("#mensajeError").html(data["message"]);
            window.scrollTo(1, 1);
            }
    },
    error : function(xhr, status) {
        alert('Disculpe, existió un problema');
    },
    }); //fin $.ajax
    return false;        
}               
}//fin funcion submitForm()


function actualizarTextArea(item){

    switch (item) {
        case 'item-bde':
        $("#bolEspObser").val($("#descripcionInicidencia").val());
        break;
        case 'item-bdi':
        $("#bolIngObser").val($("#descripcionInicidencia").val());
        break;
        case 'item-sp':
        $("#spObser").val($("#descripcionInicidencia").val());
        break;
        case 'item-sb':
        $("#sbObser").val($("#descripcionInicidencia").val());
        break;
        case 'item-sAlt1':
        $("#sAlt1Obser").val($("#descripcionInicidencia").val());
        break;
        case 'item-sAlt2':
        $("#sAlt2Obser").val($("#descripcionInicidencia").val());
        break; 
        case 'item-sApp':
        $("#sAppObser").val($("#descripcionInicidencia").val());
        break;
        case 'item-homeEspanol':
        $("#homeEspanolObser").val($("#descripcionInicidencia").val());
        break; 
        case 'item-seccionesEspanol':
        $("#seccionesEspanolObser").val($("#descripcionInicidencia").val());
        break; 
        case 'item-videosEspanol':
        $("#videosEspanolObser").val($("#descripcionInicidencia").val());
        break; 
        case 'item-AddThisEspanol':
        $("#AddThisEspanolObser").val($("#descripcionInicidencia").val());
        break;
        case 'item-homeIngles':
        $("#homeInglesObser").removeClass("hide");              
        $("#homeInglesObser").val($("#descripcionInicidencia").val());
        break; 
        case 'item-seccionesIngles':
        $("#seccionesInglesObser").val($("#descripcionInicidencia").val());
        break; 
        case 'item-videosIngles':
        $("#videosInglesObser").val($("#descripcionInicidencia").val());
        break; 
        case 'item-AddThisIngles':
        $("#AddThisInglesObser").val($("#descripcionInicidencia").val());
        break; 

    }
}

</script>