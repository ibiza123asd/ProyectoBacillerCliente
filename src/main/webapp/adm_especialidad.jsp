
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Especialidades</title> 
</head>
<body>

    <jsp:include page="adm_header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">       

        <div class="card shadow mb-4">

            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">LISTA DE ESPECIALIDADES</h6>

                <a class="btn btn-success btn-icon-split" href="#" data-toggle="modal" data-target="#xModal_NewEspcialidad">
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
                                <th>NOMBRE</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRE</th>                                            
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Medicina General</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Psicología</td>
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
    <div class="modal fade" id="xModal_NewEspcialidad" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Detalle de la Especialidad</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="user">

                        <div class="form-group">
                            <label class="form-label">Nombre:</label>                                
                            <input type="text" class="form-control form-control-sm" style="font-size: 16px;" id="nomEspecialidad" name="nomEspecialidad" required>
                        </div>

                    </form>

                </div>
                <div class="modal-footer"> 
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-primary" name="boton" value="btnInsEspec">Guardar</button>
                </div>
            </div>
        </div>
    </div>


</body>



