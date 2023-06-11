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
    <meta charset="UTF-8">
    <script src="funciones.js" type="text/javascript"></script>
    <title>Citas</title> 
</head>
<body>

    <jsp:include page="adm_header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">       

        <div class="card shadow mb-4">

            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">LISTA DE CITAS</h6>

                <a class="btn btn-success btn-icon-split" href="#" data-toggle="modal" data-target="#xModal_NewMedico">
                    <span class="icon text-white-50">
                        <i class="fas fa-check"></i>
                    </span>
                    <span class="text">NUEVO</span>
                </a>
            </div>

            <div class="card-body">
                <div class="table-responsive">

                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>FECHA Y HORA</th> 
                                <th>PACIENTE</th>  
                                <th>ESPECIALIDAD</th> 
                                <th>MEDICO</th>  
                                <th>ORDEN</th>
                                <th>COSTO</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>FECHA Y HORA</th> 
                                <th>PACIENTE</th>  
                                <th>ESPECIALIDAD</th> 
                                <th>MEDICO</th>  
                                <th>ORDEN</th>
                                <th>COSTO</th>                                         
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>2023-05-28 08:30:00.000</td>
                                <td>Kane Valentine Silas</td>
                                <td>Reumatología</td>
                                <td>Fritz Frost Hicks</td>
                                <td>1</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>2023-05-28 09:00:00.000</td>
                                <td>Kane Valentine Silas</td>
                                <td>Obstetricia</td>
                                <td>Keaton Perez Downs</td>
                                <td>1</td>
                                <td>0</td>
                            </tr> 
                            <tr>
                                <td>3</td>
                                <td>2023-05-28 12:30:00.000</td>
                                <td>Antonella Del Carpio</td>
                                <td>Medicina General</td>
                                <td>Allen Tucker Rice</td>
                                <td>1</td>
                                <td>15.99</td>
                            </tr>                                                        
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

    <jsp:include page="adm_footer.jsp" />  

    <!-- Logout Modal-->
    <div class="modal fade" id="xModal_NewMedico" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Datos de la Cita</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="user"  method="post">

                        <div class="form-group">
                            <label class="form-label">DNI:</label>
                            <input type="text" name="texto" class="form-control form-control-sm" id="texto">
                        </div>

                        <div class="form-group">
                            <label for="especialidades" class="form-label">Especialidad:</label>
                            <select class="custom-select custom-select-sm form-control form-control-sm" id="especialidades" name="especialidad" onchange="actualizarMedicos()" style="width: 100%; padding: 0.9%;" >
                                <option value="">Seleccione una especialidad</option>
                                <c:forEach var="especialidad" items="${especialidades}">
                                    <option value="${especialidad.idEspecialidad}">${especialidad.nombreEspecialidad}</option>
                                </c:forEach>
                            </select>
                        </div>										

                        <div class="form-group">
                            <label for="medicos" class="form-label">Médico:</label>
                            <select class="custom-select custom-select-sm form-control form-control-sm" id="medicos" name="medicos" disabled onchange="actualizarHoras()" style="width: 100%; padding: 0.9%;" >
                                <option value="">Seleccione una especialidad primero</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="agenda" class="form-label">Agenda:</label>
                            <select class="custom-select custom-select-sm form-control form-control-sm" id="agenda" name="agenda" disabled style="width: 100%; padding: 0.9%;" >
                                <option value="">Seleccione una Medico</option>
                            </select>
                        </div>

                    </form>

                </div>
                <div class="modal-footer"> 
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    <button class="btn btn-success" type="submit" name="boton" value="btn2">Guardar</button>
                </div>
            </div>
        </div>
    </div>


</body>



