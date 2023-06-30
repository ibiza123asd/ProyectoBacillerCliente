
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Dashboard</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        
        <script src="folder/jspdf.js" type="text/javascript"></script>
        <script src="folder/html2canvas.js" type="text/javascript"></script>
    </head>

    <body>


        <jsp:include page="adm_header.jsp" />

        <!-- Begin Page Content -->
        <div class="container-fluid" >

            <!-- Content Row -->
            <div class="row">

                <!-- Area Chart -->
                <div class="col-xl-12 col-lg-11">
                    <div class="card shadow mb-12">
                        <!-- Card Header - Dropdown -->
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">DASHBOARD</h6>   
                            
                        </div>
                        <!-- Card Body -->
                        <div class="card-body" id="xInforme">

                            <iframe title="Report Section" width="100%" height="740"  src="https://app.powerbi.com/view?r=eyJrIjoiYWVmYjUxYzUtZGY3Yy00ZDcwLWI0YjMtNWRhZGViN2FkZDlkIiwidCI6ImM0YTY2YzM0LTJiYjctNDUxZi04YmUxLWIyYzI2YTQzMDE1OCIsImMiOjR9&pageName=ReportSection5df41a4d713a89871282" frameborder="2" allowFullScreen="true"></iframe>

                        </div>
                    </div>
                </div>

            </div>

        </div>
        <!-- /.container-fluid -->

        <jsp:include page="adm_footer.jsp" />  

    </body>
</html>
