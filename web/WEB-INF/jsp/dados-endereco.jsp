<%-- 
    Document   : dados-endereco
    Created on : 30/05/2024, 13:41:57
    Author     : natan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
        <link href="./style/dados-endereco.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados Endereco</title>
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
                    <div class="passo-check-2">
                        <i class="fa-solid fa-truck"></i>
                    </div>
                    <span class="passo-titulo">Entrega</span>
                </div>
                <div class="progresso-linha"></div>
                <div class="progresso-passo-container">
                    <div class="passo-check">
                        <i class="fa-regular fa-credit-card"></i>
                    </div>
                    <span class="passo-titulo">Pagamento</span>
                </div>
            </div>
            <div class="main-separator">
                <div class="inputs-container">
                    <div class="dados">
                        <h2>Dados de Contato</h2>
                        <input type="text" placeholder="E-mail">
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
                                    <span style="font-weight: lighter; font-family: Rubik sans-serif">Chega entre sexta-feira 31/05 e sexta-feira 21/06</span>
                                </div>
                                <div class="preco-frete">
                                    <span>R$ xx,xx</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dados-entrega">                       
                        <div class="dados-endereco">
                            <h2>Dados para entrega</h2>
                            <input type="text" placeholder="Cidade">
                            <input type="text" placeholder="Estado">
                            <input type="text" placeholder="CEP">
                            <input type="text" placeholder="Rua">
                            <div class="dados-separator">
                                <input type="text" placeholder="Número" style="margin-right: 60px;">
                                <input type="text" placeholder="Complemento (opcional)">
                            </div>
                        </div>
                    </div>
                    <div class="btn-continuar">
                        <button>CONTINUAR</button>
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
        </main>
    </body>
</html>
