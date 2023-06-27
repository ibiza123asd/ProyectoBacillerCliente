<%@page import="Services.CitaDTO"%>
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
    List<CitaDTO> listaCitas = (List) session.getAttribute("listaCitas");
%>

<head>
    <meta charset="UTF-8">
    <title>Perfil de usuario</title>
</head>
<body>

    <jsp:include page="header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">PERFIL DE USUARIO</h1>                       
        </div>

        <div class="row">

            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
                <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Datos Personales</h6> 

                    </div>
                    <!-- Card Body -->
                    <div class="card-body">

                        <form class="user">

                            <div class="form-group">
                                <label class="form-label">DNI</label>
                                <input type="text" class="form-control form-control-user" id="dni" name="dni" value=${paciente.dni} readonly>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Nombres</label>
                                <input type="text" class="form-control form-control-user" id="nombre" name="nombre" value=${paciente.nombre} readonly>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label class="form-label">Apellido Paterno</label>
                                    <input type="text" class="form-control form-control-user" id="apellido_paterno" name="apellido_paterno" value=${paciente.apellidoPaterno} readonly>
                                </div>
                                <div class="col-sm-6">
                                    <label class="form-label">Apellido Materno</label>
                                    <input type="text" class="form-control form-control-user" id="apellido_materno" name="apellido_materno" value=${paciente.apellidoMaterno} readonly>
                                </div>
                            </div>										

                            <div class="form-group">
                                <label class="form-label">Edad</label>
                                <input type="number" class="form-control form-control-user" id="edad" name="edad" value=${paciente.edad} readonly>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Correo</label>
                                <input type="text" class="form-control form-control-user" id="correo" name="correo" value=${paciente.correo} readonly>
                            </div>

                        </form>

                    </div>
                </div>
            </div>

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
                <div class="card shadow mb-4">
                    <!-- Card Header - Dropdown -->
                    <div
                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Historial de Citas</h6>  

                        <a href="ControlCitas?accion=formularioCita&dni=${paciente.dni}" class="btn btn-primary btn-icon-split">
                            <span class="icon text-white-50">
                                <i class="fas fa-flag"></i>
                            </span>
                            <span class="text">Nueva Cita</span>
                        </a>
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">

                        <div class="row">
                            <% for (CitaDTO cita : listaCitas) {
                                   // Object[] citaArray = cita.getItem().toArray();
                                    Integer idCita = cita.getIdCita();
                                    String medico = (String) cita.getNombreMedico();
                                    String especialidad = (String) cita.getNombreEspecialidad();
                                    /*XMLGregorianCalendar xmLCalendar = (XMLGregorianCalendar) cita.;
                                    LocalDateTime localDateTime = LocalDateTime.of(xmLCalendar.getYear(), xmLCalendar.getMonth(),
                                            xmLCalendar.getDay(), xmLCalendar.getHour(), xmLCalendar.getMinute(), xmLCalendar.getSecond());
                                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");*/
                                    String dateTimeString = cita.getFechaHora();
                                    Integer orden = cita.getOrden();
                                    String apeMaternoMedic= cita.getApeMatMedico();
                                    String apePaterNoMedico = cita.getApePatMedico();
                                    

                            %>

                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-s font-weight-bold text-primary text-uppercase mb-1">Id Cita: <%= idCita%></div>
                                                <div>Médico <%= medico +' ' +apePaterNoMedico+' '+apeMaternoMedic%></div>
                                                <div>Especialidad <%= especialidad%></div>
                                                <div>Numero de Orden <%= orden%></div>
                                                <div>Fecha <%= dateTimeString%></div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
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
    <!-- /.container-fluid -->

    <jsp:include page="footer.jsp" />  


</body>



