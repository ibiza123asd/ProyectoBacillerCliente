<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    String dni = request.getParameter("dni");
%>
<head>
    <meta charset="UTF-8">
    <title>RECUPERAR CONTRASEÑA</title>
    <script src="funciones.js" type="text/javascript"></script>
</head>
<body>

    <jsp:include page="main.jsp" />

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
                                        <h1 class="h4 text-gray-900 mb-4">RECUPERAR CONTRASEÑA</h1>
                                    </div>
                                    <form action="ControlCitas?accion=updatePass&documento=<%=dni%>" method="post">
                                        <div class="form-group">
                                            <label for="dni" class="form-label">Ingresar Nueva Contraseña</label>
                                            <input type="password" class="form-control form-control-user" id="password" name="contrasena" placeholder="Ingresa tu contraseña">                                            
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="form-label">Confirmar Contraseña</label>
                                            <input type="password" class="form-control form-control-user" id="password" name="contrasena2" placeholder="Confirma tu contraseña">
                                        </div>
                                        <div class="form-group" style="text-align: center;">
                                            <button type="submit" class="btn btn-primary" name="boton"value="btn3">Actualizar Contraseña</button>
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

        <c:if test="${Llave2 !=null}"> 
            <div class="alert alert-info alert-dismissible fade show" role="alert" style="text-align: center;">
                ${Llave2}                              
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>

    </div>
    <!-- /.container-fluid -->

    <jsp:include page="footer.jsp" />  


</body>



