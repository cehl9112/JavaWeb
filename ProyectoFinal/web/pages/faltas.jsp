<%-- 
    Document   : faltas
    Created on : Oct 18, 2016, 4:49:28 PM
    Author     : chilario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="general/includes.html" %>
    </head>
    <body>
        <div id="wrapper">

            <%@include file="general/tabs.jsp" %>

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Inasistencias
                                <small>faltas</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="index.jsp">Inicio</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-close"></i> Inasistencias
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
        </div>
    </body>
</html>
<script type="text/javascript">
    $("li.academica").addClass("active").find("a").trigger("click");
    $("li.faltas").addClass("active");
</script>

