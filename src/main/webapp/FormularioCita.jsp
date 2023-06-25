<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="javax.xml.datatype.XMLGregorianCalendar"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="Services.AnyTypeArray"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="funciones.js" type="text/javascript"></script>
    <title>Generar Cita</title>
</head>
<body>

    <jsp:include page="header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <div class="row">

            <!-- Pie Chart -->
            <div class="col-xl-12 col-lg-11">
                <div class="card shadow mb-12">
                    <!-- Card Header - Dropdown -->
                    <div
                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">GENERAR CITA</h6> 
                    </div>
                    <!-- Card Body -->
                    <div class="card-body">

                        <form class="user" action="ControlCitas?accion=RegistrarCita&documento=${DNI}" method="post">
                            
                            <div class="form-group">
                                <label class="form-label">Documento Nacional de Identidad:</label>
                                <input type="text" name="texto" class="form-control form-control-user" id="texto" value="${DNI}" readonly>
                            </div>

                            <div class="form-group">
                                <label for="especialidades" class="form-label">Especialidades:</label>
                                <select class="form-select form-control-user" id="especialidades" name="especialidad" onchange="actualizarMedicos()" style="width: 100%; padding: 0.9%;" >
                                    <option value="">Seleccione una especialidad</option>
                                    <c:forEach var="especialidad" items="${especialidades}">
                                        <option value="${especialidad.idEspecialidad}">${especialidad.nombreEspecialidad}</option>
                                    </c:forEach>
                                </select>
                            </div>										

                            <div class="form-group">
                                <label for="medicos" class="form-label">Médicos:</label>
                                <select class="form-select form-control-user" id="medicos" name="medicos" disabled onchange="actualizarHoras()" style="width: 100%; padding: 0.9%;" >
                                    <option value="">Seleccione una especialidad primero</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="agenda" class="form-label">Agenda:</label>
                                <select class="form-select form-control-user" id="agenda" name="agenda" disabled style="width: 100%; padding: 0.9%;" >
                                    <option value="">Seleccione una Medico</option>
                                </select>
                            </div>
                            
                            <div class="form-group" style="text-align: center;">
                                <button class="btn btn-success" type="submit" name="boton" value="btn2">Registrar Cita</button>
                            </div>

                        </form>
                                
                    </div>
                </div>
            </div>


        </div>

    </div>
                                <c:if test="${error!=null}">
                                    <p>${error}</p>
                                </c:if>
    <!-- /.container-fluid -->

    <jsp:include page="footer.jsp" />  


</body>



