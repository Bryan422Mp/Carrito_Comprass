<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar Adaptada</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1XsbALwX7iomSU" crossorigin="anonymous">
    <style>
        .navbar {
            background-color: white !important;
            border-bottom: 2px solid red;
        }
        .navbar-brand img {
            width: 120px;
            height: auto;
        }
        .navbar .description {
            color: red;
            font-size: 12px;
            white-space: normal; 
        }
        .navbar .description-line1 {
            font-weight: bold;
        }
        .navbar .search-bar {
            flex-grow: 5;
            margin: 0 130px; 
            width: 400px; 
        }
        .navbar .search-bar input {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 20px;
            width: 100%; 
            outline: none;
        }
        .navbar .search-bar input::placeholder {
            color: #999;
        }
        .navbar .right-icons a {
            color: black;
            text-decoration: none;
            margin-left: 15px;
            display: flex;
            align-items: center;
        }
        .navbar .right-icons a i {
            margin-right: 5px;
        }
        .navbar .right-icons .cart-count {
            font-weight: bold;
        }
        .navbar .home-link {
            margin-left: 15px;
            font-size: 18px;
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

        <form class="search-bar d-flex">
            <input type="text" placeholder="Búsqueda en catálogo" aria-label="Buscar">
        </form>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

            </ul>

            <div class="right-icons d-flex ms-auto">
                <a href="ClienteControlador?accion=nuevo" class="btn btn-dark">
                    <i class="fas fa-user-plus"></i> Registrarse
                </a>
                <a href="#" class="btn btn-dark ms-3">
                    <i class="fas fa-user-lock"></i> Login
                </a>
                <a href="CarritoControlador?accion=listar" class="btn btn-dark ms-3">
                    <i class="fa fa-shopping-cart"></i> (<span class="fw-bold">${sessionScope.carrito != null? sessionScope.carrito.size(): 0}</span>) Carrito
                </a>
            </div>
        </div>
    </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76A9YHarIhF1yLgt8VJATtjF0OsfhaBw1JJ0yOp6Ewl7v5E4Fo5o2bMZt0ikP5r" crossorigin="anonymous"></script>
</body>
</html>
