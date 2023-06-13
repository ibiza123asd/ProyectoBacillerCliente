
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<%
    String dni = request.getParameter("dni");
    String bandera = request.getParameter("bandera");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css">
        <script src="funciones.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-3 mb-2">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">                            
                            <h4 class="m-0 font-weight-bold text-primary" style="text-align: center;">Formulario de Registro</h6> 
                        </div>
                        <div class="card-body">
                            <form action="ControlCitas?accion=registrarUsuario&documentor=<%=dni%>&bandera=<%=bandera%>" method="post">
                                <div class="mb-3">
                                    <label for="nombres" class="form-label">Nombres</label>
                                    <input type="text" name="nombres" id="nombres" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="apellido_paterno" class="form-label">Apellido Paterno</label>
                                    <input type="text" name="apellido_paterno" id="apellido_paterno" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="apellido_materno" class="form-label">Apellido Materno</label>
                                    <input type="text" name="apellido_materno" id="apellido_materno" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="edad" class="form-label">Edad</label>
                                    <input type="number" name="edad" id="edad" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="documento" class="form-label">Documento</label>
                                    <input type="text" name="documento" id="documento" class="form-control" value="<%=dni%>" disabled>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo</label>
                                    <input type="email" class="form-control" id="password" name="email" placeholder="Ingresa un correo">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Contraseña</label>
                                    <input type="password" class="form-control" id="password" name="contrasena" placeholder="Ingresa tu contraseña">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary" name="boton"value="btn3">Registrar Paciente</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.min.js"></script>
        <script src="funciones.js" type="text/javascript"></script>
    </body>
</html>
