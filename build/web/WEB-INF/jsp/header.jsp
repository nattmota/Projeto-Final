<%-- Document : header Created on : 04/05/2024, 11:20:03 Author : natan --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <link href="./style/header.css" rel="stylesheet" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>      
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
                    <form class="d-flex" role="search" action="buscar" method="get">     
                        <div class="search-container">               
                            <input type="search" name="pesquisa" placeholder="O que você está buscando?">
                            <button class="search-button"><i class="fa-solid fa-magnifying-glass"></i></button>
                        </div> 
                    </form>
                </div>
                <nav class="nav-1">
                    <ul>                   
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Minha Conta <i class="fa-regular fa-user"></i></button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="./login">Iniciar Sessão</a>
                                <a class="dropdown-item" href="./cadastro-usuario">Criar uma conta</a>
                                <a class="dropdown-item" href="./login">Logout</a>
                            </div>
                        </div>  
                        <div class="element-nav-1">
                            <li><i class="fa-solid fa-cart-shopping"></i><a href="./carrinho">Meu carrinho</a></li>
                        </div>                     
                        <!-- <div class="element-nav-1">
                            <li><i class="fa-solid fa-right-from-bracket"></i><a href="./login">Logout</a></li>
                        </div> -->
                    </ul>
                </nav>
            </div>
            <hr />
            <nav class="header-baixo d-none d-md-flex">
                <ul>
                    <li><a href="./index">Início</a></li>
                    <li><a href="./livros">Livros <i class="fa-solid fa-chevron-down"></i></a></li>
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
                        <form class="d-flex" role="search" action="buscar" method="get">
                            <button><i class="fa-solid fa-magnifying-glass"></i></button>
                            <input type="search" name="pesquisa" placeholder="O que você está buscando?">
                        </form>
                    </div>
                </div>
            </div>
        </header>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>