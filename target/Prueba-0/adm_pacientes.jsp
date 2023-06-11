
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>Pacientes</title> 
</head>
<body>

    <jsp:include page="adm_header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">       

        <div class="card shadow mb-4">

            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">LISTA DE PACIENTES</h6>

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
                                <th>DNI</th>
                                <th>NOMBRES</th>
                                <th>APE PATERNO</th>  
                                <th>APE MATERNO</th>  
                                <th>EDAD</th>  
                                <th>SEGURO SIS</th>
                                <th>CORREO</th>
                                <th>CONTRASEÑA</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>DNI</th>
                                <th>NOMBRES</th>
                                <th>APE PATERNO</th>  
                                <th>APE MATERNO</th>  
                                <th>EDAD</th>  
                                <th>SEGURO SIS</th>
                                <th>CORREO</th>
                                <th>CONTRASEÑA</th>                                           
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>40429532</td>
                                <td>Kane Valentine</td>
                                <td>Silas</td>
                                <td>Erin</td>
                                <td>52</td>
                                <td>SI</td>
                                <td>Kane@hotmail.com</td>
                                <td>*****</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>62377619</td>
                                <td>Jared Booker</td>
                                <td>Zachary</td>
                                <td>Carol</td>
                                <td>30</td>
                                <td>SI</td>
                                <td>Jared@hotmail.com</td>
                                <td>*****</td>
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

                    <form class="user">
                        
                        <div class="form-group">
                            <label class="form-label">DNI</label>
                            <input type="number" class="form-control form-control-sm" id="telfMedico" name="dniPacie">
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <label class="form-label">BUSCAR:</label>
                                <input type="text" class="form-control form-control-sm" id="apePatMedico" name="apePacie">
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label">NOM APE PACIENTE</label>
                                <input type="text" class="form-control form-control-sm" id="apeMatMedico" name="apeMatPacie">
                            </div>
                        </div>	                            

                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <label class="form-label">BUSCAR:</label>
                                <input type="text" class="form-control form-control-sm" id="apePatMedico" name="apePacie">
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label">NOM APE MEDICO</label>
                                <input type="text" class="form-control form-control-sm" id="apeMatMedico" name="apeMatPacie">
                            </div>
                        </div>										

                        <div class="form-group">
                            <label class="form-label">ORDEN</label>
                            <input type="number" class="form-control form-control-sm" id="telfMedico" name="edadPacie">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">COSTO</label>
                            <input type="text" class="form-control form-control-sm" id="telfMedico" name="sisPacie">
                        </div>                       
                        

                    </form>

                </div>
                <div class="modal-footer"> 
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>                    
                    <button type="submit" class="btn btn-primary" name="boton" value="btnInsMedico">Guardar</button> 
                </div>
            </div>
        </div>
    </div>


</body>



