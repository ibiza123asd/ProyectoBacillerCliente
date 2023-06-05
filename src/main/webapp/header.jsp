<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Services.ServiciosCliente"%>
<%@page import="java.util.List"%>
<%@page import="Services.Especialidad"%>
<%@page import="Services.Paciente"%>
<%@page import="Services.*"%>
<%

%>
<header class="text-center py-3">  
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="home.jsp">Ministerio de Salud</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>         
            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDarkDropdown">
                <ul class="navbar-nav">
                    <c:if test="${paciente!=null}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Especialidades
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                                <c:forEach var="especialidad" items="${especialidades}">
                                    <li><a class="dropdown-item" href="#">${especialidad.nombreEspecialidad}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                    </c:if>
                    <c:if test="${paciente==null}">
                        <a href="ValidarSis.jsp" class="btn btn-outline-success ms-auto mx-2 text-white border-0" role="button">
                            <i class="bi bi-person-fill"></i>Validar Sis
                        </a>
                    </c:if>

                    <li class="nav-item dropdown">
                        <c:if test="${paciente!=null}">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                ${paciente.nombre}
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark dropdown-menu-end" aria-labelledby="navbarDarkDropdownMenuLink">
                                <li><a class="dropdown-item" href="ControlCitas?accion=formularioCita&dni=${paciente.dni}">Generar Cita</a></li>
                                <li><a class="dropdown-item" href="ControlCitas?accion=perfil">Ver mi Perfil</a></li>
                                <li><a class="dropdown-item" href="ControlCitas?accion=cerrarSesion">Cerrar Sesion</a></li>
                            </ul>
                        </c:if>
                        <c:if test="${paciente==null}">
                            <a href="login.jsp" class="btn btn-outline-success text-white border-0" role="button">
                                <i class="bi bi-person-fill"></i> login
                            </a>
                        </c:if>
                    </li>
                </ul> 
            </div>
        </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</header>
