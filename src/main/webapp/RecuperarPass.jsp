<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title>RECUPERAR CONTRASEÑA</title>
    <script src="funciones.js" type="text/javascript"></script>
</head>
<%
    session.setAttribute("login", false);
%>
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
                                        <h1 class="h4 text-gray-900 mb-4">FORMULARIO RECUPERAR CONTRASEÑA</h1>
                                    </div>
                                    <form action="ControlCitas?accion=Recuperar" method="POST">
                                        <div class="form-group">
                                            <label for="email" class="form-label">Ingresar Correo</label>
                                            <input type="email" class="form-control form-control-user" id="email" name="email" required> 
                                        </div>
                                        <div class="form-group">
                                            <label for="dni" class="form-label">Ingresar DNI</label>
                                            <input type="text" class="form-control" id="dni" name="dni" required>
                                        </div>
                                        <div class="form-group" style="text-align: center;">
                                            <button type="submit" class="btn btn-primary" name="boton" value="btn5">Recuperar</button>
                                        </div>                                                                              
                                    </form>

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



