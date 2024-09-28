<div id="header" class="sticky-top bg-white pt-3">
    <div>
        <header class="d-grid container-sm">
            <div class="row">
                <div class="col d-flex justify-content-start align-items-center">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
                <div class="col-6 d-flex justify-content-center">
                    <a href="<%= request.getContextPath()%>">
                        <img alt="hangertips"
                             srcset="//hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=50 50w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=100 100w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=150 150w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=200 200w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=250 250w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=300 300w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=400 400w, //hangertips.com/cdn/shop/files/logohangertips512.png?v=1670427257&amp;width=500 500w"
                             width="150" height="52.734375">
                    </a>
                </div>
                <div class="col d-flex justify-content-end align-items-center">
                    <a href="#" class="text-secondary">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </a>
                    <% if(session.getAttribute("user_id") != null){ %>
                        <a href="profile" class="text-secondary mx-4">
                            <i class="fa-solid fa-user"></i>
                        </a>
                    <%}else {%>
                        <a href="login" class="text-secondary mx-4">
                            <i class="fa-solid fa-user"></i>
                        </a>
                    <%}%>
                </div>
            </div>
            <!-- Barra de navegaci�n - Bottom -->
            <div class="row mt-4 mb-4">
                <div class="col"></div>
                <!-- Menu - links -->
                <div class="col-6">
                    <ul class="list-group list-group-flush list-group-horizontal list-unstyled">
                        <li class="list-group-item link"></li>
                        <li class="list-group-item link text-secondary link-underline-opacity-0">
                            <a class="text-secondary link-underline link-underline-opacity-0 current" href="<%= request.getContextPath()%>">Inicio</a>
                        </li>
                        <li class="list-group-item link text-secondary link-underline-opacity-0">
                            <a class="text-secondary link-underline link-underline-opacity-0 current"
                               href="category/men">Hombre</a>
                        </li>
                        <li class="list-group-item link text-secondary link-underline-opacity-0">
                            <a class="text-secondary link-underline link-underline-opacity-0 current"
                               href="category/women">Mujer</a>
                        </li>
                        <li class="list-group-item link text-secondary link-underline-opacity-0">
                            <a class="text-secondary link-underline link-underline-opacity-0 current"
                               href="category/children">Ni�os</a>
                        </li>
                        <li class="list-group-item link text-secondary link-underline-opacity-0">
                            <a class="text-secondary link-underline link-underline-opacity-0 current"
                               href="category/accessories">Accesorios</a>
                        </li>
                        <li class="list-group-item link text-secondary link-underline-opacity-0">
                            <a class="text-secondary link-underline link-underline-opacity-0 current"
                               href="#">Tiendas</a>
                        </li>
                        <li class="list-group-item link text-secondary link-underline-opacity-0">
                            <a class="text-secondary link-underline link-underline-opacity-0 current" href="#">M�s</a>
                        </li>
                        <li class="list-group-item link"></li>
                    </ul>
                </div>
                <div class="col"></div>
            </div>
        </header>
    </div>
</div>