<%-- 
    Document   : dashboard
    Created on : 27/10/2020, 7:03:19 p. m.
    Author     : Ing. Luis Llanos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="./assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            CovidStadistics
        </title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <!-- CSS Files -->
        <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="./assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="./assets/demo/demo.css" rel="stylesheet" />
    </head>

    <body class="">
        <div class="wrapper ">

            <div class="main-panel" id="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <div class="navbar-toggle">
                                <button type="button" class="navbar-toggler">
                                    <span class="navbar-toggler-bar bar1"></span>
                                    <span class="navbar-toggler-bar bar2"></span>
                                    <span class="navbar-toggler-bar bar3"></span>
                                </button>
                            </div>
                            <h1><a class="navbar-brand" href="#pablo">Estadísticas mundiales del Covid-19</a></h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <form>
                                <div class="input-group no-border">
                                    <input type="text" value="" class="form-control" placeholder="Search...">
                                    <div class="input-group-append">
                                        <div class="input-group-text">
                                            <i class="now-ui-icons ui-1_zoom-bold"></i>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="#pablo">
                                        <i class="now-ui-icons media-2_sound-wave"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Stats</span>
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="now-ui-icons location_world"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Some Actions</span>
                                        </p>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#pablo">
                                        <i class="now-ui-icons users_single-02"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Account</span>
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->

                <!-- World Cases Year -->
                <div class="panel-header panel-header-lg">
                    <canvas id="bigDashboardChart"></canvas>
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card card-chart">
                                <div class="card-header">
                                    <h5 class="card-category">Covid - 19</h5>
                                    <h4 class="card-title">Muertos en Colombia</h4>
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                                            <i class="now-ui-icons loader_gear"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <a class="dropdown-item text-danger" href="#">Remove Data</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="lineChartExample"></canvas>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="now-ui-icons arrows-1_refresh-69"></i> Última actualización en Julio
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="card card-chart">
                                <div class="card-header">
                                    <h5 class="card-category">kaggle 2020</h5>
                                    <h4 class="card-title">Infectados en Colombia</h4>
                                    <div class="dropdown">
                                        <button type="button" class="btn btn-round btn-outline-default dropdown-toggle btn-simple btn-icon no-caret" data-toggle="dropdown">
                                            <i class="now-ui-icons loader_gear"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <a class="dropdown-item text-danger" href="#">Remove Data</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="lineChartExampleWithNumbersAndGrid"></canvas>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="now-ui-icons arrows-1_refresh-69"></i> Última actualización en Julio
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="card card-chart">
                                <div class="card-header">
                                    <h5 class="card-category">database 2020</h5>
                                    <h4 class="card-title">Infectados en América</h4>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="barChartSimpleGradientsNumbers"></canvas>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                        <i class="now-ui-icons ui-2_settings-90"></i>  Última actualización en Julio
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-category">Categoría Países</h5>
                                    <h4 class="card-title">Países con más infectados</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="text-danger">
                                            <th>
                                                País
                                            </th>
                                            <th>
                                                Continente
                                            </th>
                                            <th class="text-right">
                                                Confirmados
                                            </th>
                                            <th class="text-right">
                                                Muertos
                                            </th>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="maxinfect" items="${maxinfected}">
                                                    <tr>
                                                        <td>
                                                            ${maxinfect.country}
                                                        </td>
                                                        <td>
                                                            ${maxinfect.whoregion}
                                                        </td>
                                                        <td class="text-right">
                                                            ${maxinfect.total}
                                                        </td>
                                                        <td class="text-right">
                                                            ${maxinfect.deaths}
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-category">Categoría Países</h5>
                                    <h4 class="card-title"> Países con menos infectados</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="text-success">
                                            <th>
                                                País
                                            </th>
                                            <th>
                                                Continente
                                            </th>
                                            <th class="text-right">
                                                Confirmados
                                            </th>
                                            <th class="text-right">
                                                Muertos
                                            </th>
                                            </thead>

                                            <tbody>
                                                <c:forEach var="lessinfect" items="${lessinfected}">
                                                    <tr>
                                                        <td>
                                                            ${lessinfect.country}
                                                        </td>
                                                        <td>
                                                            ${lessinfect.whoregion}
                                                        </td>
                                                        <td class="text-right">
                                                            ${lessinfect.total}
                                                        </td>
                                                        <td class="text-right">
                                                            ${lessinfect.deaths}
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer">
                    <div class=" container-fluid ">
                        <nav>
                            <ul>
                                <li>
                                    <a href="">
                                        BNT SAS
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        About Us
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        Blog
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <div class="copyright" id="copyright">
                            &copy; <script>
                                document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
                            </script>, Designed by <a href="" target="_blank">Fenix Design / BNT</a>. Coded by <a href="" target="_blank">Black Team / BNT </a>.
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="./assets/js/core/jquery.min.js"></script>
        <script src="./assets/js/core/popper.min.js"></script>
        <script src="./assets/js/core/bootstrap.min.js"></script>
        <script src="./assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!-- Chart JS -->
        <script src="./assets/js/plugins/chartjs.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="./assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="./assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
        <script src="./assets/demo/demo.js"></script>

        <script>
                                $(document).ready(function () {
                                    // Javascript method's body can be found in assets/js/demos.js
                                    const l0 = ${y.get(0).count};
                                    const l1 = ${y.get(1).count};
                                    const l2 = ${y.get(2).count};
                                    const l3 = ${y.get(3).count};
                                    const l4 = ${y.get(4).count};
                                    const l5 = ${y.get(5).count};
                                    const l6 = ${y.get(6).count};
                                    const args = [l0, l1, l2, l3, l4, l5, l6];

                                    const col = [${c.get(0).count},${c.get(1).count},${c.get(2).count},${c.get(3).count},${c.get(4).count},${c.get(5).count},${c.get(6).count}];
                                    const det = [${d.get(0).deaths},${d.get(1).deaths},${d.get(2).deaths},${d.get(3).deaths},${d.get(4).deaths},${d.get(5).deaths},${d.get(6).deaths}];
                                    const nom = ["${a.get(0).country}","${a.get(1).country}","${a.get(2).country}","${a.get(3).country}","${a.get(4).country}","${a.get(5).country}","${a.get(6).country}","${a.get(7).country}","${a.get(8).country}","${a.get(9).country}","${a.get(10).country}","${a.get(11).country}","${a.get(12).country}","${a.get(13).country}","${a.get(14).country}"];
                                    const tot = [${b.get(0).confirmed},${b.get(1).confirmed},${b.get(2).confirmed},${b.get(3).confirmed},${b.get(4).confirmed},${b.get(5).confirmed},${b.get(6).confirmed},${b.get(7).confirmed},${b.get(8).confirmed},${b.get(9).confirmed},${b.get(10).confirmed},${b.get(11).confirmed},${b.get(12).confirmed},${b.get(13).confirmed},${b.get(14).confirmed}];
                                    demo.initDashboardPageCharts(args, col, det, nom, tot);

                                });
        </script>
    </body>
</html>
