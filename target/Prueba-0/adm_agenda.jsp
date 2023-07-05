
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="javax.xml.datatype.XMLGregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@page import="Services.AnyTypeArray"%>
<%@page import="java.util.List"%>
<%@page import="Services.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <script src="funciones.js" type="text/javascript"></script>
    <title>Agenda</title> 
</head>
<%
    ServiciosCliente sc = new ServiciosCliente();
    List<AnyTypeArray> medicos = (List) sc.listarMedicosP();
    List<AnyTypeArray> agendas = (List) sc.listarAllAgendas();
    List<Especialidad> especialidades = sc.listarEspecialidades();
    request.setAttribute("especialidades", especialidades);
%>
<body>

    <jsp:include page="adm_header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">       

        <div class="card shadow mb-4">

            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">LISTA DE AGENDA</h6>

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
                                <th>MEDICO</th>  
                                <th>TURNO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (AnyTypeArray agenda : agendas) { %>
                            <%
                                Object[] agendaArray = agenda.getItem().toArray();
                                Integer idAgenda = (Integer) agendaArray[1];
                                String nombremedico = (String) agendaArray[2];
                                String apellidoMat = (String) agendaArray[3];
                                String apellidoPat = (String) agendaArray[4];
                                String turno = (String) agendaArray[5];

                                XMLGregorianCalendar xmLCalendar = (XMLGregorianCalendar) agendaArray[0];
                                LocalDateTime localDateTime = LocalDateTime.of(xmLCalendar.getYear(), xmLCalendar.getMonth(),
                                        xmLCalendar.getDay(), xmLCalendar.getHour(), xmLCalendar.getMinute(), xmLCalendar.getSecond());
                                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
                                String dateTimeString = localDateTime.format(formatter);
                            %>
                            <tr>
                                <td><%=idAgenda%></td>
                                <td><%=dateTimeString%></td>
                                <td><%=nombremedico + " " + apellidoPat + " " + apellidoMat%></td>
                                <td><%=turno%></td>
                            </tr> 
                            <%}%>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>FECHA Y HORA</th>  
                                <th>MEDICO</th>  
                                <th>TURNO</th>                                           
                            </tr>
                        </tfoot>
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
                    <h5 class="modal-title" id="exampleModalLabel">Datos de la Agenda</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="user" method="post" action="ControlCitas?accion=saveAgenda">

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
                            <select class="form-select form-control-user" id="medicos" name="idMedico" disabled onchange="actualizarHoras()" style="width: 100%; padding: 0.9%;" >
                                <option value="">Seleccione una especialidad primero</option>
                            </select>
                        </div>

                        <%--<div class="form-group">
                            <label for="agenda" class="form-label">MEDICO</label>
                            <select class="custom-select custom-select-sm form-control form-control-sm" id="idMedAgenda" name="idMedico" style="width: 100%; padding: 0.9%;" >                                                                     
                                <% for (AnyTypeArray medico : medicos) %><%{%>
                                <%
                                    Object[] medicoArray = medico.getItem().toArray();
                                    Integer idMedico = (Integer) medicoArray[0];
                                    String nombremedico = (String) medicoArray[1];
                                    String apellidoMat = (String) medicoArray[2];
                                    String apellidoPat = (String) medicoArray[3];
                                %>
                                <option value="<%=idMedico%>"><%=nombremedico + " " + apellidoPat + " " + apellidoMat%> </option>
                                <%}%>    
                            </select>
                        </div>--%>

                        <div class="form-group">
                            <label class="form-label">TURNO</label>
                            <select class="custom-select custom-select-sm form-control form-control-sm" id="idMedAgenda" name="nameAgenda" style="width: 100%; padding: 0.9%;" >
                                <option value="">Seleccione un Turno</option>
                                <option value="Ma&ntilde;ana">Mañana</option>
                                <option value="Tarde">Tarde</option>         
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label">FECHA Y HORA</label>                                
                            <input type="datetime-local" class="form-control form-control-sm" id="fhAgenda" name="fhAgenda" required >
                        </div>
                        <div class="modal-footer"> 
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-primary" name="boton" value="btnInsAgenda">Guardar</button> 
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div>


</body>



