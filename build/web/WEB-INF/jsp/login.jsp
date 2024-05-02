<%-- Document : login Created on : 30/04/2024, 13:59:54 Author : Senai --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <!-- Font Awesome -->
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
            <!-- Google Fonts -->
            <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
            <!-- MDB -->
            <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css" rel="stylesheet" />
            <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
            <link href="./style/footer.css" rel="stylesheet" type="text/css" />
            <link href="./style/header.css" rel="stylesheet" type="text/css" />
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                crossorigin="anonymous">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login Usuário</title>
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
            <main>
                <section class="vh-100 bg-image" <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                    <div class="container h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                                <div class="card" style="border-radius: 15px;">
                                    <div class="card-body p-5">
                                        <h2 class="text-uppercase text-center mb-5">Iniciar Sessão</h2>
                                        <form action="logar" method="post" id="form-login">

                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="email" id="email" name="email"
                                                    class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example3cg">Seu Email</label>
                                            </div>

                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="password" id="senha" name="senha"
                                                    class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example4cg">Senha</label>
                                            </div>

                                            <div class="d-flex justify-content-center">
                                                <button type="submit"
                                                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Iniciar
                                                    sessão</button>
                                            </div>
                                            <p class="text-center text-muted mt-5 mb-0">Não possui uma conta ainda? <a
                                                    href="./cadastro-usuario" class="fw-bold text-body"><u>Cadastre-se
                                                        aqui</u></a></p>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </section>
            </main>
            <section class="upper-footer" id="footer">
                <div class="column-dp">
                    <h4>Departamentos</h4>
                    <p><a href="#">Início</a></p>
                    <p><a href="#">Livros</a></p>
                    <p><a href="#">Presentes</a></p>
                    <p><a href="#">Bíblias</a></p>
                    <p><a href="#">Brinquedos educativos</a></p>
                    <p><a href="#">Quem somos</a></p>
                    <p><a href="#">Contato</a></p>
                </div>
                <div class="column-empresa">
                    <h4>Diretrizes da empresa</h4>
                    <p><a href="#">Missão, Visão, Valores</a></p>
                    <p><a href="#">Como Comprar</a></p>
                    <p><a href="#">Trocas e Devoluções</a></p>
                    <p><a href="#">Perguntas Frequentes</a></p>
                    <p><a href="#">Política de Privacidade</a></p>
                    <p><a href="#">Termos de Uso</a></p>
                    <p><a href="#">Política de Reembolso</a></p>
                </div>
                <div class="contato">
                    <h4>Entre em contato</h4>
                    <div class="div-contato">
                        <a href=""><i class="fa-brands fa-whatsapp"></i>5543999752103</a>
                    </div>
                    <br />
                    <div class="div-contato">
                        <a href=""><i class="fa-solid fa-phone"></i>(43) 3028-3484</a>
                    </div>
                    <br />
                    <div class="div-contato">
                        <i class="fa-solid fa-envelope"></i>
                        <span>contato@komunhao.com.br</span>
                    </div>
                    <br />
                    <div class="div-contato">
                        <i class="fa-solid fa-location-dot"></i>
                        <span>Rua Barão de Loreto, 15 Vila Fujita - Londrina - PR</span>
                    </div>
                </div>
                <div class="sociais">
                    <h4>Permaneça conectado</h4>
                    <button><a href="#"><i class="fa-brands fa-instagram"></i></a></button>
                    <button><a href="#"><i class="fa-brands fa-facebook"></i></a></button>
                </div>
            </section>
            <footer>
                <div class="text-footer">
                    <span>Copyright KOMUNHÃO LIVRARIA CRISTÃ - 20860874000126 - 2024. Todos os direitos
                        reservados.</span>
                </div>
            </footer>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
        </body>
        <!-- <script src="./js/login.js"></script> -->

        </html>