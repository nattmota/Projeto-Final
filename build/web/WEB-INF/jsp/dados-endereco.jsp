<%-- Document : dados-endereco Created on : 30/05/2024, 13:41:57 Author : natan --%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page pageEncoding="UTF-8" %>
            <%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>                
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
                        <link href="./style/dados-endereco.css" rel="stylesheet" type="text/css" />
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
                        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.3.0/mdb.min.css"
                            rel="stylesheet" />
                        <title>Dados Endereco</title>
                    </head>

                    <body>
                        <jsp:include page="header-checkout.jsp"></jsp:include>
                        <main>
                            <section class="vh-10">
                                <div class="container h-100">
                                    <div class="row d-flex justify-content-center align-items-center h-100">
                                        <div class="col-12">
                                            <div class="card card-stepper"
                                                style="background-color: #ECF0F1; border: none; box-shadow: none">
                                                <div class="card-body p-5">
                                                    <ul id="progressbar-2"
                                                        class="d-flex justify-content-between mx-0 mt-0 mb-5 px-0 pt-0 pb-2">
                                                        <li class="step0 active text-center" id="step1">
                                                            <span class="fas fa-check-circle"></span>
                                                            <p class="step-text">Carrinho</p>
                                                        </li>
                                                        <li class="step0 active text-center" id="step2">
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
                                <div class="container-carrinho-mobile">
                                    <div class="text-resumo-pedido">
                                        <h1>Produtos do Pedido</h1>                                      
                                    </div>
                                    <c:forEach items="${produtosPedido}" var="produtoPedido">
                                        <div class="info-produto">
                                            <div class="image-box">
                                                <img src="data:image/jpeg;base64,${produtoPedido.imagemBase64}"
                                                    alt="ImagemProduto">
                                            </div>
                                            <div class="info-produto-2">
                                                <h5>${produtoPedido.nome}</h5>
                                                <span id="qtd">x ${produtoPedido.quantidade}</span>
                                                <span id="preco">R$ ${produtoPedido.subtotal}</span>
                                            </div>
                                        </div>
                                        <hr>
                                    </c:forEach>
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
                                <div class="inputs-container">
                                    <div class="dados">
                                        <h2>Dados de Contato</h2>
                                        <input type="text" placeholder="E-mail" value="${usuario[0].email}">
                                    </div>
                                    <div class="entrega">
                                        <h2>Entrega</h2>
                                        <div class="container-metodo-entrega">
                                            <div class="circulo-icon">
                                                <div class="circulo"><i class="fa-solid fa-check"></i></div>
                                            </div>
                                            <div class="texto-metodo-entrega">
                                                <div>
                                                    <p><b>Impresso módico</b></p>
                                                    <span
                                                        style="font-weight: lighter; font-family: Rubik sans-serif">Chega
                                                        entre
                                                        sexta-feira 31/05 e sexta-feira 21/06</span>
                                                </div>
                                                <div class="preco-frete">
                                                    <span>R$ xx,xx</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <form action="inserirEndereco" method="post">
                                        <div class="dados-entrega">
                                            <div class="dados-endereco">
                                                <h2>Dados para entrega</h2>
                                                <input type="text" name="cidade" id="cidade" placeholder="Cidade">
                                                <input type="text" name="estado" id="estado" placeholder="Estado">
                                                <input type="text" name="cep" id="cep" placeholder="CEP">
                                                <input type="text" name="rua" id="rua" placeholder="Rua">
                                                <div class="dados-separator">
                                                    <input type="text" name="numero" id="numero" placeholder="Número">
                                                    <input type="text" name="complemento" id="complemento"
                                                        placeholder="Complemento (opcional)">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-continuar">
                                            <input type="hidden" name="idPedido" value="${idPedido}">
                                            <button type="submit">CONTINUAR PARA PAGAMENTO</button>
                                        </div>
                                    </form>
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
                                    <div class="info-preco">
                                        <hr>
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