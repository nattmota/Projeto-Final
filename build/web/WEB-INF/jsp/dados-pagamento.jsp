<%-- 
    Document   : dados-pagamento
    Created on : 30/05/2024, 17:06:51
    Author     : natan
--%>

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
            <div class="progresso-checkout-container">
                <div class="progresso-passo-container">
                    <div class="passo-check">
                        <i class="fa-solid fa-check"></i>
                    </div>
                    <span class="passo-titulo">Carrinho</span>
                </div>
                <div class="progresso-linha"></div>
                <div class="progresso-passo-container">
                    <div class="passo-check">
                        <i class="fa-solid fa-truck"></i>
                    </div>
                    <span class="passo-titulo">Entrega</span>
                </div>
                <div class="progresso-linha"></div>
                <div class="progresso-passo-container">
                    <div class="passo-check-2">
                        <i class="fa-regular fa-credit-card"></i>
                    </div>
                    <b><span class="passo-titulo" id="cor">Pagamento</span></b>
                </div>
            </div>
            <div class="main-separator">
                <div class="separator-two">
                    <div class="container-info-pedido">
                        <div class="email-sec">
                            <i class="fa-solid fa-envelope"></i>
                            <span>Email do Usuário</span>
                        </div>
                        <hr>
                        <div class="user-sec">
                            <i class="fa-solid fa-location-dot"></i>
                            <div class="user-sec-info">
                                <span>Endereço</span>
                                <span>CEP</span>
                                <span>Telefone</span>   
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
                    <div class="container-pagamento">
                        <div class="header-container">
                            <i class="fa-solid fa-arrow-left"></i>
                            <h4>Cartão de Crédito / Débito</h4>
                        </div>
                        <div class="body-container">
                            <input type="text" placeholder="Número do cartão">
                            <div class="input-separator">
                                <input type="text" placeholder="Nome impresso no cartão" id="input-maior">
                                <input type="text" placeholder="Vencimento(MM/AA)">
                                <input type="text" placeholder="CVV">
                            </div>
                            <input type="text" placeholder="CPF ou CNPJ do portador do cartão">
                            <input type="text" placeholder="Telefone">
                        </div>
                    </div>
                    <div class="btn-continuar">
                        <button>FAZER PEDIDO</button>
                    </div>
                </div>
                <div class="container-carrinho">
                    <c:forEach items="${produtosPedido}" var="produtoPedido">
                    <div class="info-produto">
                        <div class="image-box">
                            <img src="data:image/jpeg;base64,${produtoPedido.imagemBase64}" alt="ImagemProduto">
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
