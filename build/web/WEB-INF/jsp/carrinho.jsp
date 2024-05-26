<%-- Document : carrinho Created on : 13/05/2024, 14:04:38 Author : Senai --%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <link href="./style/carrinho.css" rel="stylesheet" type="text/css" />
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Carrinho</title>
            </head>

            <body>
                <jsp:include page="header.jsp"></jsp:include>
                <main>
                    <div class="text">
                        <h1>CARRINHO DE COMPRAS</h1>
                    </div>
                    <c:choose>                        
                        <c:when test="${not empty carrinhos}">
                            <table class="cart-table">
                                <tr>
                                    <th class="th-produtos">Produtos</th>
                                    <th>Quantidade</th>
                                    <th>Preço</th>
                                    <th>Subtotal</th>                                  
                                </tr>
                                <c:forEach items="${carrinhos}" var="carrinho">
                                    <tr>
                                        <td class="td-produtos">
                                            <div class="container-img">
                                                <img src="data:image/jpeg;base64,${carrinho.imagemBase64}"
                                                    alt="${carrinho.nome}">
                                            </div>${carrinho.nome}
                                        </td>
                                        <td>
                                            <div class="box-price">
                                                <form action="atualizarQuantidadeMais" method="post"
                                                    style="display:inline;">
                                                    <input type="hidden" name="idCarrinho"
                                                        value="${carrinho.idCarrinho}">
                                                    <input type="hidden" name="quantidade"
                                                        value="${carrinho.quantidade + 1}">
                                                    <button type="submit">
                                                        <p>+</p>
                                                    </button>
                                                </form>
                                                <p>${carrinho.quantidade}</p>
                                                <form action="atualizarQuantidadeMenos" method="post"
                                                    style="display:inline;">
                                                    <input type="hidden" name="idCarrinho"
                                                        value="${carrinho.idCarrinho}">
                                                    <input type="hidden" name="quantidade"
                                                        value="${carrinho.quantidade - 1}">
                                                    <button type="submit">
                                                        <p>-</p>
                                                    </button>
                                                </form>
                                            </div>
                                        </td>
                                        <td>R$ ${carrinho.valor}</td>
                                        <td>R$ ${carrinho.subtotal}</td>
                                        <td>
                                            <form action="deletarItemCarrinho" method="post">
                                                <input type="hidden" name="idCarrinho" value="${carrinho.idCarrinho}">
                                                <button type="submit"><i class="bi bi-trash"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <hr class="line">
                            <div class="down-cart">
                                <div class="container-compra">
                                    <div class="flex">
                                        <h3>Total:</h3>
                                        <p>R$ ${total}</p>
                                    </div>
                                    <hr class="line">
                                    <div class="btn-compra">
                                        <form action="finalizarCompra" method="post">
                                            <button type="submit" style="margin-bottom: 10px;">FINALIZAR COMPRA</button>
                                        </form>
                                        <form action="esvaziarCarrinho" method="post">
                                            <input type="hidden" name="idUsuario" value="${idUsuario}">
                                            <button type="submit" id="btn-esvaizar-carrinho">ESVAZIAR CARRINHO</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <p>Seu carrinho está vazio.</p>
                        </c:otherwise>
                    </c:choose>
                </main>
                <jsp:include page="footer.jsp"></jsp:include>
            </body>

            </html>