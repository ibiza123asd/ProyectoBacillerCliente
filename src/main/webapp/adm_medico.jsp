
<%@page import="Services.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Medicos</title> 
</head>
<body>

    <jsp:include page="adm_header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">       

        <div class="card shadow mb-4">

            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">LISTA DE MEDICOS</h6>

                <a class="btn btn-success btn-icon-split" href="ControlCitas?accion=listarEspecialidades" data-toggle="modal" data-target="#xModal_NewMedico">
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
                                <th>NOMBRES</th>
                                <th>APE PATERNO</th>  
                                <th>APE MATERNO</th>  
                                <th>TELEFONO</th>  
                                <th>ESPECIALIDAD</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRES</th>
                                <th>APE PATERNO</th>  
                                <th>APE MATERNO</th>  
                                <th>TELEFONO</th>  
                                <th>ESPECIALIDAD</th>                                            
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>2</td>
                                <td>Fritz Frost</td>
                                <td>Hicks</td>
                                <td>Tate</td>
                                <td>(255) 226-5462</td>
                                <td>Reumatología</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Keaton Perez</td>
                                <td>Downs</td>
                                <td>Geoffrey</td>
                                <td>(157) 834-9508</td>
                                <td>Obstetricia</td>
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
                    <h5 class="modal-title" id="exampleModalLabel">Datos del Medico</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="user" method="Post" action="ControlCitas?accion=saveMedico">

                        <div class="form-group">
                            <label class="form-label">NOMBRES</label>                                
                            <input type="text" class="form-control form-control-sm" id="nomMedico" name="nomMedico" required>
                        </div>                            

                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <label class="form-label">APELLIDO PATERNO</label>
                                <input type="text" class="form-control form-control-sm" id="apePatMedico" name="apePatMedico">
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label">APELLIDO MATERNO</label>
                                <input type="text" class="form-control form-control-sm" id="apeMatMedico" name="apeMatMedico">
                            </div>
                        </div>										

                        <div class="form-group">
                            <label class="form-label">TELEFONO</label>
                            <input type="number" class="form-control form-control-sm" id="telfMedico" name="telfMedico">
                        </div>

                        <div class="form-group">
                            <label for="agenda" class="form-label">ESPECIALIDAD:</label>
                            <select class="custom-select custom-select-sm form-control form-control-sm" id="idEspMedico" name="idEspMedico" style="width: 100%; padding: 0.9%;" >
                                <option value="">Seleccione una Especialidad</option>
                                <c:forEach var="especialidad" items="${especialidades}">
                                    <option value="${especialidad.idEspecialidad}">${especialidad.nombreEspecialidad}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="modal-footer"> 
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>                    
                            <button type="submit" class="btn btn-primary" name="accion" value="saveMedico">Guardar</button> 
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div>


</body>



