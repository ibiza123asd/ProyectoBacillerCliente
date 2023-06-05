
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
        <script src="funciones.js" type="text/javascript"></script>
        <link href="folder/footer.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <%
    %>
    <body>     
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <h1 class="text-center mb-4">Registrar Cita</h1>
            <form action="ControlCitas?accion=RegistrarCita&documento=${DNI}" method="post">
                <div class="mb-3">
                    <label for="texto" class="form-label">Documento Nacional de Identidad:</label>
                    <input type="text" name="texto"class="form-control" id="texto" value="${DNI}" readonly>
                </div>
                <div class="mb-3">
                    <label for="especialidades" class="form-label">Especialidades:</label>
                    <select class="form-select" id="especialidades" name="especialidad" onchange="actualizarMedicos()">
                        <option value="">Seleccione una especialidad</option>
                        <c:forEach var="especialidad" items="${especialidades}">
                            <option value="${especialidad.idEspecialidad}">${especialidad.nombreEspecialidad}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="medicos" class="form-label">Médicos:</label>
                    <select class="form-select" id="medicos" name="medicos" disabled onchange="actualizarHoras()">
                        <option value="">Seleccione una especialidad primero</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="agenda" class="form-label">Agenda:</label>
                    <select class="form-select" id="agenda" name="agenda" disabled>
                        <option value="">Seleccione una Medico</option>
                    </select>
                </div>
                <div class="row">
                    <div class="col-auto">
                        <button class="btn btn-primary" type="submit" name="boton" value="btn2">Registrar Cita</button>
                    </div>
                </div>
            </form>
        </div>
        <jsp:include page="footer.jsp" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
