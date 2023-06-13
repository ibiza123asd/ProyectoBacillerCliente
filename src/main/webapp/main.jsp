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
        <div class="container my-5">
            <div class="row">
                <div class="col-md-11 mx-auto">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="imagenes/imagen1.jpg" class="d-block img-fluid" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="imagenes/imagen2.jpg" class="d-block img-fluid" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="imagenes/imagen3.jpg" class="d-block img-fluid" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="imagenes/imagen4.jpg" class="d-block img-fluid" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="imagenes/imagen5.jpg" class="d-block img-fluid" alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Anterior</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Siguiente</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </main>  


