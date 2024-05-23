<%-- 
    Document   : produto-especifico
    Created on : 07/05/2024, 13:49:25
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="./style/produto-especfico.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
        <main>
            <div class="container-produto">
                <div class="right-box">
                    <div class="image-box">
                           <img src="data:image/jpeg;base64,${produto.imagemBase64}" class="card-img-top" alt="${produto.nome}">
                    </div>
                </div>
                <div class="detalhes-box">
                    <h1>${produto.nome}</h1> 
                    <p>Avaliação (Em estoque)</p>
                    <h2>R$ ${produto.valor}</h2>
                    <form action="adicionarCarrinho" method="post" id="form-add-carrinho">
                        <table cellspacing="0" class="inputs">
                            <tr>
                                <td><b>Quantidade</b></td>
                                <td align="right"><input type="number" name="quantidade" id="quantidade"></td>
                            </tr>                         
                        </table>
                        <input type="hidden" name="id-produto" id="id-produto" value="${produto.idProduto}">
                        
                        <h4>Especificações</h4>
                        <!-- <p>Para mais informações do produto, entre em contato com a loja. Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus repellat ipsum aperiam minima
                            facere provident saepe quidem, officia quae iste ad totam autem doloremque perferendis nihil harum dolorem soluta eaque.</p> -->
                            <p>${produto.descricao}</p>
                        <button type="submit">Adicionar ao Carrinho</button>
                    </form>
                </div>
            </div>
        </main>
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
