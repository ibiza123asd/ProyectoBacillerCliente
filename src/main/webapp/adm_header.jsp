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

        <!-- Custom styles for this template-->
        <link href="Bmodelo/css/sb-admin-2.min.css" rel="stylesheet">


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="adm_dashboard.jsp">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">MINISTERIO DE SALUD</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="adm_dashboard.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">        

                <!-- Nav Item - Especialidad -->
                <li class="nav-item">
                    <a class="nav-link" href="adm_especialidad.jsp">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Especialidades</span></a>
                </li>   

                <!-- Divider -->
                <hr class="sidebar-divider my-0">        

                <!-- Nav Item - Medicos -->
                <li class="nav-item">
                    <a class="nav-link" href="ControlCitas?accion=listarEspecialidades">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Medicos</span></a>
                </li>   

                <!-- Divider -->
                <hr class="sidebar-divider my-0">        

                <!-- Nav Item - Agenda -->
                <li class="nav-item">
                    <a class="nav-link" href="adm_agenda.jsp">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Agenda</span></a>
                </li>   
                <!-- Divider -->
                <hr class="sidebar-divider">			

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>           

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>


                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">                            

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="ControlCitas?accion=adm_dashboard" id="userDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">                                
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${name} </span>
                                    <img class="img-profile rounded-circle"
                                         src="Bmodelo/img/undraw_profile.svg">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                     aria-labelledby="userDropdown">                                    
                                    <a class="dropdown-item" href="ControlCitas?accion=cerrarSesion" data-toggle="modal" data-target="#logoutModal_Adm">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Cerrar Sesion
                                    </a>
                                </div>
                            </li>

                        </ul>



                    </nav>
                    <!-- End of Topbar -->
