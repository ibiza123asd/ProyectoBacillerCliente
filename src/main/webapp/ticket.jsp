<%-- 
    Document   : ticket
    Created on : 06/05/2023, 09:06:52 PM
    Author     : Brandon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="folder/estile.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css">
        <link href="folder/footer.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <script src="folder/jspdf.js" type="text/javascript"></script>
        <script src="folder/html2canvas.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container" id="ticket-pdf">
            <div class="row">
                <div class="col-md-12">
                    <div class="ticket">
                        <div class="info">
                            <h4>Ticket de Atención</h4>
                            <p>No. de Cita: ${ultimacita}</p>
                        </div>
                        <hr>
                        <div class="detalles">
                            <h5>Detalles de la cita</h5>
                            <p>Especialidad: ${Especialidad}</p>
                            <p>Medico: ${Medico}</p>
                            <p>Fecha: ${FechaCita} ${Turno}</p>
                            <p>Paciente: ${nombre}</p>
                            <p>Edad: ${edad}</p>
                            <p>DNI: ${documentodni}</p>
                        </div>
                        <hr>
                        <div class="total">
                            <h4>Importe: S/${monto}</h4>
                        </div>
                        
                        <div style="text-align: center;">
                            <a class="btn btn-primary btn-descargar" id="btn-descargar">Descargar comprobante</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
        <script>
            const btnDescargar = document.querySelector('.btn-descargar');
            const ticketPDF = document.querySelector('#ticket-pdf');
            btnDescargar.addEventListener('click', () => {
                btnDescargar.parentNode.removeChild(btnDescargar);
                html2canvas(ticketPDF).then(canvas => {
                    const imgData = canvas.toDataURL('image/png');
                    const pdf = new jsPDF();
                    pdf.addImage(imgData, 'PNG', -70, 0);
                    pdf.save('comprobante.pdf');


                });
            });
        </script>
        <script src="folder/jspdf.js" type="text/javascript"></script>
        <script src="folder/html2canvas.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
