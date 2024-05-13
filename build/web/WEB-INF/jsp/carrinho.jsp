<%-- 
    Document   : carrinho
    Created on : 13/05/2024, 14:04:38
    Author     : Senai
--%>

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
                <tr>
                    <td class="td-produtos"><div class="container-img">Img</div>Nome do Produto</td>
                    <td>
                        <div class="box-price">
                            <button><p>+</p></button>
                            <p>1</p>
                            <button><p>-</p></button>
                        </div>
                    </td>
                    <td>R$ xx,xx</td>
                    <td>R$ xx,xx</td>
                    <td><button><i class="bi bi-trash"></i></button></td>
                </tr>
                <tr>
                    <td class="td-produtos"><div class="container-img">Img</div>Nome do Produto</td>
                    <td>
                        <div class="box-price">
                            <button><p>+</p></button>
                            <p>1</p>
                            <button><p>-</p></button>
                        </div>
                    </td>
                    <td>R$ xx,xx</td>
                    <td>R$ xx,xx</td>
                    <td><button><i class="bi bi-trash"></i></button></td>
                </tr>
                <tr>
                    <td class="td-produtos"><div class="container-img">Img</div>Nome do Produto</td>
                    <td>
                        <div class="box-price">
                            <button><p>+</p></button>
                            <p>1</p>
                            <button><p>-</p></button>
                        </div>
                    </td>
                    <td>R$ xx,xx</td>
                    <td>R$ xx,xx</td>
                    <td><button><i class="bi bi-trash"></i></button></td>
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
                        <h4>Subtotal:</h4>
                        <p>R$ xx,xx</p>
                    </div>
                    <div class="flex">
                        <h4>Frete:</h4>
                        <p class="p-cep">Calcule para visualizar</p>
                    </div>
                    <hr class="line">
                    <div class="flex">
                        <h3>Total:</h3>
                        <p>R$ xx,xx</p>
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
