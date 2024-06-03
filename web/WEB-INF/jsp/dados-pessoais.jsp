<%-- Document : dados-pessoais Created on : 14/05/2024, 16:30:45 Author : Senai --%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <link href="./style/dados-pessoais.css" rel="stylesheet" type="text/css" />
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <script type="text/javascript"
                    src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.0/mdb.umd.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                <!-- Font Awesome -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
                    rel="stylesheet" />
                <!-- Google Fonts -->
                <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
                    rel="stylesheet" />
                <!-- MDB -->
                <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.0/mdb.min.css" rel="stylesheet" />
                <title>Dados Pessoais</title>
            </head>

            <body>
                <jsp:include page="header-checkout.jsp"></jsp:include>
                <main>
                    <section class="vh-10">
                        <div class="container py-5 h-100">
                            <div class="row d-flex justify-content-center align-items-center h-100">
                                <div class="col-12">
                                    <div class="card card-stepper" style="background-color: #ECF0F1; border: none; box-shadow: none">
                                        <div class="card-body p-5">
                                            <ul id="progressbar-2"
                                                class="d-flex justify-content-between mx-0 mt-0 mb-5 px-0 pt-0 pb-2">
                                                <li class="step0 active text-center" id="step1">
                                                    <span class="fas fa-check-circle"></span>
                                                    <p class="step-text">Carrinho</p>
                                                </li>
                                                <li class="step0 text-center" id="step2">
                                                    <span class="fas fa-truck"></span>
                                                    <p class="step-text">Entrega</p>
                                                </li>
                                                <li class="step0 text-center" id="step3">
                                                    <span class="fas fa-credit-card"></span>
                                                    <p class="step-text">Pagamento</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <div class="main-separator">
                        <div class="inputs-container">
                            <div class="dados">
                                <h2>Dados de Contato</h2>
                                <input type="text" placeholder="E-mail">
                            </div>
                            <div class="entrega">
                                <h2>Entrega</h2>
                                <input type="text" placeholder="CEP">
                            </div>
                            <div class="btn-continuar">
                                <button>CONTINUAR</button>
                            </div>
                        </div>
                        <div class="container-carrinho">
                            <c:forEach items="${produtosPedido}" var="produtoPedido">
                                <div class="info-produto">
                                    <div class="image-box">
                                        <img src="data:image/jpeg;base64,${produtoPedido.imagemBase64}"
                                            alt="ImagemProduto">
                                    </div>
                                    <h5>${produtoPedido.nome}</h5>
                                    <span>x ${produtoPedido.quantidade}</span>
                                    <span>R$ ${produtoPedido.subtotal}</span>
                                </div>
                            </c:forEach>
                            <hr>
                            <div class="info-preco">
                                <div class="price-separator">
                                    <span>Custo de frete:</span>
                                    <span>R$ xx,xx</span>
                                </div>
                                <div class="price-separator">
                                    <span id="preco-total">Total:</span>
                                    <span>R$ ${total}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="footer.jsp"></jsp:include>
            </body>

            </html>