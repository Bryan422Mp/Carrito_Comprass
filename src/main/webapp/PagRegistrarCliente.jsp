<%-- 
    Document   : PagRegistrarCliente
    Created on : 2 nov. 2024, 17:13:15
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrarse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
    <link href="assets/css/estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <jsp:include page="components/Navegacion.jsp"/>
    <jsp:include page="components/Mensaje.jsp"/>

    <div class="container d-flex justify-content-center mt-5">
        <div class="col-md-8 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="text-center">Registrar Cuenta</h5>
                    <hr />
                    <div class="text-center mb-4">
                        <img src="assets/img/recursos/login.jpg" style="width: 150px;" alt="Registro"/>
                    </div>
                    <form action="ClienteControlador" method="post"> 
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="nombres" class="form-label">Nombres: <span class="text-danger">*</span></label>
                                    <input value="${cliente.nombres}" type="text" class="form-control" id="nombres" required 
                                           name="nombres" placeholder="Ingrese su nombre"/>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="mb-3">
                                    <label for="apellidos" class="form-label">Apellidos: <span class="text-danger">*</span></label>
                                    <input value="${cliente.apellidos}" type="text" class="form-control" id="apellidos" required 
                                           name="apellidos" placeholder="Ingrese sus apellidos"/>
                                </div>
                            </div>
                        </div> 

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="telefono" class="form-label">Teléfono:</label>
                                    <input value="${cliente.telefono}" type="tel" class="form-control" id="telefono" 
                                           name="telefono" placeholder="Ingrese su teléfono"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="correo" class="form-label">Correo Electrónico: <span class="text-danger">*</span></label>
                                    <input value="${cliente.correo}" type="email" class="form-control" id="correo" 
                                           name="correo" placeholder="Ingrese su correo electrónico" required/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="mb-3">
                                    <label for="password" class="form-label">Contraseña: <span class="text-danger">*</span></label>
                                    <input value="${cliente.password}" type="password" class="form-control" id="password" 
                                           name="password" placeholder="Ingrese su contraseña" required/>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="accion" value="guardar"/>
                        <button type="submit" class="btn btn-primary w-100">Registrarse</button>
                    </form>
                </div>
            </div>
        </div>               
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
