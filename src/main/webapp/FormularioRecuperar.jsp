<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    String dni = request.getParameter("dni");
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
                            <h4>Recuperando Contraseña</h4>
                        </div>
                        <div class="card-body">
                            <form action="ControlCitas?accion=updatePass&documento=<%=dni%>" method="post">
                                <div class="mb-3">
                                    <label for="password" class="form-label">Ingresar Nueva Contraseña</label>
                                    <input type="password" class="form-control" id="password" name="contrasena" placeholder="Ingresa tu contraseña">
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Confirmar Contraseña</label>
                                    <input type="password" class="form-control" id="password" name="contrasena2" placeholder="Confirma tu contraseña">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary" name="boton"value="btn3">Actualizar Contraseña</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <c:if test="${Llave2 !=null}">
        <p style="text-align: center;">${Llave2}</p>
    </c:if>
    <jsp:include page="footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.min.js"></script>
    <script src="funciones.js" type="text/javascript"></script>
</body>
</html>
