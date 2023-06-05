
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="javax.xml.datatype.XMLGregorianCalendar"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="Services.AnyTypeArray"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Services.Cita"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Services.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%
    List<AnyTypeArray> listaCitas = (List) session.getAttribute("listaCitas");
%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Perfil de usuario</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>     
        <jsp:include page="header.jsp" />
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class ="row">
                        <div class="col-md-6">
                            <form action="actualizar_perfil.jsp" method="post">
                                <div class="text-center">
                                    <img src="imagenes/login.jpg" alt="Icono persona" width="80" height="80" />
                                    <h2>Información personal</h2>
                                </div>
                                <div class="mb-3">
                                    <label for="dni" class="form-label">DNI</label>
                                    <input type="text" class="form-control" id="dni" name="dni" value=${paciente.dni} readonly>
                                </div>
                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" value=${paciente.nombre} readonly>
                                </div>
                                <div class="mb-3">
                                    <label for="apellido_paterno" class="form-label">Apellido paterno</label>
                                    <input type="text" class="form-control" id="apellido_paterno" name="apellido_paterno" value=${paciente.apellidoPaterno} readonly>
                                </div>
                                <div class="mb-3">
                                    <label for="apellido_materno" class="form-label">Apellido materno</label>
                                    <input type="text" class="form-control" id="apellido_materno" name="apellido_materno" value=${paciente.apellidoMaterno} readonly>
                                </div>
                                <div class="mb-3">
                                    <label for="edad" class="form-label">Edad</label>
                                    <input type="number" class="form-control" id="edad" name="edad" value=${paciente.edad} readonly>
                                </div>
                                <div class="mb-3">
                                    <label for="correo" class="form-label">Correo</label>
                                    <input type="text" class="form-control" id="correo" name="correo" value=${paciente.correo} readonly>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <% for (AnyTypeArray cita : listaCitas) {
                                        Object[] citaArray = cita.getItem().toArray();
                                        Integer idCita = (Integer) citaArray[0];
                                        String medico = (String) citaArray[2];
                                        String especialidad = (String) citaArray[3];
                                        XMLGregorianCalendar xmLCalendar = (XMLGregorianCalendar) citaArray[4];
                                        LocalDateTime localDateTime = LocalDateTime.of(xmLCalendar.getYear(), xmLCalendar.getMonth(),
                                                xmLCalendar.getDay(), xmLCalendar.getHour(), xmLCalendar.getMinute(), xmLCalendar.getSecond());
                                        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
                                        String dateTimeString = localDateTime.format(formatter);

                                %>
                                <div class="col-md-12 mb-3 ">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title"><%= idCita%></h5>
                                            <p class="card-text"><%= medico%></p>
                                            <p class="card-text"><%= especialidad%></p>
                                            <p class="card-text"><%= dateTimeString%></p>
                                        </div>
                                    </div>                     
                                </div>
                                <% }%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
