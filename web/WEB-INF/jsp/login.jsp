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
        <jsp:include page="header.jsp" ></jsp:include>
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
        <jsp:include page="footer.jsp" ></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>
    <!-- <script src="./js/login.js"></script> -->

</html>