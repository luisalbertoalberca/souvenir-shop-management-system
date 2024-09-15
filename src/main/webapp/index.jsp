<%@page import="com.sun.tools.javac.resources.compiler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perú Inolvidable | Tienda online</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/index.css"/>
    </head>
    <body>
        <input type='hidden' id='status' value="<%=request.getAttribute("status")%>">
        <div id="header" class="fixed-top bg-white">
            <div class="mt-4">
                <h5 class="text-center mt-2 font-monospace text-secondary titulo">Bienvenido a nuestra tienda</h5>
                <hr>
            </div>
            <!-- Barra de Navegación - Header -->
            <div>
                <header class="d-grid container-sm">
                    <!-- Barra de navegación - Top -->
                    <div class="row">
                        <div class="col d-flex justify-content-start align-items-center">
                            <!-- <i class="bi bi-search"></i> -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor"
                                 class="bi bi-search" viewBox="0 0 16 16">
                            <path
                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                            </svg>
                        </div>
                        <div class="col-6 d-flex justify-content-center">
                            <a href="../principal.html">
                                <img alt="hangertips"
                                     srcset="//hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=50 50w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=100 100w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=150 150w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=200 200w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=250 250w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=300 300w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=400 400w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=500 500w"
                                     width="150" height="52.734375">
                            </a>
                        </div>
                        <div class="col d-flex justify-content-end align-items-center">
                            <!-- <i class="bi bi-cart" width="44px" height="44px" ></i> -->
                            <a href="./collections/carrito.html" class="text-secondary">
                                <i class="fa-solid fa-cart-shopping"></i>
                            </a>
                            
                            <a href="login.jsp" class="text-secondary mx-4">
                                <i class="fa-solid fa-user"></i>
                            </a>
                        </div>
                    </div>
                    <!-- Barra de navegación - Bottom -->
                    <div class="row mt-4 mb-4">
                        <div class="col"></div>
                        <!-- Menu - links -->
                        <div class="col-6">
                            <ul class="list-group list-group-flush list-group-horizontal list-unstyled">
                                <li class="list-group-item link"></li>
                                <li class="list-group-item link text-secondary link-underline-opacity-0">
                                    <a class="text-secondary link-underline link-underline-opacity-0 current" href="#">Inicio</a>
                                </li>
                                <li class="list-group-item link text-secondary link-underline-opacity-0">
                                    <a class="text-secondary link-underline link-underline-opacity-0 current"
                                       href="./collections/hombre.html">Hombre</a>
                                </li>
                                <li class="list-group-item link text-secondary link-underline-opacity-0">
                                    <a class="text-secondary link-underline link-underline-opacity-0 current"
                                       href="./collections/mujeres.html">Mujer</a>
                                </li>
                                <li class="list-group-item link text-secondary link-underline-opacity-0">
                                    <a class="text-secondary link-underline link-underline-opacity-0 current"
                                       href="./collections/niños.html">Niño</a>
                                </li>
                                <li class="list-group-item link text-secondary link-underline-opacity-0">
                                    <a class="text-secondary link-underline link-underline-opacity-0 current"
                                       href="./collections/accesorios.html">Accesorios</a>
                                </li>
                                <li class="list-group-item link text-secondary link-underline-opacity-0">
                                    <a class="text-secondary link-underline link-underline-opacity-0 current"
                                       href="./collections//tiendas.html">Tiendas</a>
                                </li>
                                <li class="list-group-item link text-secondary link-underline-opacity-0">
                                    <a class="text-secondary link-underline link-underline-opacity-0 current" href="#">Más</a>
                                </li>
                                <li class="list-group-item link"></li>
                            </ul>
                        </div>
                        <div class="col"></div>
                    </div>
                </header>
            </div>
        </div>

        <!-- Banner -->
        <div>
            <img
                src="//hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=1500"
                class="image-banner"
                srcset="//hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=375 375w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=550 550w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=750 750w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=1100 1100w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=1500 1500w"
                width="1920" height="800.0" loading="lazy" sizes="100vw">
        </div>

        <!-- Productos destacados -->
        <div class="container-sm">
            <h2 class="mt-3 font-monospace text-secondary">Productos destacados</h2>
            <!-- Contenedor de Productos Destacados -->
            <div class="auto-grid mt-3 mb-3">
                <!-- Producto -->
                <div class="card" style="width: 18rem;">
                    <img src="//hangertips.com/cdn/shop/products/cuymarron_1.jpg?v=1670366071&amp;width=533" alt="Medias Cuy"
                         class="motion-reduce hover-zoom" loading="lazy">
                    <div class="card-body">
                        <h5 class="card-title">Medias</h5>
                        <p class="card-text">Medias para Hombrew - S/.30</p>
                        <a href="./collections/producto.html" class="btn btn-primary">Comprar</a>
                    </div>
                </div>
                <!-- Fin de Producto -->
            </div>
        </div>

        <!-- Media -->
        <div class="container-sm mt-4">
            <div class="collage">
                <div class="collage__item--left">
                    <div class="d-flex flex-column">
                        <img class="img-fluid hover-zoom"
                             srcset="//hangertips.com/cdn/shop/collections/portada_0002_mockup_taza_ari.jpg?v=1696862743&amp;width=165 165w,//hangertips.com/cdn/shop/collections/portada_0002_mockup_taza_ari.jpg?v=1696862743&amp;width=330 330w,//hangertips.com/cdn/shop/collections/portada_0002_mockup_taza_ari.jpg?v=1696862743&amp;width=535 535w,//hangertips.com/cdn/shop/collections/portada_0002_mockup_taza_ari.jpg?v=1696862743&amp;width=750 750w,//hangertips.com/cdn/shop/collections/portada_0002_mockup_taza_ari.jpg?v=1696862743&amp;width=1000 1000w,//hangertips.com/cdn/shop/collections/portada_0002_mockup_taza_ari.jpg?v=1696862743 1081w"
                             src="//hangertips.com/cdn/shop/collections/portada_0002_mockup_taza_ari.jpg?v=1696862743&amp;width=1500"
                             alt="" height="1921" loading="lazy" class="motion-reduce">

                        <h4 class="text-secondary mt-3">Tazas <i class="bi bi-arrow-right"></i></h4>
                    </div>
                </div>

                <div class="collage__item--right-top">
                    <div class="d-flex flex-column h-100">
                        <img class="img-fluid h-100 hover-zoom"
                             srcset="//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=165 165w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=330 330w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=535 535w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=750 750w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772 800w"
                             src="//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=1500"
                             sizes="
                             (min-width: 1200px) 550px,
                             (min-width: 750px) calc((100vw - 10rem) / 2),
                             calc(100vw - 3rem)" alt="" height="600" width="800" loading="lazy" class="motion-reduce">

                        <h4 class="text-secondary mt-3">Carteras <i class="bi bi-arrow-right"></i></h4>
                    </div>
                </div>

                <div class="collage__item--right-bottom">
                    <div class="d-flex flex-column h-100">
                        <img class="img-fluid h-100 hover-zoom"
                             srcset="//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=165 165w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=330 330w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=535 535w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=750 750w,//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772 800w"
                             src="//hangertips.com/cdn/shop/collections/portada_0005_Mockup_cartera_llamacorn.jpg?v=1671721772&amp;width=1500"
                             sizes="
                             (min-width: 1200px) 550px,
                             (min-width: 750px) calc((100vw - 10rem) / 2),
                             calc(100vw - 3rem)" alt="" height="600" width="800" loading="lazy" class="motion-reduce">

                        <h4 class="text-secondary mt-3">Carteras <i class="bi bi-arrow-right"></i></h4>
                    </div>
                </div>
            </div>
        </div>

        <!-- Texto Instagram -->
        <div class="container-sm">
            <h3 class="text-secondary text-center mt-4 mb-4">Instagram</h3>
        </div>

        <!-- Collections -->
        <div class="container-sm mt-4 mb-4">
            <h2 class="mt-3 font-monospace text-secondary mt-4">Collections</h2>
            <!-- Grid de Colletions -->
            <div class="row">
                <div class="col d-flex flex-column">
                    <img
                        srcset="//hangertips.com/cdn/shop/collections/portada_0009_banners4.0.jpg?v=1671720984&amp;width=165 165w,//hangertips.com/cdn/shop/collections/portada_0009_banners4.0.jpg?v=1671720984&amp;width=330 330w,//hangertips.com/cdn/shop/collections/portada_0009_banners4.0.jpg?v=1671720984&amp;width=535 535w,//hangertips.com/cdn/shop/collections/portada_0009_banners4.0.jpg?v=1671720984&amp;width=750 750w,//hangertips.com/cdn/shop/collections/portada_0009_banners4.0.jpg?v=1671720984 800w"
                        src="//hangertips.com/cdn/shop/collections/portada_0009_banners4.0.jpg?v=1671720984&amp;width=1500"
                        sizes="
                        (min-width: 1200px) 366px,
                        (min-width: 750px) calc((100vw - 10rem) / 2),
                        calc(100vw - 3rem)" alt="" height="600" width="800" loading="lazy"
                        class="motion-reduce img-fluid hover-zoom">

                    <h4 class="text-secondary mt-3">Hombres <i class="bi bi-arrow-right"></i></h4>
                </div>
                <div class="col d-flex flex-column">
                    <img
                        srcset="//hangertips.com/cdn/shop/collections/portada_0010_Mockup_-_Polo_Melange_-_Dama.jpg?v=1671720691&amp;width=165 165w,//hangertips.com/cdn/shop/collections/portada_0010_Mockup_-_Polo_Melange_-_Dama.jpg?v=1671720691&amp;width=330 330w,//hangertips.com/cdn/shop/collections/portada_0010_Mockup_-_Polo_Melange_-_Dama.jpg?v=1671720691&amp;width=535 535w,//hangertips.com/cdn/shop/collections/portada_0010_Mockup_-_Polo_Melange_-_Dama.jpg?v=1671720691&amp;width=750 750w,//hangertips.com/cdn/shop/collections/portada_0010_Mockup_-_Polo_Melange_-_Dama.jpg?v=1671720691 800w"
                        src="//hangertips.com/cdn/shop/collections/portada_0010_Mockup_-_Polo_Melange_-_Dama.jpg?v=1671720691&amp;width=1500"
                        sizes="
                        (min-width: 1200px) 366px,
                        (min-width: 750px) calc((100vw - 10rem) / 2),
                        calc(100vw - 3rem)" alt="" height="600" width="800" loading="lazy"
                        class="motion-reduce img-fluid hover-zoom">

                    <h4 class="text-secondary mt-3">Mujeres <i class="bi bi-arrow-right"></i></h4>
                </div>
                <div class="col d-flex flex-column">
                    <img
                        srcset="//hangertips.com/cdn/shop/collections/portada_0013_ninospolos.jpg?v=1671721044&amp;width=165 165w,//hangertips.com/cdn/shop/collections/portada_0013_ninospolos.jpg?v=1671721044&amp;width=330 330w,//hangertips.com/cdn/shop/collections/portada_0013_ninospolos.jpg?v=1671721044&amp;width=535 535w,//hangertips.com/cdn/shop/collections/portada_0013_ninospolos.jpg?v=1671721044&amp;width=750 750w,//hangertips.com/cdn/shop/collections/portada_0013_ninospolos.jpg?v=1671721044 800w"
                        src="//hangertips.com/cdn/shop/collections/portada_0013_ninospolos.jpg?v=1671721044&amp;width=1500"
                        sizes="
                        (min-width: 1200px) 366px,
                        (min-width: 750px) calc((100vw - 10rem) / 2),
                        calc(100vw - 3rem)" alt="" height="600" width="800" loading="lazy"
                        class="motion-reduce img-fluid hover-zoom">

                    <h4 class="text-secondary mt-3">Niños <i class="bi bi-arrow-right"></i></h4>
                </div>

            </div>
        </div>

        <hr>

        <!-- Footer -->
        <div class="container-sm mb-4">
            <footer class="row">
                <div class="col d-flex flex-column align-items-start mt-4">
                    <h4 class="text-secondary mb-4 fs-5">Menú</h4>
                    <ul class="list-group">
                        <li class="list-group-item border-0 px-0 link text-secondary">Acerca de</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Tiendas</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Envía tus tips</li>
                    </ul>
                </div>
                <div class="col d-flex flex-column align-items-start mt-4">
                    <h4 class="text-secondary mb-4 fs-5 px-0">Términos</h4>
                    <ul class="list-group">
                        <li class="list-group-item border-0 px-0 link text-secondary">Términos de venta</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Devoluciones y cambios</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Libro de reclamaciones</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Contacto</li>
                    </ul>
                </div>
                <div class="col d-flex flex-column align-items-start mt-4">
                    <h4 class="text-secondary mb-4 fs-5 px-0">Redes</h4>
                    <ul class="list-group">
                        <li class="list-group-item border-0 px-0 link text-secondary">Instagram</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Tripadvisor</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Maps</li>
                        <li class="list-group-item border-0 px-0 link text-secondary">Tiktok</li>
                    </ul>
                </div>
            </footer>

            <div class="d-flex justify-content-between">
                <div class="d-flex flex-column w-50">
                    <h4 class="text-secondary fs-5 mb-4">Suscribe tus emails</h4>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" placeholder="Correo electrónico">
                        <span class="input-group-text" id="basic-addon1">
                            <i class="bi bi-envelope"></i>
                        </span>
                    </div>
                </div>

                <div class="d-flex justify-content-end align-items-end w-50">
                    <ul class="d-flex justify-content-end align-items-end list-unstyled" role="list">
                        <li class="list-social__item">
                            <a href="https://www.facebook.com" target="_blank" class="link"><svg aria-hidden="true"
                                                                                                 focusable="false" role="presentation" width="22" height="24">
                                <path fill="currentColor"
                                      d="M16.42.61c.27 0 .5.1.69.28.19.2.28.42.28.7v15.44c0 .27-.1.5-.28.69a.94.94 0 01-.7.28h-4.39v-6.7h2.25l.31-2.65h-2.56v-1.7c0-.4.1-.72.28-.93.18-.2.5-.32 1-.32h1.37V3.35c-.6-.06-1.27-.1-2.01-.1-1.01 0-1.83.3-2.45.9-.62.6-.93 1.44-.93 2.53v1.97H7.04v2.65h2.24V18H.98c-.28 0-.5-.1-.7-.28a.94.94 0 01-.28-.7V1.59c0-.27.1-.5.28-.69a.94.94 0 01.7-.28h15.44z">
                                </path>
                                </svg>
                                <span class="visually-hidden">Facebook</span>
                            </a>
                        </li>
                        <li class="list-social__item px-4">
                            <a href="https://www.instagram.com" target="_blank" class="link"><svg aria-hidden="true"
                                                                                                  focusable="false" role="presentation" width="22" height="24">
                                <path fill="currentColor"
                                      d="M8.77 1.58c2.34 0 2.62.01 3.54.05.86.04 1.32.18 1.63.3.41.17.7.35 1.01.66.3.3.5.6.65 1 .12.32.27.78.3 1.64.05.92.06 1.2.06 3.54s-.01 2.62-.05 3.54a4.79 4.79 0 01-.3 1.63c-.17.41-.35.7-.66 1.01-.3.3-.6.5-1.01.66-.31.12-.77.26-1.63.3-.92.04-1.2.05-3.54.05s-2.62 0-3.55-.05a4.79 4.79 0 01-1.62-.3c-.42-.16-.7-.35-1.01-.66-.31-.3-.5-.6-.66-1a4.87 4.87 0 01-.3-1.64c-.04-.92-.05-1.2-.05-3.54s0-2.62.05-3.54c.04-.86.18-1.32.3-1.63.16-.41.35-.7.66-1.01.3-.3.6-.5 1-.65.32-.12.78-.27 1.63-.3.93-.05 1.2-.06 3.55-.06zm0-1.58C6.39 0 6.09.01 5.15.05c-.93.04-1.57.2-2.13.4-.57.23-1.06.54-1.55 1.02C1 1.96.7 2.45.46 3.02c-.22.56-.37 1.2-.4 2.13C0 6.1 0 6.4 0 8.77s.01 2.68.05 3.61c.04.94.2 1.57.4 2.13.23.58.54 1.07 1.02 1.56.49.48.98.78 1.55 1.01.56.22 1.2.37 2.13.4.94.05 1.24.06 3.62.06 2.39 0 2.68-.01 3.62-.05.93-.04 1.57-.2 2.13-.41a4.27 4.27 0 001.55-1.01c.49-.49.79-.98 1.01-1.56.22-.55.37-1.19.41-2.13.04-.93.05-1.23.05-3.61 0-2.39 0-2.68-.05-3.62a6.47 6.47 0 00-.4-2.13 4.27 4.27 0 00-1.02-1.55A4.35 4.35 0 0014.52.46a6.43 6.43 0 00-2.13-.41A69 69 0 008.77 0z">
                                </path>
                                <path fill="currentColor"
                                      d="M8.8 4a4.5 4.5 0 100 9 4.5 4.5 0 000-9zm0 7.43a2.92 2.92 0 110-5.85 2.92 2.92 0 010 5.85zM13.43 5a1.05 1.05 0 100-2.1 1.05 1.05 0 000 2.1z">
                                </path>
                                </svg>
                                <span class="visually-hidden">Instagram</span>
                            </a>
                        </li>
                        <li class="list-social__item">
                            <a href="https://www.tiktok.com" target="_blank" class="link"><svg aria-hidden="true"
                                                                                               focusable="false" role="presentation" width="22" height="24" fill="none"
                                                                                               xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M8.02 0H11s-.17 3.82 4.13 4.1v2.95s-2.3.14-4.13-1.26l.03 6.1a5.52 5.52 0 11-5.51-5.52h.77V9.4a2.5 2.5 0 101.76 2.4L8.02 0z"
                                    fill="currentColor">
                                </path>
                                </svg>
                                <span class="visually-hidden">TikTok</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <hr>
        <!-- Texto de Derechos -->

        <div class="container-sm d-flex justify-content-center">
            <small class="text-secondary text-center derechos">
                @ 2024, hangertips Tecnología de Shopify
            </small>
        </div>


        <!-- Script de Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script type="text/javascript">
                var status = document.getElementById("status").value;
                if(status == "success") {
                    Swal.fire({
                        title: "Welcome",
                        text: "That thing is still around?",
                        icon: "success"
                    });
                }
        </script>
    </body>
</html>
