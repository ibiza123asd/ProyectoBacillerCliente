<%-- 
    Document   : newjsp
    Created on : 05/05/2023, 03:04:22 PM
    Author     : Brandon
--%>

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
        session.setAttribute("validarSIS", true);
        session.setAttribute("login", true);
        boolean ocultarbtn = false;
    %>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h1 class="text-center mb-5">Validar Sis(Seguro Integral de Salud)</h1>
                    <form action="ControlCitas?accion=validarsis" method="POST">
                        <div class="form-group">
                            <label for="texto">Ingresar DNI:</label>
                            <input type="text" class="form-control" id="texto" name="documento">
                        </div>
                        <button type="submit" class="btn btn-primary mt-2" name="boton" value="btn1">Validar</button>
                    </form>
                    <c:if test="${bandera==0}">
                        <p style="text-align: center;">${Resultado}</p>
                        <a href="FormularioPaciente.jsp?dni=${DNI}&bandera=0" class="btn btn-primary" role="button">
                            <i class="bi bi-person-fill"></i>Registrarse como Externo
                        </a>
                    </c:if>
                    <c:if test="${bandera==1}">
                        <p style="text-align: center;">${Resultado}</p>
                    </c:if>
                    <c:if test="${bandera ==2}">
                        <div class="d-grid gap-2 mt-2">
                            <a href="FormularioPaciente.jsp?dni=${DNI}&bandera=1" class="btn btn-primary" role="button">
                                <i class="bi bi-person-fill"></i>${Resultado}
                            </a>
                        </div>
                    </c:if>

                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>

    </body>

</html>
