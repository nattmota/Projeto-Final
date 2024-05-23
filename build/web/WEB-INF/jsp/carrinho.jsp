<%-- 
    Document   : carrinho
    Created on : 13/05/2024, 14:04:38
    Author     : Senai
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./style/carrinho.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
            <main>
                <div class="text">
                    <h1>CARRINHO DE COMPRAS</h1>
                </div>          
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
                                <img src="data:image/jpeg;base64,${carrinho.imagemBase64}" alt="${carrinho.nome}">
                            </div>${carrinho.nome}
                        </td>
                        <td>
                            <div class="box-price">
                                <button><p>+</p></button>
                                <p>${carrinho.quantidade}</p>
                                <button><p>-</p></button>
                            </div>
                        </td>
                        <td>R$ ${carrinho.valor}</td>
                        <td>R$ ${carrinho.subtotal}</td>
                        <form action="deletarItemCarrinho" method="post">
                            <input type="hidden" name="idCarrinho" id="idCarrinho" value="${carrinho.idCarrinho}">
                            <td><button type="submit" id="deletarItem" name="deletarItem"><i class="bi bi-trash"></i></button></td>
                        </form>
                </c:forEach>
                    </tr>              
            </table>
            <hr class="line">
            <div class="down-cart">
                <div class="calculo-cep">
                    <div class="text-cep">
                        <i class="bi bi-truck"></i>
                        <h3>Meios de envio</h3>
                    </div>
                    <div class="container-cep">
                        <input type="text" placeholder="Seu CEP">
                        <button>CALCULAR</button>
                    </div>
                </div>
                <div class="container-compra">                   
                    <div class="flex">
                        <h4>Frete:</h4>
                        <p class="p-cep">Calcule para visualizar</p>
                    </div>
                    <hr class="line">
                    <div class="flex">
                        <h3>Total:</h3>
                        <p>R$ ${total}</p>
                    </div>
                    <div class="btn-compra">
                        <button>INICIAR COMPRA</button>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
