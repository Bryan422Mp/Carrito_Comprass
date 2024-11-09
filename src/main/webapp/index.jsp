<%-- 
    Document   : index
    Created on : 23 oct. 2024, 18:38:56
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Carrito de Compras</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
    </head>
<body>
    <jsp:include page="components/Navegacion.jsp"/>
    <div class="container-fluid mt-3">
        <div id="promotionalCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000" style="max-width: 100%; margin: auto;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="d-flex justify-content-center">
                        <img src="assets/img/Carrusel/car01.png" class="img-carousel" alt="Promo 1">
                        <img src="assets/img/Carrusel/car02.png" class="img-carousel" alt="Promo 2">
                        <img src="assets/img/Carrusel/car06.png" class="img-carousel" alt="Promo 3">
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="d-flex justify-content-center">
                        <img src="assets/img/Carrusel/car02.png" class="img-carousel" alt="Promo 2">
                        <img src="assets/img/Carrusel/car06.png" class="img-carousel" alt="Promo 3">
                        <img src="assets/img/Carrusel/car01.png" class="img-carousel" alt="Promo 1">
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="d-flex justify-content-center">
                        <img src="assets/img/Carrusel/car06.png" class="img-carousel" alt="Promo 3">
                        <img src="assets/img/Carrusel/car01.png" class="img-carousel" alt="Promo 1">
                        <img src="assets/img/Carrusel/car02.png" class="img-carousel" alt="Promo 2">
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#promotionalCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#promotionalCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>                                
    <style>
        body {
            background-color: #000; 
        }
        .carousel {
            width: 100%;
            background-color: #333;   
            padding: 10px 0 20px 0;
            margin: auto;   
        }
        .img-carousel {
            width: 100%; 
            height: auto; 
            border-radius: 5px; 
            margin: 0 5px;
            max-height: 340px; 
        }
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: rgba(255, 255, 255, 0.5); 
            border-radius: 50%; 
        }
        
    </style>
    
        <div class="container mt-4">
            <h5 class="text-center">Catálogo de Productos</h5>
            <hr />
            <div class="row">
                <c:forEach items="${productos}" var="item">
                    <div class="col-md-3 mb-4">
                        <div class="card h-100 text-center">
                            <img src="assets/img/productos/${item.imagen}" class="card-img-top" alt="${item.nombre}">
                            <div class="card-body">
                                <h5 class="card-title">${item.nombre}</h5>
                                <p class="card-text fw-bold">Precio: $/${item.precio}</p>
                                <form action="CarritoControlador" method="get">
                                    <input type="hidden" name="accion" value="agregar">
                                    <input type="hidden" name="id" value="${item.idProd}">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fa fa-shopping-cart"></i> Agregar al carrito
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
            
    <footer class="text-center text-white mt-5" style="background-color: #333; padding: 20px;">
        <p>&copy; 2024 NekoToys. Todos los derechos reservados.</p>
        <p>Siguenos en:
            <a href="https://facebook.com" target="_blank" class="text-white mx-2"><i class="fab fa-facebook"></i></a>
            <a href="https://twitter.com" target="_blank" class="text-white mx-2"><i class="fab fa-twitter"></i></a>
            <a href="https://instagram.com" target="_blank" class="text-white mx-2"><i class="fab fa-instagram"></i></a>
        </p>
    </footer>   
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
