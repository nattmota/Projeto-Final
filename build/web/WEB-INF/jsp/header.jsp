<%-- 
    Document   : header
    Created on : 04/05/2024, 11:20:03
    Author     : natan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./style/header.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Header</title>
    </head>
    <body>
        <div class="upper-header">
            <div class="icons-upper-header">
                <a href="https://www.instagram.com/komunhaolivraria/"><i class="fa-brands fa-instagram"></i></a>
                <a href="https://www.facebook.com/komunhaolivraria"><i class="fa-brands fa-facebook"></i></a>
            </div>
            <div class="upper-header-text">
                <p>Edificando vidas através da literatura cristã</p>
            </div>
        </div>
        <header>
            <div class="header-cima d-none d-md-flex">
                <div class="logo">
                    <a href="./index"><img src="./assets/Logo Site Komunhão.png" alt="logo-livraria"></a>
                </div>
                <div class="input-box">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="O que você está buscando?">
                </div>
                <nav class="nav-1">
                    <ul>
                        <div class="element-nav-1">
                            <li><i class="fa-regular fa-comments"></i><a href="./login">Login</a></li>
                        </div>
                        <div class="element-nav-1">
                            <li><i class="fa-regular fa-user"></i><a href="#">Minha conta</a></li>
                        </div>
                        <div class="element-nav-1">
                            <li><i class="fa-solid fa-cart-shopping"></i><a href="./carrinho">Meu carrinho</a></li>
                        </div>
                        <div class="element-nav-1">
                            <li><i class="fa-solid fa-right-from-bracket"></i><a href="./login">Logout</a></li>
                        </div>
                    </ul>
                </nav>
            </div>
            <hr />
            <nav class="header-baixo d-none d-md-flex">
                <ul>
                    <li><a href="#">Início</a></li>
                    <li><a href="./produtos-categorias">Livros <i class="fa-solid fa-chevron-down"></i></a></li>
                    <li><a href="./papelaria">Papelaria <i class="fa-solid fa-chevron-down"></i></a></li>
                    <li><a href="./biblias">Bíblias <i class="fa-solid fa-chevron-down"></i></a></li>
                    <li><a href="./brinquedos">Brinquedos Educativos <i class="fa-solid fa-chevron-down"></i></a>
                    </li>
                    <li><a href="#">Quem somos</a></li>
                    <li><a href="#footer">Contato</a></li>
                </ul>
            </nav>
            <br />
            <div class="bar-mobile d-block d-md-none">
                <div class="up-row">
                    <button class="btn btn-primary btn-icon" type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling"><i
                            class="fa-solid fa-bars"></i></button>
                    <div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false"
                        tabindex="-1" id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">
                        <div class="offcanvas-header">
                            <ul class="medias-mobile">
                                <li><a href="https://www.instagram.com/komunhaolivraria/"><i
                                        class="fa-brands fa-instagram"></i></a></li>
                                <li><a href="https://www.facebook.com/komunhaolivraria"><i
                                        class="fa-brands fa-facebook"></i></a></li>
                            </ul>
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>                               
                        </div>
                        <div class="offcanvas-body">
                            <ul>
                                <li><a href="./index">Início</a></li>
                                <hr>
                                <li><a href="./produtos-categorias">Livros</a></li>
                                <li><a href="./papelaria">Papelaria </a></li>
                                <li><a href="./biblias">Bíblias </a></li>
                                <li><a href="./brinquedos">Brinquedos Educativos</a></li>                  
                                <li><a href="#">Quem somos</a></li>
                                <li><a href="#footer">Contato</a></li>
                            </ul>
                                <div class="nav-conta">
                                    <i class="fa-solid fa-user"></i>
                                    <ul>
                                        <li><a href="./cadastro-usuario">Criar uma conta</a></li>
                                        <li><a href="./login">Iniciar Sessão</a></li>
                                    </ul>
                                </div>                               
                        </div>
                    </div>
                    <img src="./assets/Logo Site Komunhão.png" alt="img">
                    <i class="fa-solid fa-cart-shopping"></i>
                </div>
                <div class="down-row">
                    <div class="input-box">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <input type="text" placeholder="O que você está buscando?">
                    </div>
                </div>
            </div>
        </header>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
</html>
