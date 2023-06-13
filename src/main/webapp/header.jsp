<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Services.ServiciosCliente"%>
<%@page import="java.util.List"%>
<%@page import="Services.Especialidad"%>
<%@page import="Services.Paciente"%>
<%@page import="Services.*"%>
<%

%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>SIST GC - Dashboard</title>
        <!-- Custom fonts for this template-->
        <link href="Bmodelo/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <link href="Bmodelo/css/sb-admin-2.min.css" rel="stylesheet">
    </head>
    <header>
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow" style="background-color: #5A5B5A!important;">
            <div class="input-group">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3" style="color: #fff; font-weight: bold;">MINISTERIO DE SALUD</div>
            </div>
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDarkDropdown">
                <c:if test="${paciente==null}">
                    <ul class="navbar-nav">                            
                        <a href="adm_dashboard.jsp" class="btn btn-info btn-icon-split" style="height: 50px; line-height: 20px;">
                            <span class="icon text-white-50">
                                <i class="fas fa-adjust"></i>
                            </span>
                            <span class="text">ADMINISTRADOR</span>
                        </a>
                        <div class="topbar-divider d-none d-sm-block"></div>
                        <a href="ValidarSis.jsp" class="btn btn-warning btn-icon-split" style="height: 50px; line-height: 20px;">
                            <span class="icon text-white-50">
                                <i class="fas fa-check"></i>
                            </span>
                            <span class="text">VALIDAR SIS</span>
                        </a>
                        <div class="topbar-divider d-none d-sm-block"></div>
                        <a href="login.jsp" class="btn btn-danger btn-sm btn-icon-split" style="height: 50px; line-height: 20px;">
                            <span class="icon text-white-50">
                                <i class="fas fa-flag"></i>
                            </span>
                            <span class="text">LOGIN</span>
                        </a>
                    </ul>
                </c:if>
                <c:if test="${paciente!=null}">
                    <ul class="navbar-nav">                            
                        <li class="nav-item dropdown"> 
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">                                
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"> Especialidades </span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <c:forEach var="especialidad" items="${especialidades}">
                                    <li><a class="dropdown-item" href="#">${especialidad.nombreEspecialidad}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="ControlCitas?accion=perfil" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">                                
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${paciente.nombre}  ${paciente.apellidoPaterno} ${paciente.apellidoMaterno} </span>
                                <img class="img-profile rounded-circle"
                                     src="Bmodelo/img/undraw_profile.svg">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="ControlCitas?accion=formularioCita&dni=${paciente.dni}">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Generar Cita
                                </a>
                                <a class="dropdown-item" href="ControlCitas?accion=perfil">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Perfil
                                </a>                                
                                <a class="dropdown-item" href="ControlCitas?accion=cerrarSesion" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Cerrar Sesion
                                </a>
                            </div>
                        </li>
                    </ul>
                </c:if>
            </div>
        </nav>
    </header>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
