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

    </head>

    <main>
                
        <section class="py-5" style="padding: 0% !important;">
            <div class="container px-5 my-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6">
                        <div class="text-center">
                            <h2 class="fw-bolder">Autorizaciones Sanitarias</h2>
                            <p class="lead fw-normal text-muted mb-5">Procedimientos Administrativos  TUPA</p>
                        </div>
                    </div>
                </div>
                <div class="row gx-5">
                    <div class="col-lg-4 mb-5">
                        <div class="card h-100 shadow border-0">
                            <img class="card-img-top" src="http://www.dirislimaeste.gob.pe/images/seccion-autorizaciones/mon-1.jpg" alt="...">
                            <div class="card-body p-4">
                                <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                <a class="text-decoration-none link-dark stretched-link" href="http://www.dirislimaeste.gob.pe/OtrosEst_do.asp?idOtroLink=0" target="_blank" ><h5 class="card-title mb-3">Dirección de Monitoreo y Gestión Sanitaria (DMGS)</h5></a>
                                <p class="card-text mb-0">
                                    Establecimientos de Salud <br/>
                                    Servicios Médicos de Apoyo <br/>
                                    Comunidades Terapéuticas
                                </p>
                            </div>                            
                        </div>
                    </div>
                    <div class="col-lg-4 mb-5">
                        <div class="card h-100 shadow border-0">
                            <img class="card-img-top" src="http://www.dirislimaeste.gob.pe/images/seccion-autorizaciones/dem-1.jpg" alt="...">
                            <div class="card-body p-4">
                                <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                <a class="text-decoration-none link-dark stretched-link" href="http://www.dirislimaeste.gob.pe/tupa-Demid.asp" target="_blank" ><h5 class="card-title mb-3">Dirección de Medicamentos, Insumos y Drogas (DEMID)</h5></a>
                                <p class="card-text mb-0">Establecimientos Farmaceuticos</p>
                            </div>                            
                        </div>
                    </div>
                    <div class="col-lg-4 mb-5">
                        <div class="card h-100 shadow border-0">
                            <img class="card-img-top" src="http://www.dirislimaeste.gob.pe/images/seccion-autorizaciones/des-1.jpg" alt="...">
                            <div class="card-body p-4">
                                <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                <a class="text-decoration-none link-dark stretched-link" href="http://www.dirislimaeste.gob.pe/tupa-Desaia.asp" target="_blank" ><h5 class="card-title mb-3">Dirección de Salud Ambiental e Inocuidad Alimentaria (DESAIA)</h5></a>
                                <p class="card-text mb-0">
                                    Abastecimiento de Agua <br/>
                                    Empresas Saneamiento Ambiental <br/>
                                    Piscinas <br/>
                                    Clínicas Veterinarias <br/>
                                    Cementerios, Cremaciones
                                </p>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>  


