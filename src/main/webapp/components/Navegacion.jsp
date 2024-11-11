<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Navbar Adaptada</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1XsbALwX7iomSU" crossorigin="anonymous">
        <link href="assets/css/estilos.css" rel="stylesheet" type="text/css"/>
        <style>
            /* Custom styling for the dropdown menu */
            .navbar-nav {
                margin: auto;
            }

            /* Display dropdown menu */
            .dropdown-menu {
                background-color: #c30038;
                padding: 20px;
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                min-width: 200px;
                z-index: 10;
            }
            /* Show menu on hover */
            .nav-item:hover .dropdown-menu {
                display: block;
            }
            .dropdown-menu a {
                color: #fff;
                text-decoration: none;
                display: block;
                padding: 5px 10px;
            }
            .dropdown-menu a:hover {
                color: #ff0;
            }
            .nav-link {
                color: white !important;
            }
            .navbar {
                background-color: #212529;
            }
            /* Submenu */
            .submenu-container {
                display: none;
                position: absolute;
                top: 0;
                left: 100%;
                background-color: #c30038;
                min-width: 200px;
                padding: 10px;
                z-index: 10;
            }
            /* Show submenus on hover */
            .dropdown-item:hover .submenu-container {
                display: block;
            }

            /* Add delay to the hover effect for better experience */
            .nav-item > .dropdown-toggle::after {
                content: '\f0d7'; /* FontAwesome down arrow */
                font-family: "Font Awesome 5 Free";
                font-weight: 900;
                margin-left: 5px;
            }
            /* Submenu items also need to show the arrow */
            .submenu-container > .dropdown-item > .dropdown-toggle::after {
                content: '\f0d7'; /* FontAwesome down arrow for submenus */
            }
            
            /* Adding a delay for hover */
            .nav-item, .dropdown-item {
                position: relative;
            }

            .nav-item:hover .dropdown-menu,
            .dropdown-item:hover .submenu-container {
                display: block;
                animation: showMenu 0.3s ease;
            }

            /* Add an animation to make it smoother */
            @keyframes showMenu {
                0% { opacity: 0; }
                100% { opacity: 1; }
            }

            /* Optionally, you can also hide the menu when the mouse leaves the submenu */
            .dropdown-menu,
            .submenu-container {
                opacity: 0;
                pointer-events: none;
                transition: opacity 0.3s ease;
            }

            .dropdown-item:hover .submenu-container,
            .nav-item:hover .dropdown-menu {
                opacity: 1;
                pointer-events: auto;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid d-flex align-items-center">

                <a class="navbar-brand" href="#">
                    <img src="img/img/recursos/logo.png" alt="Logo">
                </a>

                <a class="nav-link home-link" aria-current="page" href="index.jsp">
                    <i class="fa fa-home"></i> Home
                </a>

                <div class="description ms-3">
                    <span class="description-line1">LA MEJOR TIENDA DE</span><br>
                    <span>FIGURAS ANIME Y MANGA</span>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <!-- Dropdown principal para "Figuras de Acción y Coleccionables" -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" aria-expanded="false">
                                FIGURAS DE ACCIÓN Y COLECCIONABLES
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li class="dropdown-item">
                                    <a href="#">ACCESORIOS</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">TAMASHII NATIONS</a>
                                </li>
                                <!-- Bandai Hobby con submenú de Figure Rise -->
                                <li class="dropdown-item">
                                    <a href="#">BANDAI HOBBY</a>
                                    <div class="submenu-container">
                                        <a href="#">FIGURE RISE</a>
                                        <div class="submenu-container">
                                            <a href="#">FIGURE RISE DIGIMON</a>
                                            <a href="#">FIGURE RISE DRAGON BALL</a>
                                            <a href="#">FIGURE RISE YU-GI-OH!</a>
                                            <a href="#">FIGURE RISE KAIJU NO. 8</a>
                                        </div>
                                        <a href="#">POKEMON PLAMO</a>
                                        <a href="#">GUNDAM</a>
                                    </div>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">HOT TOYS</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">THREEZERO</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">MARVEL LEGENDS</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">BANPRESTO</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">FUNKO POP</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">GUNDAM</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">GRAND SHIP COLLECTION</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">POKEMON PLAMO</a>
                                </li>
                                <li class="dropdown-item">
                                    <a href="#">30 MINUTES</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <c:if test="${sessionScope.usuario != null}">
                            <a href="PedidoControlador?accion=mis_pedidos" class="btn btn-dark ms-3">
                                <i class="fa fa-receipt"></i>  Mis pedidos
                            </a>
                    </c:if>
                    <div class="right-icons d-flex ms-auto">
                        <c:if test="${sessionScope.usuario == null}">
                            <a href="ClienteControlador?accion=nuevo" class="btn btn-dark">
                                <i class="fas fa-user-plus"></i> Registrarse
                            </a>
                            &nbsp;
                            <a href="AuthControlador?accion=login" class="btn btn-dark ms-3">
                                <i class="fas fa-user-lock"></i> Login
                            </a>
                        </c:if>

                        <c:if test="${sessionScope.usuario != null}">
                            <span class="btn btn-light">${sessionScope.usuario.nombresCompletos()}</span>
                            &nbsp;
                            <a href="AuthControlador?accion=logout" class="btn btn-dark ms-3">
                                <i class="fa fa-sign-out-alt"></i> Cerrar Sesión
                            </a>
                        </c:if>
                        <a href="CarritoControlador?accion=listar" class="btn btn-dark ms-3">
                            <i class="fa fa-shopping-cart"></i> 
                            (<span class="fw-bold">${sessionScope.carrito != null? sessionScope.carrito.size(): 0}</span>) Carrito
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76A9YHarIhF1yLgt8VJATtjF0OsfhaBw1JJ0yOp6Ewl7v5E4Fo5o2bMZt0ikP5r" crossorigin="anonymous"></script>
    </body>
</html>
