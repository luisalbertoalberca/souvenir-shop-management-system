<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.alexanderdoma.peruinolvidable.model.entity.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link rel="icon" href="https://i.redd.it/9oy8b1kalnfb1.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="assets/css/cart.css"/>
        <link rel="stylesheet" href="assets/css/header.css"/>
        <link rel="stylesheet" href="assets/css/index.css"/>
    </head>
    <body>
        <%@include file="components/header.jsp" %>
        <!-- Productos -->
        <div class="container-sm">
            <h2 class="mt-3 font-monospace text-secondary">Tu carrito</h2>
            <!-- Contenedor de Productos -->
            <div class="mt-4 mb-4">
                <table class="table">
                    <thead>
                        <tr class="text-secondary">
                            <th>Producto</th>
                            <th>Cantidad</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${orderlines}" var = "orderline">
                            <tr>
                            <td>${orderline.getId()}</td>
                            <td class="product-name">
                                <div class="d-flex align-items-center">
                                    <img
                                        src="//hangertips.com/cdn/shop/files/cuy-limpias2_4f2cf6c6-e67f-432f-b0b7-b583576d9521.jpg?v=1706542512&amp;width=300"
                                        class="img-fluid" alt="Polo hombre Cuy RX charcoal" loading="lazy" width="150" height="150">
                                    <div class="ms-3">
                                        ${orderline.getProduct().getName()}
                                        <div class="product-details">
                                            S/. 69.00 <br>
                                            Color: Charcoal <br>
                                            Size: S
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">
                                <div class="qty-control">
                                    <button type="button">-</button>
                                    <input type="text" value="${orderline.getQuantity()}" readonly>
                                    <button type="button">+</button>

                                    <button>
                                        <i class="bi bi-trash"></i>
                                    </button>
                                </div>
                            </td>
                            <td class="align-middle">S/. 69.00</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-end">
                <div>
                    <div class="text-end mb-4">
                        <p class="fw-bold d-inline text-success-emphasis px-3 fs-5">Subtotal: </p>
                        <p class="fw-bold d-inline text-secondary fs-5">S/. 59.00 PEN</p>
                    </div>

                    <p class="text-center text-muted small mb-4">
                        Impuesto incluido. Los gastos de envío se calculan en la pantalla de pago.
                    </p>

                    <div class="text-center">
                        <button type="submit" id="checkout" class="btn btn-dark btn-lg w-100" name="checkout" form="cart">
                            Pagar pedido
                        </button>
                    </div>
                </div>
            </div>
        </div>
   <%@include file="components/footer.jsp" %>
   <script src="assets/js/main.js"></script>
   <!-- Script de Bootstrap -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
    </body>
</html>
