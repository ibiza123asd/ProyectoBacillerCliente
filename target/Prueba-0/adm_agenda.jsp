
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Agenda</title> 
</head>
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
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>FECHA Y HORA</th>  
                                <th>MEDICO</th>  
                                <th>TURNO</th>                                           
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>2</td>
                                <td>2023-05-28 08:30:00.000</td>
                                <td>Fritz Frost Hicks</td>
                                <td>Mañana</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>2023-05-28 09:00:00.000</td>
                                <td>Fritz Frost Hicks</td>
                                <td>Mañana</td>
                            </tr> 
                            <tr>
                                <td>9</td>
                                <td>2023-05-28 12:00:00.000</td>
                                <td>Allen Tucker Rice</td>
                                <td>Tarde</td>
                            </tr> 
                            <tr>
                                <td>10</td>
                                <td>2023-05-28 12:30:00.000</td>
                                <td>Knox Mullins Foster</td>
                                <td>Tarde</td>
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
                    <h5 class="modal-title" id="exampleModalLabel">Datos de la Agenda</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="user">

                        <div class="form-group">
                            <label class="form-label">FECHA Y HORA</label>                                
                            <input type="text" class="form-control form-control-sm" id="fhAgenda" name="fhAgenda" required>
                        </div>                            

                        <div class="form-group">
                            <label for="agenda" class="form-label">MEDICO</label>
                            <select class="custom-select custom-select-sm form-control form-control-sm" id="idMedAgenda" name="idMedAgenda" style="width: 100%; padding: 0.9%;" >
                                <option value="">Seleccione una Medico</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="form-label">TURNO</label>
                            <input type="text" class="form-control form-control-sm" id="turnoAgenda" name="turnoAgenda">
                        </div>

                    </form>

                </div>
                <div class="modal-footer"> 
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary" name="boton" value="btnInsAgenda">Guardar</button> 
                </div>
            </div>
        </div>
    </div>


</body>



