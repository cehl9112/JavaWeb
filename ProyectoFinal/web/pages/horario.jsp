<%-- 
    Document   : horario
    Created on : Oct 18, 2016, 3:09:48 PM
    Author     : CEHL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                Horario de Clases
                                <small>semanal</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="index.jsp">Inicio</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-table"></i> Horario
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Hora</th>
                                                    <th>Lunes</th>
                                                    <th>Martes</th>
                                                    <th>Miercoles</th>
                                                    <th>Jueves</th>
                                                    <th>Viernes</th>
                                                    <th>Sábado</th>
                                                    <th>Domingo</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach begin="7" end="22" var="x">
                                                    <tr>
                                                        <c:forEach begin="1" end="8" var="y">
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${y==1}">
                                                                        ${x}:00
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        &nbsp;
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                        </c:forEach>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
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
    $(document).ready(function(){
        var clase="<%= request.getParameter("href")%>";
    	if(clase!=="horario") $("li.academica").addClass("active").find("a").trigger("click");
        $("li."+clase).addClass("active");
    });
</script>

