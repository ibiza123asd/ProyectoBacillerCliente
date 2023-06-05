<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="folder/estile2.css" rel="stylesheet" type="text/css"/>
        <link href="folder/footer.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>

    <%
        session.setAttribute("login", false);
    %>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title text-center">Formulario Recuperar Contraseña</h5>
                            <form action="ControlCitas?accion=Recuperar" method="POST">
                                <div class="mb-3">
                                    <label for="email" class="form-label">Ingresar  Correo</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="mb-3">
                                    <label for="dni" class="form-label">Ingresar  DNI</label>
                                    <input type="text" class="form-control" id="dni" name="dni" required>
                                </div>
                                <div class="d-grid gap-2">
                                    <button type="submit" class="btn btn-primary" name="boton" value="btn5">Recuperar</button>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>
