<%@page import="java.util.List"%>
<%@page import="com.alexanderdoma.peruinolvidable.model.mysql.ProductDAO"%>
<%@page import="com.alexanderdoma.peruinolvidable.model.entity.Product"%>
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
        <input type="hidden" id="status" value="<%=session.getAttribute("status")%>">
        <%@include file="components/header.jsp"%>

        <!-- Banner -->
        <div>
            <img
                src="//hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=1500"
                class="image-banner"
                srcset="//hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=375 375w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=550 550w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=750 750w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=1100 1100w, //hangertips.com/cdn/shop/files/banner-polomujer_1940bac1-9525-437c-9cf7-77b0e5034eba.jpg?v=1670454876&amp;width=1500 1500w"
                width="1920" height="800.0" loading="lazy" sizes="100vw">
        </div>
        
        
        <div class="container-sm">
            <div class="row row-cols-4 gap-1">
                <%
                    ProductDAO objProductDAO = new ProductDAO();
                    List<Product> objProductsList = objProductDAO.getAll();
                    for (Product objProduct : objProductsList) {%>
                <div class="col my-3">
                    <div class="card" style="border: none">
                        <img src="//hangertips.com/cdn/shop/products/cuymarron_1.jpg?v=1670366071&amp;width=450" alt="Medias Cuy"
                             class="motion-reduce hover-zoom" loading="lazy">
                        <div class="card-body p-0">
                            <p class="card-title" style="font-size: 15px"><%= objProduct.getName()%></p>
                            <p class="card-text">S/. <%= objProduct.getPrice()%> PEN</p>
                        </div>
                    </div>
                </div>
                <%}%>
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
        <%@include file="components/footer.jsp"%>

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
