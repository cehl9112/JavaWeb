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
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${ sessionScope.nombre } <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="personal.jsp?href=personal"><i class="fa fa-fw fa-user"></i> Mi Perfil</a></li>
                <li><a href="contacto.jsp?href=contacto"><i class="fa fa-fw fa-envelope"></i> Contacto</a></li>
                <li class="divider"></li>
                <li><a href="../login.jsp"><i class="fa fa-fw fa-power-off"></i> Cerrar Sesi&oacute;n</a></li>
            </ul>
        </li>
    </ul>
    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav side-nav">
            <c:forEach var="x" items="${ sessionScope.menu }">
                ${x[0]}
            </c:forEach>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>