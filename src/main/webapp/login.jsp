<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Perfil de usuario</title>
</head>
 <%
        session.setAttribute("login", false);
    %>
<body>

     <jsp:include page="header.jsp" />

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image">
                                <img src="imagenes/imagen2.jpg" class="d-block img-fluid" >
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">INICIAR SESIÓN</h1>
                                    </div>
                                     <form action="ControlCitas?accion=login" method="POST">
                                        <div class="form-group">
                                            <label for="dni" class="form-label">DNI</label>
                                            <input type="text" class="form-control form-control-user" id="dni" name="dni" placeholder="Ingresa tu DNI" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="form-label">Contraseña</label>
                                            <input type="password" class="form-control form-control-user" id="password" name="contrasena" placeholder="Ingresa tu contraseña">
                                        </div>
                                        <div class="form-group" style="text-align: center;">
                                            <button type="submit" class="btn btn-primary" name="boton" value="btn5">Ingresar</button> 
                                        </div>                                                                              
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="RecuperarPass.jsp">Olvide Mi Contraseña?</a>
                                    </div>                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

         <c:if test="${Resultado !=null}">
            <p style="text-align: center;">${Resultado}</p>
        </c:if>

    </div>
    <!-- /.container-fluid -->

    <jsp:include page="footer.jsp" />  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>

</body>



