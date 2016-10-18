<%-- 
    Document   : index
    Created on : Oct 18, 2016, 9:47:19 AM
    Author     : CEHL
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

            <%@include file="general/tabs.html" %>

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Bienvenido a la Intranet
                                <!--<small>Subheading</small>-->
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    <i class="fa fa-dashboard"></i> Inicio
                                </li>
                                <!--
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="index.html">Inicio</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-file"></i> Blank Page
                                </li>-->
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i> Pr&oacute;ximos Cursos</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="list-group">
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-clock-o"></i> CU10 - Aritmética
                                            <span class="badge">10 minutos</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-clock-o"></i> AC15 - Geografía
                                            <span class="badge">3 horas</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-clock-o"></i> IE18 - Lenguaje
                                            <span class="badge">1 d&iacute;a</span>
                                        </a>
                                    </div>
                                    <div class="text-right">
                                        <a href="horario.jsp?href=horario">Ver mi horario <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-warning fa-fw"></i> &Uacute;ltimas Calificaciones</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="list-group">
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-check"></i> CU10 - Examen Parcial
                                            <span class="badge">18.60</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-close"></i> AC15 - Examen Parcial
                                            <span class="badge">9.00</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-check"></i> IE18 - Presentación Parcial
                                            <span class="badge">13.50</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-close"></i> IE18 - Pr&aacute;ctica 4
                                            <span class="badge">10.00</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-check"></i> AC-15 - Trabajo 1
                                            <span class="badge">15.35</span>
                                        </a>
                                    </div>
                                    <div class="text-right">
                                        <a href="notas.jsp?href=notas">Ver todas las calificaciones <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-info-circle fa-fw"></i> Cursos Inscritos </h3>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>C&oacute;digo</th>
                                                    <th>Nombre</th>
                                                    <th>Profesor</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>CU10</td>
                                                    <td>Aritm&eacute;tica</td>
                                                    <td>Juan Perez</td>
                                                </tr>
                                                <tr>
                                                    <td>AC15</td>
                                                    <td>Geografía</td>
                                                    <td>María Reyes</td>
                                                </tr>
                                                <tr>
                                                    <td>IE18</td>
                                                    <td>Lenguaje</td>
                                                    <td>Manuel Paredes</td>
                                                </tr>
                                                <tr>
                                                    <td>IE25</td>
                                                    <td>Raz. Verbal</td>
                                                    <td>Miguel Pozo</td>
                                                </tr>
                                                <tr>
                                                    <td>CU25</td>
                                                    <td>Trigonometría</td>
                                                    <td>Juan López</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="text-right">
                                        <a href="notas.jsp?href=notas">Ver Todos los cursos <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i> Pr&oacute;ximos Cursos</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="list-group">
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-clock-o"></i> CU10 - Aritmética
                                            <span class="badge">10 minutos</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-clock-o"></i> CU10 - Aritmética
                                            <span class="badge">3 horas</span>
                                        </a>
                                        <a class="list-group-item">
                                            <i class="fa fa-fw fa-clock-o"></i> CU25 - Trigonometría
                                            <span class="badge">1 d&iacute;a</span>
                                        </a>
                                    </div>
                                    <div class="text-right">
                                        <a href="horario.jsp?href=horario">Ver mi horario <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-info-circle fa-fw"></i> Cursos Asociados </h3>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>C&oacute;digo</th>
                                                    <th>Nombre</th>
                                                    <th>Sección</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>CU10</td>
                                                    <td>Aritm&eacute;tica</td>
                                                    <td>S500</td>
                                                </tr>
                                                <tr>
                                                    <td>CU10</td>
                                                    <td>Aritm&eacute;tica</td>
                                                    <td>E450</td>
                                                </tr>
                                                <tr>
                                                    <td>CU25</td>
                                                    <td>Trigonometría</td>
                                                    <td>E420</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="text-right">
                                        <a href="gest-cursos.jsp?href=gest-cursos">Ver Todos mis cursos <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- /#page-wrapper -->

        </div>
    </body>
</html>
