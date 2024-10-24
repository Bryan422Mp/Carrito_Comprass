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
        <title>Carrito de compras</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/css.css"/>
    </head>
    <body>
        <jsp:include page="components/Navegacion.jsp"/>
        
        <div class="container-fluid mt-2">
            <h5>Catalogo de Productos</h5>
            <hr />
            <div class="row">
                <c:forEach items="${productos}" var="item">
                    <div class="col-sm-3 mt-1" style="padding: 15px">
                        <form action="CarritoControlador" method="get">
                            <div class="card">
                                <img src="assets/img/productos/${item.imagen}" width="100%" alt="${item.nombre}" class="card-img"/>
                            <div class="card-body">
                                <p class="fw-bold">${item.nombre}</p>
                                <input type="hidden" name="accion" value="agregar">
                                <input type="hidden" name="id" value="${item.idProd}">
                                <div class="d-flex justify-content-between align-items-center">
                                    <button type="submit" class="btn btn-sm btn-primary">
                                        <i class="fa fa-shopping-cart"></i> Agregar al carrito
                                    </button>
                                    <small class="fw-bold">$/${item.precio}</small>
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </c:forEach>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>
