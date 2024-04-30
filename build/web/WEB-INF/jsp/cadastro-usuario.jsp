<%-- 
    Document   : cadastro-usuario
    Created on : 30/04/2024, 14:00:07
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css"
            rel="stylesheet"
            />
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
        <link href="./style/footer.css" rel="stylesheet" type="text/css"/>
        <link href="./style/header.css" rel="stylesheet" type="text/css"/>
        <link href="./style/login.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuário</title>
    </head>
    <body>
        <div class="upper-header">
            <div class="icons-upper-header">
                <a href="#insta"><i class="fa-brands fa-instagram"></i></a>
                <a href="#face"><i class="fa-brands fa-facebook"></i></a>
            </div>
            <div class="upper-header-text">
                <p>Edificando vidas através da literatura cristã</p>
            </div>
        </div>
        <header>
            <div class="header-cima">
                <div class="logo">
                    <a href="./home"><img src="./assets/Logo Site Komunhão.png" alt="logo-livraria"></a>
                </div>
                <div class="input-box">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="O que você está buscando?" >
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
            <hr/>
            <nav class="header-baixo">
                <ul>
                    <li><a href="#">Início</a></li>
                    <li><a href="./produtos-categorias">Livros <i class="fa-solid fa-chevron-down"></i></a></li>
                    <li><a href="./papelaria">Papelaria <i class="fa-solid fa-chevron-down"></i></a></li>
                    <li><a href="./biblias">Bíblias <i class="fa-solid fa-chevron-down"></i></a></li>
                    <li><a href="./brinquedos">Brinquedos Educativos <i class="fa-solid fa-chevron-down"></i></a></li>
                    <li><a href="#">Quem somos</a></li>
                    <li><a href="#footer">Contato</a></li>                
                </ul>
            </nav>
            <br/>
        </header>
        <main>
            <section class="vh-100 bg-image"
                     <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                    <div class="container h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                                <div class="card" style="border-radius: 15px;">
                                    <div class="card-body p-5">
                                        <h2 class="text-uppercase text-center mb-5">Criar conta</h2>
                                        <form action="cadastrar" method="post">

                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="text" id="nome"  name="nome" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example1cg">Nome</label>
                                            </div>

                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="email" id="email"  name="email" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example3cg">Email</label>
                                            </div>

                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="password" id="senha" name="senha" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example4cg">Senha</label>
                                            </div>

                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="password" id="confirmarSenha" name="confirmarSenha" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example4cdg">Confirmar Senha</label>
                                            </div>

                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="tel" id="telefone" name="telefone" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example4cdg">Telefone</label>
                                            </div>
                                            <div data-mdb-input-init class="form-outline mb-4">
                                                <input type="text" id="cpf" name="cpf" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example4cdg">CPF</label>
                                            </div>
                                            <div class="form-check d-flex justify-content-center mb-5">
                                                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                                                <label class="form-check-label" for="form2Example3g">
                                                    Eu aceito os  <a href="#!" class="text-body"><u>Termos de serviÃ§o</u></a>
                                                </label>
                                            </div>

                                            <div class="d-flex justify-content-center">
                                                <button type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Cadastrar</button>

                                            </div>

                                            <p class="text-center text-muted mt-5 mb-0">Já possui uma conta? <a href="./login"
                                                                                                         class="fw-bold text-body"><u>Iniciar sessão</u></a></p>

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
                <br/>
                <div class="div-contato">
                    <a href=""><i class="fa-solid fa-phone"></i>(43) 3028-3484</a>
                </div>
                <br/>
                <div class="div-contato">
                    <i class="fa-solid fa-envelope"></i>
                    <span>contato@komunhao.com.br</span>
                </div>
                <br/>
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
                <span>Copyright KOMUNHÃO LIVRARIA CRISTÃ - 20860874000126 - 2024. Todos os direitos reservados.</span>
            </div>
        </footer>
    </body>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js"></script>
</html>
