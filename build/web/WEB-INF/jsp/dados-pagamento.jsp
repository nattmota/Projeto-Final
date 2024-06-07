<%-- 
    Document   : dados-pagamento
    Created on : 30/05/2024, 17:06:51
    Author     : natan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
        <link href="./style/dados-pagamento.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados pagamento</title>
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
                                        <li class="step0 active text-center" id="step2">
                                            <span class="fas fa-check-circle"></span>
                                            <p class="step-text">Entrega</p>
                                        </li>
                                        <li class="step0 active text-center" id="step3">
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
                <div class="separator-two">
                    <div class="container-info-pedido">
                        <div class="email-sec">
                            <i class="fa-solid fa-envelope"></i>
                            <span>${usuario[0].email}</span>
                        </div>
                        <hr>
                        <div class="user-sec">
                            <i class="fa-solid fa-location-dot"></i>
                            <div class="user-sec-info">
                                <span>Endereço: ${endereco[0].rua} ${endereco[0].numero} ${endereco[0].complemento}</span>
                                <span>CEP: ${endereco[0].cep}</span>
                                <span>Telefone: ${usuario[0].telefone}</span>   
                            </div>            
                            <div class="alterar">
                                <a href="./dados-endereco">Alterar</a>
                            </div>
                        </div>
                        <hr>
                        <div class="entrega-sec">
                            <i class="fa-solid fa-truck"></i>
                            <div>
                                <span><b>Chega entre sexta-feira 31/05 e sexta-feira 21/06</b></span>
                                <div>
                                    <span>R$ xx,xx</span>
                                    <span>•</span>
                                    <span>Impresso Módico</span>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <h2><b>Forma Pagamento</b></h2>
                    <form action="enviarDadosPagamento" method="post">
                        <div class="container-pagamento">
                            <div class="header-container">
                                <i class="fa-solid fa-arrow-left"></i>
                            <select name="tipoPagamento" id="tipoPagamento">
                                <c:forEach items="${tipoPagamento}" var="tipoPagamento">
                                    <option value="${tipoPagamento.idPagamento}"> ${tipoPagamento.metodo}</option>
                                </c:forEach>
                            </select>
                            </div>
                            <div class="body-container">
                                <input type="text" name="numeroCartao" id="numeroCartao" placeholder="Número do cartão">
                                <div class="input-separator">
                                    <input type="text" name="nomeCartao" placeholder="Nome impresso no cartão" id="input-maior">
                                    <input type="text" name="vencimentoCartao" id="vencimentoCartao" placeholder="Vencimento(MM/AA)">
                                    <input type="text" name="cvvCartao" id="cvvCartao" placeholder="CVV">
                                </div>
                                <input type="text" name="cpfCnpjPortador" id="cpfCnpjPortador" placeholder="CPF ou CNPJ do portador do cartão">
                                <input type="text" name="telefone" id="telefone" placeholder="Telefone">
                                <input type="hidden" name="idPedido" id="idPedido" value="${idPedido}">
                                <p class="mensagem-erro">${errorMessage}</p>
                            </div>
                        </div>
                        <div class="btn-continuar">
                            <button type="submit">FAZER PEDIDO</button>
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
        <script src="js/validacao-pagamento.js" type="text/javascript"></script>
    </body>
</html>
