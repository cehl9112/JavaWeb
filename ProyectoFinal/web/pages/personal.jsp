<%-- 
    Document   : personal
    Created on : Oct 18, 2016, 4:17:46 PM
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
                                Información Personal
                                <small>Actualización</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <i class="fa fa-dashboard"></i>  <a href="index.jsp">Inicio</a>
                                </li>
                                <li class="active">
                                    <i class="fa fa-edit"></i> Información Personal
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="profile-sidebar">
				<!-- PORTLET MAIN -->
                                <div class="portlet light profile-sidebar-portlet">
                                        <!-- SIDEBAR USERPIC -->
                                        <div class="profile-userpic">
                                                <img src="../../assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
                                        </div>
                                        <!-- END SIDEBAR USERPIC -->
                                        <!-- SIDEBAR USER TITLE -->
                                        <div class="profile-usertitle">
                                                <div class="profile-usertitle-name">
                                                         Marcus Doe
                                                </div>
                                                <div class="profile-usertitle-job">
                                                         Developer
                                                </div>
                                        </div>
                                        <!-- END SIDEBAR USER TITLE -->
                                        <!-- SIDEBAR BUTTONS -->
                                        <div class="profile-userbuttons">
                                                <button type="button" class="btn btn-circle green-haze btn-sm">Follow</button>
                                                <button type="button" class="btn btn-circle btn-danger btn-sm">Message</button>
                                        </div>
                                        <!-- END SIDEBAR BUTTONS -->
                                        <!-- SIDEBAR MENU -->
                                        <div class="profile-usermenu">
                                                <ul class="nav">
                                                        <li class="active">
                                                                <a href="extra_profile.html">
                                                                <i class="icon-home"></i>
                                                                Overview </a>
                                                        </li>
                                                        <li>
                                                                <a href="extra_profile_account.html">
                                                                <i class="icon-settings"></i>
                                                                Account Settings </a>
                                                        </li>
                                                        <li>
                                                                <a href="page_todo.html" target="_blank">
                                                                <i class="icon-check"></i>
                                                                Tasks </a>
                                                        </li>
                                                        <li>
                                                                <a href="extra_profile_help.html">
                                                                <i class="icon-info"></i>
                                                                Help </a>
                                                        </li>
                                                </ul>
                                        </div>
                                        <!-- END MENU -->
                                </div>
                                <!-- END PORTLET MAIN -->
                                
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
        $("li."+clase).addClass("active");
    });
</script>

