<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.jsp">INTRANET</a>
    </div>
    <!-- Top Menu Items -->
    <ul class="nav navbar-right top-nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
            <ul class="dropdown-menu alert-dropdown">
                <li><a href="#">Nuevo Curso <span class="label label-danger">Nuevo</span></a></li>
                <li><a href="#">Nuevo Examen <span class="label label-danger">Nuevo</span></a></li>
                <li><a href="#">Notas del curso CU10</a></li>
                <li class="divider"></li>
                <li>
                    <a href="#">Ver Todas</a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="personal.jsp?href=personal"><i class="fa fa-fw fa-user"></i> Mi Perfil</a></li>
                <li><a href="contacto.jsp?href=contacto"><i class="fa fa-fw fa-envelope"></i> Contacto</a></li>
                <li class="divider"></li>
                <li><a href="../login.html"><i class="fa fa-fw fa-power-off"></i> Cerrar Sesi&oacute;n</a></li>
            </ul>
        </li>
    </ul>
    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <li class="horario"><a href="horario.jsp?href=horario"><i class="fa fa-fw fa-table"></i> Horario de Clases</a></li>
            <li class="personal"><a href="personal.jsp?href=personal"><i class="fa fa-fw fa-edit"></i> Informaci&oacute;n Personal</a></li>
            <li class="academica"><a href="javascript:;" data-toggle="collapse" data-target="#info-academica"><i class="fa fa-fw fa-bar-chart-o"></i> Informaci&oacute;n Acad&eacute;mica <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="info-academica" class="collapse">
                    <li class="notas"><a href="notas.jsp?href=notas">Notas Actuales</a></li>
                    <li class="horario-inter"><a href="horario.jsp?href=horario-inter">Horario de Clases</a></li>
                    <li class="examenes"><a href="examenes.jsp?href=examenes">Rol de Ex&aacute;menes</a></li>
                    <li class="faltas"><a href="faltas.jsp?href=faltas">Inasistencias</a></li>
                </ul>
            </li>
            <li class="tramite">
                <a href="javascript:;" data-toggle="collapse" data-target="#gest-tramite"><i class="fa fa-fw fa-gears"></i> Gesti&oacute;n de Tr&aacute;mites <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="gest-tramite" class="collapse">
                    <li class="retiro"><a href="retiro.jsp?href=retiro">Retiro de Curso</a></li>
                    <li class="curricula"><a href="curricula.jsp?href=curricula">Visualizar Curr&iacute;cula</a></li>
                </ul>
            </li>
            <li class="mantenimiento">
                <a href="javascript:;" data-toggle="collapse" data-target="#mantenimiento"><i class="fa fa-fw fa-wrench"></i> Mantenimiento <i class="fa fa-fw fa-caret-down"></i></a>
                <ul id="mantenimiento" class="collapse">
                    <li class="gest-pers"><a href="gest-pers.jsp?href=gest-pers">Gesti&oacute;n de Personas</a></li>
                    <li class="gest-cursos"><a href="gest-cursos.jsp?href=gest-cursos">Gesti&oacute;n de Cursos</a></li>
                </ul>
            </li>
            <li class="contacto"><a href="contacto.jsp?href=contacto"><i class="fa fa-fw fa-envelope-o"></i> Contacto</a></li>
            <li><a href="../login.html"><i class="fa fa-fw fa-power-off"></i> Cerrar Sesi&oacute;n</a></li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>