
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Validar SIS</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="folder/estile2.css" rel="stylesheet" type="text/css"/>
        <link href="folder/footer.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <%
        session.setAttribute("validarSIS", true);
        session.setAttribute("login", true);
        boolean ocultarbtn = false;
    %>
    <body>

         <jsp:include page="header.jsp" />  

        <main>
            <div class="container my-5">
                <div class="row">
                    <div class="col-md-11 mx-auto">

                        <form class="user" action="ControlCitas?accion=validarsis" method="POST">
                            <div class="form-group">
                                <label for="texto">Ingresar DNI:</label>
                                <input type="text" class="form-control form-control-user" id="texto" name="documento">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary mt-2" name="boton" value="btn1">Validar</button>
                            </div>                            
                        </form>
                        
                        <c:if test="${bandera==0}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert" style="text-align: center;">
                                ${Resultado}
                                <br/>
                                <a href="FormularioPaciente.jsp?dni=${DNI}&bandera=0" class="btn btn-danger" role="button">
                                    <i class="bi bi-person-fill"></i>Registrarse como Externo
                                </a>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>
                        <c:if test="${bandera==1}">
                            <div class="alert alert-success alert-dismissible fade show" role="alert" style="text-align: center;">
                                ${Resultado}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>
                        <c:if test="${bandera ==2}">
                            <div class="alert alert-warning alert-dismissible fade show" role="alert" style="text-align: center;">
                                <a href="FormularioPaciente.jsp?dni=${DNI}&bandera=1" class="btn btn-primary" role="button">
                                    <i class="bi bi-person-fill"></i>${Resultado}
                                </a>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        </c:if>

                    </div>
                </div>
            </div>
        </main>  

        <jsp:include page="footer.jsp" />  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>

    </body>
</html>
